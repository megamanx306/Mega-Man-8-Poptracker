> Historical report. Resolved in APWorld 0.2.3: the reported capsule is now Frost Large Life Energy 6 (5480343). Original names stay unchanged; temporary field-order aliases below are obsolete. New user playtest: Energy 2 and 3 need no weapon, Energy 6 uses Tornado Hold or difficult Mega Ball jumps.

# MM8 0.2.2 playtest notes for Shinnuu — draft

User reports from a run on 2026-10-12/13. Not sent or posted. Times below are copied exactly; their timezone is not independently established.

## Frost capsule identity discrepancy

Energy 2 is collected immediately after Bolt 3 at the orange platform in `Frost Man LLE2.png`. Its tracker marker had been on the ice beside Bolt 4 and has been moved.

The player reports a separate large life capsule in the ice beside Bolt 4, requiring a Mega Ball airborne jump or Tornado Hold to reach. This should be field Energy 3 but does not have an AP entry in the supplied 0.2.2 world. Please verify its spawn/container record and whether it should be a pickupsanity check. Do not reuse an existing ID; append a new ID if it becomes a check.

With that missing capsule included in field order, current server Large Life Energy 3 is field Energy 4 before the tower, current server Energy 5 remains field Energy 5, and current server Energy 4 is field Energy 6 in the second Jump/Slide area. The tracker preserves current server names and IDs and puts field-order aliases in notes.

The supplied source says Frost's other drop-carrying block (record 148) is not a location and needs no weapon to damage. That may be relevant to the reported missing capsule, but its identity has not been confirmed from the screenshots. Movement access and block damage are separate questions.

## Frost Bolt 6

Confirmed physical requirement: Astro Crush AND (Mega Ball OR Tornado Hold). The supplied 0.2.2 bolt guide still allows Mega Ball plus any of Astro Crush, Flame Sword, or Flash Bomb. The player reports that the target ice needs Astro Crush. Please reconcile the container/route with that guide entry.

## Other confirmed routes

- Grenade Large Life Energy 1 is accessible without Flame Sword.
- Astro stage checks need no weapon beyond stage entry.
- Aqua early entry needs neither Mega Ball nor Thunder Claw as a blanket gate. Its individual Astro Crush and Tornado Hold checks still apply.
- Clown Bolt 1: Rush Bike normally; airborne Mega Ball jump as a sequence break. Bolts 4/5: Tornado Hold normally; Mega Ball airborne jumps as a sequence break.
- Both Duo bolts: Mega Ball OR Tornado Hold, without an additional Thunder Claw requirement.
- Search Bolt 1: no weapon. Both refills: Thunder Claw normally; Mega Ball airborne jumps as a sequence break. Bolt 2: Thunder Claw AND Tornado Hold normally; Mega Ball airborne jumps as a sequence break.
- Search doors open with the Mega Buster, as corrected in 0.2.2.
- The player entered Wily 1 without Water Balloon, with the other seven weapons. Tracker uses that same fortress gate for Wily 1–4.

## Supplied collection log

```text
[2026-10-13 02:13:28,101]: (Team #1) 306MM8 sent Weapon Energy to 306MM8 (Frost Man - Bolt 3)
[2026-10-13 02:13:33,811]: (Team #1) 306MM8 sent Life Energy to 306MM8 (Frost Man - Large Life Energy 2)
[2026-10-13 02:18:26,273]: (Team #1) 306MM8 sent Weapon Energy to 306MM8 (Frost Man - Bolt 4)
[2026-10-13 02:19:28,632]: (Team #1) 306MM8 sent Life Energy to 306MM8 (Frost Man - Large Life Energy 3)
[2026-10-13 02:20:16,837]: (Team #1) 306MM8 sent Weapon Energy to 306MM8 (Frost Man - Bolt 5)
[2026-10-13 02:20:52,240]: (Team #1) 306MM8 sent 1-Up to 306MM8 (Frost Man - Bolt 6)
[2026-10-13 02:21:56,309]: (Team #1) 306MM8 sent Life Energy to 306MM8 (Frost Man - Large Life Energy 5)
```

This log confirms the server labels and collection sequence, not exact map pixels or a new AP ID.
