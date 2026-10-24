# Mega Man 8 APWorld playtest report draft

Source: uploaded complete two-player server log and player notes, finished 2026-10-01.
Tested world: v0.1.0. Checked against uploaded v0.2.0: location/item IDs and pickup tables are unchanged.

## Additional pickups reported in-game

- Frost Man: life-energy pickup immediately after Bolt 6 (existing bolt check ID 5480105).
- Frost Man: weapon-energy pickup immediately after Large Life Energy 4 (existing check ID 5480303).

Neither extra pickup has a separate entry in the supplied 42-pickup tables of v0.1.0 or v0.2.0. Please verify the spawn/overlay, assign new append-only IDs if these should be checks, and update world and client/disc tracking. The tracker cannot send or receive non-existent AP locations. The existing 11 pickups in Frost's final refill row were confirmed by the player.

## Per-check route findings

Frost bolts 1–2 and most capsules need no Astro Crush. Bolt 3 accepts Mega Ball or Tornado Hold. Bolt 4 and Large Life Energy 3 also accept a well-timed slide-jump. Bolts 5–6 need Astro Crush.
Clown bolt 1 needs Rush Bike; bolt 2 is free; bolt 3 needs Mega Ball AND Flame Sword; bolt 4 needs Mega Ball; bolt 5 accepts Mega Ball or Tornado Hold.
Grenade bolt 1 accepts Mega Ball or Tornado Hold; bolt 3 needs Flame Sword; other bolts and both large life capsules are free.
Aqua first weapon capsule / bolt 1 need Astro Crush; first life capsule / bolt 2 need Tornado Hold. Second weapon/life capsules and bolt 3 are free.

## Name / ID findings to verify

The player reports Sword bolt 1 as 5480120 and bolt 2 as 5480119 (Thunder Claw trial); the source labels these the other way around. Sword life capsule 2 is reported as 5480322 in the Thunder Claw trial, capsule 3 as 5480321 in the lava room; source labels are reversed. This also affects v0.2.0's lava-capsule trial gate. Search bolt 2 is reported as 5480136, bolt 3 as 5480135 (Tornado Hold + Thunder Claw); source labels are reversed. Tracker keeps server IDs/names and includes the playtest aliases in tooltips.

The player typed 5488340 / 5488341 for Wily 3 life capsule 2 and 1-UP; the actual immutable IDs are 5480340 / 5480341.

This draft has not been posted or sent.


## 2026-10-03 follow-up

The user has already discussed the missing Frost ice-block life refill with Shinnuu. Await an APWorld update before adding an AP check. Latest Sword/Search numbering and default physical-route assignments are documented in README v0.6.7; these supersede earlier playtest aliases. Sword trials require Tornado Hold and Ice Wave, as well as Thunder Claw and Flash Bomb. Updated 2026-10-24: for the 11-check Frost refill row, stay to the far left. No issue or message was sent.
