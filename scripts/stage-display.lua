-- Derived portraits keep visual availability separate from received AP codes.
local pairs_by_view={
 ['stageview_5480080']='i5480080',
 ['stageview_5480081']='i5480081',
 ['stageview_5480082']='i5480082',
 ['stageview_5480083']='i5480083',
 ['stageview_5480084']='i5480084',
 ['stageview_5480085']='i5480085',
 ['stageview_5480086']='i5480086',
 ['stageview_5480087']='i5480087'
}
local refreshing=false
local function requires_codes()
 local value=mm8_slot and mm8_slot['stage_unlocks']
 if value~=nil then return value==true or value==1 end
 return Tracker:ProviderCountForCode('opt_stage_unlocks')>0
end
function mm8_refresh_stage_display(changed_code)
 if refreshing then return end
 refreshing=true
 local locked=requires_codes()
 -- Support manual stage toggles while access codes are required.
 if locked and pairs_by_view[changed_code] then
  local raw=Tracker:FindObjectForCode(pairs_by_view[changed_code])
  local view=Tracker:FindObjectForCode(changed_code)
  if raw and view then raw.Active=view.CurrentStage==1 end
 end
 for viewcode,rawcode in pairs(pairs_by_view) do
  local view=Tracker:FindObjectForCode(viewcode)
  local state=(not locked or Tracker:ProviderCountForCode(rawcode)>0) and 1 or 0
  if view and view.CurrentStage~=state then view.CurrentStage=state end
 end
 refreshing=false
end
if ScriptHost.AddWatchForCode then
 ScriptHost:AddWatchForCode('mm8 stage portraits','*',mm8_refresh_stage_display)
end
mm8_refresh_stage_display()
