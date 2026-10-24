-- Stage entry and check requirements are separate so early unlocks stay accurate.
-- Seed rules retain their version-specific requirements; playtested mode uses
-- confirmed physical routes. Advanced airborne Mega Ball routes are yellow.
-- Special check IDs retain the Archipelago location numbering.
local LOCATION = {
    SWORD_MAN_DEFEATED = 5480004,
    SEARCH_MAN_DEFEATED = 5480007,
    SWORD_MAN_MID_BOSS = 5480012,
    WILY_STAGE_4_FROST_MAN_REMATCH = 5480030,
    WILY_STAGE_4_SEARCH_MAN_REMATCH = 5480037,
    CLOWN_MAN_BOLT_5 = 5480109,
    CLOWN_MAN_BOLT_1 = 5480110,
    SWORD_MAN_BOLT_3 = 5480121,
    SEARCH_MAN_BOLT_4 = 5480137,
    FROST_MAN_LARGE_LIFE_ENERGY_1 = 5480300,
    SWORD_MAN_LARGE_LIFE_ENERGY_1 = 5480320,
    SWORD_MAN_LARGE_LIFE_ENERGY_3 = 5480322,
    WILY_STAGE_3_1_UP = 5480341,
    FROST_MAN_LARGE_LIFE_ENERGY_5 = 5480342,
}

mm8_slot = {}
mm8_checked = {}

local function has_code(code)
    return Tracker:ProviderCountForCode(code) > 0
end

local function has_item(item_name)
    return has_code(MM8_DATA.item_codes[item_name] or '')
end

-- Connected slot data takes precedence over the manual options.
local function is_option_enabled(key)
    local slot_value = mm8_slot[key]
    if slot_value ~= nil then
        return slot_value == true or slot_value == 1
    end
    return has_code('opt_' .. key)
end

local function get_count_setting(key, default)
    local slot_value = mm8_slot[key]
    if slot_value ~= nil then
        return tonumber(slot_value) or default
    end
    local tracker_option = Tracker:FindObjectForCode('opt_' .. key)
    return tracker_option and tracker_option.AcquiredCount or default
end

local function is_modern_world()
    if mm8_connected then
        return mm8_slot.stage_order ~= nil
    end
    return has_code('opt_world_v020')
end

-- The extra Frost Man pickup distinguishes the v0.2.1 location set.
function mm8_is_v021()
    if mm8_connected then
        if mm8_slot.stage_order == nil then
            return false
        end
        if seed_locations ~= nil and (mm8_slot.pickupsanity == true or mm8_slot.pickupsanity == 1) then
            return seed_locations[LOCATION.FROST_MAN_LARGE_LIFE_ENERGY_5] == true
        end
    end
    return has_code('opt_world_v021')
end

local function is_check_completed(id)
    local tracker_object = Tracker:FindObjectForCode(LOCATIONS[id] or '')
    return mm8_checked[id] == true
        or (tracker_object ~= nil and tracker_object.AvailableChestCount == 0)
end

local function is_duo_completed()
    return is_check_completed(MM8_DATA.duo)
end

local function has_all_items(item_names)
    for _, item_name in ipairs(item_names) do
        if not has_item(item_name) then
            return false
        end
    end
    return true
end

local function can_enter_stage(stage_name)
    local stage_order = is_modern_world() and get_count_setting('stage_order', 0) or 0
    if stage_name == 'Duo' then
        if stage_order == 2 then
            local completed_count = 0
            for _, boss_name in ipairs(MM8_DATA.masters) do
                if is_check_completed(MM8_DATA.bosses[boss_name]) then
                    completed_count = completed_count + 1
                end
            end
            return completed_count >= 4
        end
        for _, boss_name in ipairs(MM8_DATA.set1) do
            if not is_check_completed(MM8_DATA.bosses[boss_name]) then
                return false
            end
        end
        return true
    end

    if stage_name:match('^Wily Stage') then
        for _, boss_name in ipairs(MM8_DATA.masters) do
            if not is_check_completed(MM8_DATA.bosses[boss_name]) then
                return false
            end
        end
        -- The tested fortress entry works without Water Balloon. All other
        -- weapons, the eight Robot Masters and Duo still gate entry.
        if not is_duo_completed() then
            return false
        end
        for _, weapon_name in ipairs(MM8_DATA.weapons) do
            if weapon_name ~= 'Water Balloon' and not has_item(weapon_name) then
                return false
            end
        end
        return true
    end

    for _, boss_name in ipairs(MM8_DATA.set2) do
        if stage_name == boss_name then
            if stage_order == 0 and not is_duo_completed() then
                return false
            end
        end
    end
    if MM8_DATA.bosses[stage_name] and is_option_enabled('stage_unlocks')
        and not has_item(stage_name .. ' Access Codes') then
        return false
    end
    return true
end

-- 0.2.3 adds one pickup. A connected seed's location set is authoritative.
function mm8_is_v023()
    if mm8_connected and seed_locations ~= nil then
        return seed_locations[5480343] == true
    end
    return is_modern_world() and mm8_is_v021() and has_code('opt_world_v023')
end

function mm8_visible(id)
    id = tonumber(id)
    if seed_locations ~= nil then
        return seed_locations[id] == true
    end
    if id == 5480343 then
        return mm8_is_v023() and is_option_enabled('pickupsanity')
    end
    if id == LOCATION.FROST_MAN_LARGE_LIFE_ENERGY_5 then
        return mm8_is_v021() and is_option_enabled('pickupsanity')
    end
    if id >= LOCATION.FROST_MAN_LARGE_LIFE_ENERGY_1 and id <= LOCATION.WILY_STAGE_3_1_UP then
        return is_option_enabled('pickupsanity')
    end
    if id >= LOCATION.WILY_STAGE_4_FROST_MAN_REMATCH and id <= LOCATION.WILY_STAGE_4_SEARCH_MAN_REMATCH then
        return is_option_enabled('rematch_checks')
    end
    return true
end

local sword_trial_weapons = {'Tornado Hold', 'Thunder Claw', 'Ice Wave', 'Flash Bomb'}
local sword_physical_checks = {[LOCATION.SWORD_MAN_DEFEATED] = true, [LOCATION.SWORD_MAN_MID_BOSS] = true, [LOCATION.SWORD_MAN_BOLT_3] = true, [LOCATION.SWORD_MAN_LARGE_LIFE_ENERGY_1] = true, [LOCATION.SWORD_MAN_LARGE_LIFE_ENERGY_3] = true}
local sword_seed_checks = {[LOCATION.SWORD_MAN_DEFEATED] = true, [LOCATION.SWORD_MAN_MID_BOSS] = true, [LOCATION.SWORD_MAN_BOLT_3] = true, [LOCATION.SWORD_MAN_LARGE_LIFE_ENERGY_1] = true, [LOCATION.SWORD_MAN_LARGE_LIFE_ENERGY_3] = true}

-- Every clause must pass; any one weapon within a clause satisfies it.
-- Thus {{'Mega Ball', 'Tornado Hold'}} permits either item, while two
-- separate clauses require both. Keep that distinction when editing tables.
local function meets_requirements(requirements)
    for _, clause in ipairs(requirements or {}) do
        local clause_satisfied = false
        for _, item_name in ipairs(clause) do
            if has_item(item_name) then
                clause_satisfied = true
                break
            end
        end
        if not clause_satisfied then
            return false
        end
    end
    return true
end

function mm8_access(id)
    -- Reading this provider registers PopTracker's refresh dependency.
    local refresh_dependency = has_code('logic_refresh')
    id = tonumber(id)
    local stage_name = MM8_DATA.stage[id]
    if not stage_name or not can_enter_stage(stage_name) then
        return false
    end

    if stage_name == "Dr. Light's Lab" then
        local bolt_count = Tracker:ProviderCountForCode('i5480050') * get_count_setting('bolt_bundle_size', 5)
        for _, stock_check in ipairs(MM8_DATA.start_stock) do
            if id == stock_check then
                return bolt_count >= (is_modern_world() and 40 or 21)
            end
        end
        return is_duo_completed() and bolt_count >= 40
    end

    -- Physical trial doors also apply in playtested mode on legacy seeds.
    local sword_checks = is_option_enabled('strict_seed_logic') and sword_seed_checks or sword_physical_checks
    if (is_modern_world() or not is_option_enabled('strict_seed_logic'))
        and sword_checks[id] and not has_all_items(sword_trial_weapons) then
        return false
    end
    -- Search doors open to any weapon, including the Mega Buster (0.2.2).
    -- Individual hook-room checks retain their own movement requirements.

    -- Select the seed's rules first, then physical-route overrides if enabled.
    local requirements = MM8_DATA.requirements[id]
    if mm8_is_v021() and MM8_V021[id] ~= nil then
        requirements = MM8_V021[id]
    end
    if not is_option_enabled('strict_seed_logic') and MM8_PLAYTEST[id] ~= nil then
        requirements = MM8_PLAYTEST[id]
    end
    -- Confirmed corrections are authoritative regardless of the selected
    -- seed/playtest mode; older generated tables cannot overwrite them.
    if MM8_CONFIRMED[id] ~= nil then
        requirements = MM8_CONFIRMED[id]
    end
    local normally_accessible = meets_requirements(requirements)
    if normally_accessible then
        return normally_accessible
    end

    if MM8_CONFIRMED[id] ~= nil then
        local yellow_requirements = MM8_CONFIRMED_YELLOW[id]
        if yellow_requirements and meets_requirements(yellow_requirements) then
            return AccessibilityLevel.SequenceBreak
        end
        return false
    end
    if not is_option_enabled('strict_seed_logic') and MM8_PLAUSIBLE
        and MM8_PLAUSIBLE[id] and meets_requirements(MM8_PLAUSIBLE[id]) then
        return AccessibilityLevel.SequenceBreak
    end
    return false
end

-- PopTracker `$` rules treat numbers as item counts; `^$` rules interpret
-- them as accessibility levels. Convert booleans before using the latter.
local function as_accessibility_level(result)
    if result == true then
        return AccessibilityLevel.Normal
    end
    if result == false or result == nil then
        return AccessibilityLevel.None
    end
    return result
end

function mm8_access_level(id)
    return as_accessibility_level(mm8_access(id))
end

