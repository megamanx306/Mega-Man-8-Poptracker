# Mega Man 8 — Maps and Logic v0.7.13

Archipelago PopTracker pack for Mega Man 8. Supports Shinnuu APWorld 0.2.3, 0.2.2, 0.2.1, 0.2.0, and legacy 0.1.0 seeds. Includes 127 server-backed checks.

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
| Frost Bolt 6 | (Astro Crush OR Flame Sword) AND (Mega Ball OR Tornado Hold) | — |
| Frost Large Life Energy 2 and 3 | No weapon requirement | — |
| Frost Large Life Energy 6 | Tornado Hold | Mega Ball |
| Tengu Bolt 2 | Homing Sniper OR Astro Crush | — |
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

## Frost pickup identities — 0.2.3

Energy 6 is now a real AP check, **5480343**, at the lower stacked ice block beside Bolt 4 (uploaded screenshot). The previous zero-check note has been replaced with an auto-tracked check. Existing Energy 1–5 retain the server names: the temporary field-order aliases are retired. Energy 2 and 3 are weapon-free; Energy 6 uses Tornado Hold (green) or Mega Ball (yellow). No Astro Crush requirement is added to Energy 6.

Connected seeds show the new check only if it exists in the server's location set, including already-completed checks. Updating a client on an older seed does not add the new pickup. Offline, turn Seed v0.2.3 ON with pickup insanity to display it; turn it OFF for older seeds.

## Seed settings and shop

The existing Seed v0.2.1 toggle also covers 0.2.2 because the check sets match. Connected slots without stage_order retain legacy behavior. With pickupsanity, check 5480342 distinguishes the newer set; otherwise select it manually. Stage order: 0 vanilla, 1 open, 2 open-any-four.

Modern initial Lab stock requires 40 received bolts; legacy initial stock requires 21. Later stock requires Duo and 40. Counts use received bundles times bundle size, not remaining cash. The 0.2.2 in-game display cap of 99 is client-only and does not cap tracker totals.

For Frost's final 11-check refill row, stay to the far left. Some placements remain room references.

## Credits

Map art: Zeric via VGMaps.com; URLs are in map-sources.json. Mega Man game art belongs to Capcom. No ROM, disc image, or executable is included. See LICENSE-NOTICE.md. Pack identity: MegaManX306.

## Verification

JSON/Lua syntax, image/map references, marker bounds, version consistency, all 126 unchanged AP paths, and route regressions in both modes were checked. See validation-v0713.json for the actual results. No live PopTracker/emulator run was performed. Report issues with pack version, generating APWorld version, check name/ID, available items, options, and a screenshot.

## Version 0.7.10 — 2026-10-21 playtest

Yellow plausible checks confirmed working in-game by the user on the prior pack. This update makes Frost Energy 2/3 weapon-free, adds Energy 6 (5480343) with green Tornado Hold / yellow Mega Ball, and explicitly applies Tengu Bolt 2's Homing Sniper OR Astro Crush in both modes. Existing green-over-yellow precedence and all other 0.7.9 routes are retained. No live test of this new build has been performed.

## Version 0.7.11 — completed 0.2.3 playtest

User completed APWorld 0.2.3. Frost Life Energy 5 accepts Astro Crush OR Flame Sword. Bolt 6 requires (Astro Crush OR Flame Sword) AND (Mega Ball OR Tornado Hold), in both modes. Settings now have clear option/logic/version groups and matching labeled cards. Stage marker sizes are normalized relative to canvas width, with nearby shared-room markers consolidated into one popup; individual checks and AP paths remain unchanged. The 11-check refill-row panel and tooltips now say only to stay far left. New build not run in the PopTracker GUI.

## Version 0.7.12 — separate check markers

Reversed the shared-popup grouping introduced in 0.7.11. All six pairs, including Frost Bolt 4 and Energy 6, have separate, spaced clickable markers near their original locations. Consistent marker sizing, cleaned settings, Flame Sword routes and the corrected refill note are retained. No gameplay requirements or AP paths changed.

## Version 0.7.13 — screenshot marker alignment

Aligned 13 individual markers to the uploaded arrows: Frost Bolt 4, Life Energy 6, Life Energy 4 and Weapon Energy 1; Tengu Bolt 2; Aqua Bolt 3, Life Energy 2/4 and Weapon Energy 3; Astro Life/Weapon Energy; Search Life/Weapon Energy. Each marker follows its individual pickup or container rather than the automatic above/below offsets used in 0.7.12. Nearby checks retain separate coordinates and tracking sections. Zoom in on tightly packed pickups for precise selection. Logic, settings, marker sizes and the corrected Frost refill-row note are unchanged.
