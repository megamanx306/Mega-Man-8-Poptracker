# Changelog

## 0.7.13 — 13 screenshot-aligned markers

- Move the marked Frost, Tengu, Aqua, Astro and Search checks onto their individual pickup/container targets.
- Replace the previous automatic vertical offsets with screenshot-guided positions.
- Keep each check separate; preserve all gameplay rules, marker sizes and settings.

## 0.7.12 — separate check markers

- Undo all six shared-marker groups from 0.7.11.
- Space each pair apart near its original location, including Frost Bolt 4 and Energy 6.
- Keep consistent sizes, settings cleanup and all route corrections.

## 0.7.11 — completed 0.2.3 test / UI cleanup

- Add Flame Sword alternatives for Frost Energy 5 and Bolt 6, retaining Bolt 6 movement requirements.
- Reorganize settings with consistent cards and concise version guidance.
- Normalize stage-marker sizes; consolidate tight shared-room markers.
- Correct the baked refill-row panel, tooltips, and README to say stay far left.
- Preserve 127 AP check names, IDs and tracking sections.

## 0.7.10 — APWorld 0.2.3 / 2026-10-21

- Add real Frost Energy 6 check 5480343; replace the untracked note.
- Energy 6 and Bolt 4: green Tornado Hold, yellow Mega Ball, red otherwise, in both modes.
- Frost Energy 2/3: no weapon requirement in both modes.
- Explicit Tengu Bolt 2: Homing Sniper OR Astro Crush.
- Hide the new check on older connected seeds; add an offline 0.2.3 toggle.
- Retire temporary Frost field-order aliases; preserve all existing AP names/IDs.
- User confirmed prior yellow-check display in-game.

## 0.7.9 — refined Mega Ball colors

- Frost Bolt 3 and Clown Bolts 4/5: green with Tornado Hold, otherwise yellow with Mega Ball.
- Retain Search refill and Bolt 2 green/yellow rules in both modes.
- Preserve explicit color-level syntax, server IDs, placements, and pending Frost notes.

## 0.7.8 — PopTracker yellow marker fix

- Use accessibility-level rule syntax (`^$`) for all 126 AP sections.
- Convert normal/blocked booleans to Normal/None; preserve SequenceBreak as yellow.
- Retain all v0.7.7 routes, placements, IDs, and primary names.
- Earlier Lua route tests did not test the JSON rule-to-color interpretation.

## 0.7.7 — 2026-10-12 playtest and APWorld 0.2.2

- Apply confirmed routes in both logic modes; remove blanket second-set Mega Ball/Thunder Claw gates.
- Require Astro Crush plus Mega Ball/Tornado Hold for Frost Bolt 6, even in seed mode.
- Add yellow Mega Ball alternatives for Frost refills, Clown Bolt 1, Search refills and Search Bolt 2.
- Make Clown Bolt 5 and both Duo bolts green with Mega Ball or Tornado Hold.
- Make Grenade Life Energy 1, all Astro checks and Search Bolt 1 weapon-free.
- Apply 0.2.2 Search door correction; Bolt 4 keeps Thunder Claw.
- Remove Water Balloon from Wily entry while retaining the other seven weapons, all masters and Duo.
- Reposition Frost Energy 2 and Search Bolt 1 from the screenshots.
- Record Frost field-order aliases, add a zero-check note for the missing capsule, and include the Shinnuu report draft.
- Preserve all 126 AP IDs and primary autotracking paths.


## 0.7.6

- Fix the existing Search Man Bolt 3 (5480135) autotracking section mismatch.
- Name all 126 checks descriptively and update matching autotracking paths.
- Improve Lua access helper names, indentation, spacing, and comments.
- Name special location IDs and expand requirement tables for review.
- Preserve 0.7.5 gameplay rules, map positions, and Mega Ball sequence breaks.

## Version 0.7.5 — Advanced Mega Ball alternatives

Removed Slide-jump setting and icon. Added yellow airborne Mega Ball alternatives for 5480109 and 5480110 in both logic modes, preserving normal routes and stage gates. Moved 5480109 to the screenshot-marked upper-left blocks in the green chamber. Retained Hyper Slider and all AP identities.

## Version 0.7.4 — 2026-10-05 direct full-stage views

Each stage now opens its full map directly. Removed Whole stage, Locations, Check list, and close-up sub-tabs and their unused images/map definitions. Shop views, all AP check sections, full-map markers and notes, inventory, broadcast, logic, and autotracking remain. No live GUI/emulator test performed.

## Version 0.7.3 — 2026-10-05 segmented-map cleanup

Removed 113 numbered stage-segment images, their Sections tabs, map definitions, and segment-only marker coordinates. Whole-stage maps, check boards, targeted close-ups, AP check definitions, logic, autotracking, and broadcast views are retained. No live PopTracker/emulator run was performed.

## Documentation refresh — 2026-10-05

Rewrote the README around current behavior and compatibility, aligned its title with the manifest and VERSION file, moved previous release notes into this changelog, and added a licensing-status notice. Pack version and runtime files are unchanged. Historical notes below describe their respective releases and may be superseded by later entries.

## Historical release notes

# Mega Man 8 maps and logic v0.7.2

Supports uploaded Shinnuu APWorld v0.2.0 and legacy v0.1.0 seeds. Connected slots with stage_order use the new stage-order rules and 40-bolt initial Lab threshold. Slots without that field retain vanilla gates and the old 21-bolt initial threshold. Offline controls select world version and stage order (0 vanilla, 1 open, 2 open-any-four). Later Lab stock always needs Duo plus 40 received bolts. Counts use received bundles × bundle size, not unspent cash or individual purchase prices.

Corrected all mismatched Robot Master portraits. Added Intro Mega Ball, eight boss defeats, four Rush mid-bosses, Duo, Wily clears, Bass and eight optional rematches to stage maps. These use existing AP IDs. There are 125 total checks: 97 on whole-stage terrain/room references, 11 on Frost's confirmed final refill-row view, and 17 on the Lab map. Rematches require the option and are hidden when absent from the seed.

Swapped Intro bolts 1/3; moved Frost bolt 6 to the second ice block; added the Clown question-block reference. Default per-check routes incorporate the tested Frost, Clown, Grenade, Sword, Search, Aqua and Wily requirements. Sword's four trials and Search's Tornado Hold door are enforced. The Slide-jump toggle permits Frost bolt 4 / life capsule 3 as yellow when movement weapons are missing.

The latest playtest assigns Sword and Search numbered checks as documented in the 0.6.7 notes below. Primary server names and AP IDs remain unchanged. Wily 3's reported 5488340/41 are corrected to actual IDs 5480340/41.

Two extra Frost refills have no existing AP IDs and cannot be auto-tracked. APWorld-playtest-report.md documents them and the name/route findings for Shinnuu. It is a draft, not a posted issue.

Validated: 25,000 strict-mode comparisons with the actual Python set_rules methods from both supplied worlds across 200 randomized inventory/access-code/boss/bundle states. Also checked Lua syntax, route regressions, reconnect resets, duplicate item handling, restored checks, layout/image references and marker bounds. Automatic PS1 stage switching remains unimplemented.

Install: replace the previous pack with this ZIP. Do not load two versions with the same package UID. Whole stage stays the default view; inventory and check boards stay below it. Playtest close-up tabs enlarge the revised map areas. AP tracking restores checks and suppresses duplicate item events. Maps and marker coordinates are checked, but this update has not been run in the PopTracker GUI or emulator.

AP seed logic is a new toggle under Logic settings. OFF (default) uses the player's tested individual routes. ON uses the AP world's conservative requirements. Physical access in the default mode can be greener than the generator's sphere logic; this does not change the seed or APWorld. Yellow denotes a sequence break / difficult movement route. Hidden rooms and uncertain pixels are explicitly labeled room references, rather than claimed exact pickup coordinates. Server IDs and primary names are preserved; where the playtest numbers differ, tooltips include the ID-specific aliases.

Map art: Geminiman (MM7) / Zeric (MM8), VGMaps.com; individual URLs and dimensions are in map-sources.json. Game artwork copyright Capcom. No ROM, disc, or executable is included.

## Screenshot corrections 0.6.1

Corrected the screenshot-highlighted check coordinates on whole maps and every corresponding close-up. New named spot tabs show the exact confirmed areas. The original AP IDs, logic and whole-stage defaults are retained.

Weapon cards now use glyphs extracted from the user-provided MM8 menu screenshot, with consistent sizing and two-line high-contrast labels. Cards are rendered at the progression panel’s actual 52×48 display size, with nearest-neighbor sprite scaling. Rematch capsule identities were verified against https://gamefaqs.gamespot.com/ps/250604-mega-man-8/faqs/23393 .

## Additional screenshot correction

User screenshot: Mega Ball gift on the surface path before the underground entrance. Updated the whole map and every corresponding close-up.

Boss portraits now use explicit named assets (stage-frost.png, etc.). Source identities were checked individually: the old Frost card contained Clown, old Clown contained Tengu, old Tengu contained Frost; the old Sword/Astro/Search cards contained Astro/Search/Sword respectively. Grenade and Aqua were already correct. No item or AP location IDs changed. Identity reference: https://megaman.retropixel.net/mm/8/bosses.php

Version 0.6.3: swapped Frost Man and Grenade Man portrait artwork per the user reference; retained each correct label and AP item code. This supersedes the previous portrait identity notes.

Version 0.6.4: broadcast uses four columns at the same icon size as MM7, with eight Robot Masters, eight weapons, Mega Ball on its own row, and four Rush items. Lab upgrades, refill items, Duo, and Wily stages are omitted from broadcast.

Version 0.6.5: Robot Master portraits follow stage_unlocks. With codes disabled, all eight portraits are active; with codes enabled, each portrait stays grey until its code arrives. Received AP item state is preserved independently of the portrait display. Applies to main and broadcast views.

Version 0.6.6: removed blanket second-set weapon gates from default physical-route mode, with stage order and access codes still respected. Revised Astro, Aqua, Search, Sword and Clown per-check routes. AP seed logic stays conservative and matches the supplied world. See open-stage-route-audit.md.


## Version 0.6.7 — 2026-10-03 playtest corrections

Corrected Frost boss/life refill, Sword/Grenade/Aqua mid-bosses and Wily 2 clear markers. Swapped Search bolts 2/3 and Sword bolts 1/2 and life refills 2/3. Revised Aqua refills, Frost/Clown movement alternatives and Duo bolts. Tornado Hold routes are green; the tested Mega Ball alternatives are yellow. Sword completion still requires Tornado Hold, Ice Wave, Thunder Claw and Flash Bomb. Search completion requires Tornado Hold and Thunder Claw.

Stage maps remain the default view. New Latest playtest tabs enlarge the screenshot-confirmed areas. Existing AP location IDs and primary names are preserved. Default physical routes use the new findings; AP seed logic retains the APWorld rules.

Frost's reported missing ice-block refill remains pending an APWorld update; no invented check or AP ID was added. For the final Frost refill row, equip a weapon and drain some energy so weapon capsules can be collected.

Validation for this release: all JSON parsed, every Lua script passed a syntax check, AP IDs/primary check sections matched the previous pack, map markers passed bounds checks, and new route regressions passed. Across both packs, 47,600 strict-mode comparisons matched the prior validated rules. No live PopTracker/emulator run was performed for this release.


## Version 0.6.8 — UI organization

Compact four-column inventory now sits on the left, with Items and Extras tabs. Main maps occupy the right-hand area at full available height. Stage navigation is grouped into Intro, Robot Masters, special stage, Wily’s Castle and shop/lab. Whole stage remains each stage’s first view. Sections and special locations are grouped into short nested tabs; every existing map view is retained. Each stage’s check board is available under Check list. Logic options are accessed through PopTracker’s settings popup.

Broadcast order and size, AP check identities, map markers and access rules are unchanged. MM7 auto-follow opens the correct stage group before selecting the detected stage. MM8 automatic stage detection remains unavailable.

UI layout organization takes inspiration from the supplied Mega Man X1–X3 packs; their game art and tracking code were not imported. Layout, item/map references, retained views and archive integrity were checked. This release has not been run in the PopTracker GUI.

## Version 0.6.9

Added all 11 existing pickup-insanity refill checks to the highlighted row on the whole-stage map, with a dedicated enlarged stage-row view. Added the weapon-energy / far-left collection note in the highlighted blank area. The source atlas hides pickup sprites, so row positions are references rather than verified individual pixels. Left inventory icons increased from 52 × 48 to 64 × 60.

## Version 0.7.0 — APWorld 0.2.1

- Imported each bolt and pickup requirement directly from the released 0.2.1 APWorld; retained legacy requirement tables.
- Added Frost Man – Large Life Energy 5 (5480342), the ice-block drop above Bolt 6, requiring Astro Crush in seed logic. Its map marker is a room reference pending pixel verification.
- Search Man IDs 5480135 and 5480136 retain their identities and map positions; labels use the new Bolt 3 / Bolt 2 numbering and include legacy numbering.
- Added the Seed v0.2.1 toggle in Settings. ON uses 0.2.1 seed rules; OFF uses existing legacy seed rules. Pickup-insanity seeds detect the generation version from the new check. Without pickup insanity, set the toggle to the version that generated the seed; upgrading the client does not change it.
- AP seed logic now defaults ON. Existing optional playtested routes remain available by turning it OFF.
- Preserved the 11 final-row checks, collection note, larger inventory icons, and earlier map corrections.

## Version 0.7.1 — 2026-10-05 confirmed playtest

User completed testing Shinnuu MM8 APWorld 0.2.1 on Archipelago 0.6.8 and confirmed the reported world changes. Confirmed Frost Bolt 6 (5480105), Frost Large Life Energy 5 (5480342), Search Bolt 3 (5480135), and Search Bolt 2 (5480136). These are user playtest results, not a new emulator test by the pack maintainer.

Default physical routes: Frost Bolt 6 requires Astro Crush AND (Mega Ball OR Tornado Hold). Aqua checks 5480327, 5480126, 5480328, and 5480329 require Astro Crush; checks 5480125, 5480325, and 5480326 do not. These rules were already present and are retained. Frost Large Life Energy 5 explicitly retains Astro Crush in playtest mode. AP seed logic remains tied to the supplied world rules.

Moved Frost Bolt 6 onto the marked second ice container and Clown Mid-boss (5480011) into the marked arena. Updated whole-stage and existing close-up/review markers together. AP IDs and primary check names remain unchanged.

Validation: JSON parsing, Lua syntax, map/image references, marker bounds, unchanged AP IDs and primary names, and targeted physical-route inventory regressions passed. No new live PopTracker/emulator test was performed.

## Version 0.7.2 — Aqua Man requirements in both logic modes

Corrected all three rule tables (legacy, v0.2.1, and physical playtest) to agree with the user-confirmed Aqua routes. Checks 5480125, 5480325, and 5480326 have no weapon requirement. Checks 5480327, 5480126, 5480328, and 5480329 require Astro Crush. Applies with AP seed logic ON or OFF, offline or connected, on supported world versions. Stage-order and access-code gates still apply. These seven seed-mode checks intentionally use the confirmed physical requirements instead of the earlier supplied APWorld rules; generator sphere logic itself is unchanged.

Validation: actual Lua access checks tested across both logic modes, all supported world selections, connected/offline state, and all Astro Crush/Tornado Hold inventory combinations. JSON, Lua syntax, marker bounds, and AP identity checks also passed. No live GUI/emulator run performed.
