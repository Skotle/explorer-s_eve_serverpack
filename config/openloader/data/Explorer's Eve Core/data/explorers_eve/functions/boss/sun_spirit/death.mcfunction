#Fight's over, goodbye markers.
function explorers_eve:boss/sun_spirit/arena_fire_empty
kill @e[type=#explorers_eve:sun_spirit_mobs,distance=..20]
kill @e[type=aether:fire_crystal,distance=..20]
kill @e[type=aether:ice_crystal,distance=..20]
kill @e[tag=LaserTarget,distance=..20]
kill @e[tag=FireCrystalWall,distance=..20]
kill @e[tag=ArenaFireManager,distance=..20]
kill @e[tag=SunSpiritTracker,limit=1,sort=nearest]