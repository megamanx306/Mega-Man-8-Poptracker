# Mega Man 8 — Maps and Logic v0.7.9

Archipelago PopTracker pack for Mega Man 8. Supports Shinnuu APWorld 0.2.2, 0.2.1, 0.2.0, and legacy 0.1.0 seeds. Includes 126 server-backed checks plus an informational marker for the missing Frost capsule.

## Installation

Replace the previous ZIP in your PopTracker packs folder, reload the pack, and reconnect to Archipelago. Do not keep two installed versions with the same package UID. PopTracker 0.33.0 or newer is required.

## Layout and tracking

Four-column inventory on the left, maps on the right, direct full-stage views, and a separate broadcast layout. Optional checks are hidden when absent from the seed. AP tracking restores checked locations and handles reconnects and duplicate items. Automatic PS1 stage switching is not implemented.

## Confirmed routes

The 2026-10-12 playtest corrections apply with AP seed logic ON or OFF. The toggle controls remaining uncorrected routes; it cannot reinstate the old requirements for these confirmed checks. Some confirmed physical routes differ from the generator's conservative spheres. The pack does not modify the APWorld, server, or disc.

| Check | Green route | Yellow airborne Mega Ball alternative |
| --- | --- | --- |
| Grenade Large Life Energy 1 | No weapon requirement | — |
| All Astro checks | No weapon requirement | — |
| Frost Bolt 6 | Astro Crush AND (Mega Ball OR Tornado Hold) | — |
| Frost Large Life Energy 2 and server Energy 3 / field Energy 4 | Tornado Hold | Mega Ball |
| Clown Bolt 1 | Rush Bike | Mega Ball |
| Frost Bolt 3 | Tornado Hold | Mega Ball |
| Clown Bolts 4 and 5 | Tornado Hold | Mega Ball |
| Duo Bolts 1 and 2 | Mega Ball OR Tornado Hold | — |
| Search Bolt 1 | No weapon requirement | — |
| Search Life and Weapon Energy | Thunder Claw | Mega Ball |
| Search Bolt 2 (5480136) | Thunder Claw AND Tornado Hold | Mega Ball |
| Search Bolt 4 | Thunder Claw | — |
| Search boss | No weapon requirement; doors open with the Buster | — |

Stage order and stage access codes still apply. Removed the blanket Mega Ball/Thunder Claw entry gate for the second group of Robot Masters in both modes. Thus opening Aqua or Astro early does not impose those weapons on every check.

| Aqua IDs | Requirement |
| --- | --- |
| 5480005, 5480013, 5480125, 5480325, 5480326, 5480330 | None |
| 5480323, 5480327, 5480126, 5480328, 5480329, 5480127 | Astro Crush |
| 5480324, 5480124 | Tornado Hold |

All Wily stage checks share an entry gate: eight Robot Masters defeated, Duo cleared, and Ice Wave, Thunder Claw, Tornado Hold, Flash Bomb, Flame Sword, Astro Crush, and Homing Sniper received. Water Balloon is not required. This specifically reflects the reported seven-weapon entry without Water Balloon, not an arbitrary seven-of-eight rule. Per-check requirements still apply.

## Frost pickup identities

Moved Energy 2 to the screenshot-marked orange platform after Bolt 3; moved Search Bolt 1 to the green position in its screenshot. Server IDs and primary names remain unchanged.

| Field order reported by player | AP server check | ID |
| --- | --- | --- |
| Energy 1 | Large Life Energy 1 | 5480300 |
| Energy 2, after Bolt 3 | Large Life Energy 2 | 5480301 |
| Energy 3, ice beside Bolt 4 | Missing from 0.2.2 | No AP ID |
| Energy 4, before the tower | Large Life Energy 3 | 5480302 |
| Energy 5, above Bolt 6 | Large Life Energy 5 | 5480342 |
| Energy 6, second Jump/Slide area | Large Life Energy 4 | 5480303 |

The missing capsule has an informational marker with zero AP checks. It cannot be auto-tracked or counted toward seed completion. Its position uses the previous misplaced Energy 2 reference beside Bolt 4; exact container placement remains a room reference. Movement advice is Tornado Hold (green) or airborne Mega Ball jumps (yellow). Field aliases are in tooltips; server names are retained so autotracking remains compatible.

See `SHINNUU-PLAYTEST-NOTES-20261012.md` for the source discrepancy and the supplied collection log. This report is a draft and has not been sent.

## Seed settings and shop

The existing Seed v0.2.1 toggle also covers 0.2.2 because the check sets match. Connected slots without stage_order retain legacy behavior. With pickupsanity, check 5480342 distinguishes the newer set; otherwise select it manually. Stage order: 0 vanilla, 1 open, 2 open-any-four.

Modern initial Lab stock requires 40 received bolts; legacy initial stock requires 21. Later stock requires Duo and 40. Counts use received bundles times bundle size, not remaining cash. The 0.2.2 in-game display cap of 99 is client-only and does not cap tracker totals.

For Frost's final refill row, equip a weapon, lower its energy, and stay far left. Some placements remain room references.

## Credits

Map art: Zeric via VGMaps.com; URLs are in map-sources.json. Mega Man game art belongs to Capcom. No ROM, disc image, or executable is included. See LICENSE-NOTICE.md. Pack identity: MegaManX306.

## Verification

JSON/Lua syntax, image/map references, marker bounds, version consistency, all 126 unchanged AP paths, and route regressions in both modes were checked. See validation-v079.json for the actual results. No live PopTracker/emulator run was performed. Report issues with pack version, generating APWorld version, check name/ID, available items, options, and a screenshot.

## Version 0.7.8 — marker color correction

All AP sections now call `^$mm8_access_level` instead of `$mm8_access`. Plain `$` interprets numeric sequence-break results as counts, so the previous pack could display a yellow route as green. The wrapper returns AccessibilityLevel.Normal for true, None for false, and retains SequenceBreak for the difficult Mega Ball routes. The informational Frost note uses the same conversion. Visibility rules remain boolean. Gameplay requirements and AP paths are unchanged.

## Version 0.7.9 — refined yellow routes

Frost Bolt 3 and Clown Bolts 4/5 are green with Tornado Hold, yellow with Mega Ball when Tornado Hold is missing, and red without either. Search Life/Weapon Energy remain green with Thunder Claw, yellow with Mega Ball otherwise, and red without either. Search Bolt 2 remains green with Thunder Claw AND Tornado Hold, yellow with Mega Ball otherwise, and red with neither qualifying route. Normal green routes take precedence. Missing Frost capsules remain pending Shinnuu; no new AP IDs or marker moves in this update.
