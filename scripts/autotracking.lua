local seen_items = {}
local function clear(slot_data)
    seen_items = {}
    mm8_slot = slot_data or {}
    mm8_connected = true
    local order=Tracker:FindObjectForCode("opt_stage_order");if order then order.AcquiredCount=mm8_slot.stage_order or 0 end
    local version=Tracker:FindObjectForCode("opt_world_v020");if version then version.Active=mm8_slot.stage_order~=nil end
    mm8_checked = {}
    for _, id in ipairs(Archipelago.CheckedLocations or {}) do mm8_checked[id] = true end
    for _,key in ipairs({"stage_unlocks","pickupsanity","rematch_checks"}) do
      local obj=Tracker:FindObjectForCode("opt_"..key);if obj then obj.Active=(mm8_slot[key]==true or mm8_slot[key]==1) end
    end
    local bs=Tracker:FindObjectForCode("opt_bolt_bundle_size");if bs then bs.AcquiredCount=mm8_slot.bolt_bundle_size or 5 end
    seed_locations = nil
    if Archipelago.MissingLocations ~= nil and Archipelago.CheckedLocations ~= nil then
        seed_locations = {}
        for _, id in ipairs(Archipelago.MissingLocations) do seed_locations[id] = true end
        for _, id in ipairs(Archipelago.CheckedLocations) do seed_locations[id] = true end
    end
    local v021=Tracker:FindObjectForCode("opt_world_v021")
    if v021 then
      if mm8_slot.stage_order==nil then v021.Active=false
      elseif seed_locations and (mm8_slot.pickupsanity==true or mm8_slot.pickupsanity==1) then v021.Active=seed_locations[5480342]==true end
    end
    for _, code in pairs(ITEMS) do
        local obj = Tracker:FindObjectForCode(code)
        if obj then if obj.Type=="toggle" then obj.Active=false else obj.AcquiredCount=0 end end
    end
    local checked = {}
    for _, id in ipairs(Archipelago.CheckedLocations or {}) do checked[id] = true end
    for id, code in pairs(LOCATIONS) do
        local obj = Tracker:FindObjectForCode(code)
        if obj then obj.AvailableChestCount = checked[id] and 0 or obj.ChestCount end
    end
mm8_refresh_stage_display()
end
local function item(index, id, name, player)
    if seen_items[index] then return end
    seen_items[index] = true
    local code = ITEMS[id]
    if not code then print("Unmapped AP item: " .. tostring(name) .. " / " .. tostring(id)); return end
    local obj = Tracker:FindObjectForCode(code)
    if obj then
        if obj.Type=="toggle" then obj.Active=true;return end
        local next_count = obj.AcquiredCount + 1
        if obj.MaxCount > 0 then next_count = math.min(next_count, obj.MaxCount) end
        obj.AcquiredCount = next_count
    end
end
local function location(id, name)
    mm8_checked[id]=true
    local refresh=Tracker:FindObjectForCode("logic_refresh");if refresh then refresh.Active=not refresh.Active end
    local code = LOCATIONS[id]
    if not code then print("Unmapped AP location: " .. tostring(name) .. " / " .. tostring(id)); return end
    if seed_locations then seed_locations[id] = true end
    local obj = Tracker:FindObjectForCode(code)
    if obj then obj.AvailableChestCount = 0 end
end
Archipelago:AddClearHandler("kirby_reset", clear)
Archipelago:AddItemHandler("kirby_item", item)
Archipelago:AddLocationHandler("kirby_location", location)
