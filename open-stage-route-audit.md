# MM8 open-stage route audit — v0.6.6

Default physical-route mode separates stage entry from obstacle requirements. stage_order 1 and 2 open all eight stages; stage_unlocks still requires the individual access code. Vanilla order retains Duo’s clear before the second set, without assuming received weapons. AP seed logic retains the supplied v0.2.0 world's conservative Mega Ball + Thunder Claw entry gates and original per-check requirements. Duo/Wily rules remain unchanged.

Reviewed all eight supplied stage pages through indexed text; direct retrieval was blocked for seven pages. AP source checked: supplied mm8 (1).apworld, mm8/__init__.py set_rules, options.py StageOrder, bolts.py and pickups.py.

| Stage | Physical route conclusions |
|---|---|
| Frost | Retained user-tested per-check lifts, dig/break requirements and optional slide-jump route. Free early snowboard bolts and refill row stay free. |
| Clown | Boss/midboss route requires no weapon. Barrel bolt uses Flame Sword plus Mega Ball OR Tornado Hold; upper pirate bolt now allows either lift. Rush Bike remains the normal early-gap route; difficult Mega Ball bounce not enabled as a normal route. |
| Tengu | No received Rush item required for the scripted flight. Only the bolt hatch requires Homing Sniper OR Astro Crush. |
| Grenade | Normal route free; isolated fuse bolt requires Flame Sword. First box-room bolt requires Mega Ball OR Tornado Hold. |
| Sword | Flash trial bolt free; Thunder trial bolt/refill requires Thunder Claw. Past-trial boss, midboss, corridor/lava checks retain all four trial weapons. No automatic damage boost or puzzle brute-force bypasses. |
| Aqua | Boss/midboss and upper route no blanket entry weapons. Lower-route bolt requires Astro Crush; ceiling bolt/refill and spike-ball bolt keep their own gates. Existing playtested refill overrides preserved. |
| Astro | Boss, first three bolts and normal refill routes no blanket weapons. Fourth bolt needs Mega Ball OR Tornado Hold. |
| Search | Early foliage bolt free; thorn bolt Flame Sword; upper bolt Tornado Hold AND Thunder Claw; late hook bolt Thunder Claw. Hook refill pair Thunder Claw; boss Tornado Hold AND Thunder Claw. |

Source IDs and user-tested room identities take precedence over numbering guesses. Existing user-tested Frost/Aqua pickup exceptions remain; guides do not individually identify every AP refill. No location IDs, positions, portrait artwork, broadcast layout or AP mappings changed. Boss weaknesses are not mandatory traversal weapons.

## References

- https://megaman.fandom.com/wiki/Search_Man_Stage
- https://megaman.fandom.com/wiki/Ammunition_Factory_Stage
- https://megaman.fandom.com/wiki/Tengu_Man_Stage
- https://megaman.fandom.com/wiki/Sword_Man_Stage
- https://megaman.fandom.com/wiki/Ice_Stage
- https://megaman.fandom.com/wiki/Clown_Man_Stage
- https://megaman.fandom.com/wiki/Astro_Man_Stage
- https://megaman.fandom.com/wiki/Aqua_Man_Stage
