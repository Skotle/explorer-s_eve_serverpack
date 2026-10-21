#Reset the fight if players die/flee.
tag @s remove SunSpiritActive
tag @s remove Phase1
tag @s remove Phase2
tag @s remove Phase3
tag @s remove IceDeny
tag @s remove LaserActive
scoreboard players reset @s Health
scoreboard players reset @s HintTime
scoreboard players reset @s SunSpiritAttackTime
scoreboard players reset @s SunSpiritLaserTime
scoreboard players reset @s SunSpiritArenaTime
scoreboard players reset @s SunSpiritMinionTime
scoreboard players reset @s SunSpiritIceTime

attribute @s minecraft:generic.movement_speed modifier remove 1d58604f-3438-41cb-b968-ad31de8430d7
data modify entity @s HurtTime set value 0

kill @e[type=#explorers_eve:sun_spirit_mobs,distance=..20]
kill @e[type=aether:fire_crystal,distance=..20]
kill @e[type=aether:ice_crystal,distance=..20]
kill @e[tag=LaserTarget,distance=..20]
kill @e[tag=FireCrystalWall,distance=..20]
kill @e[tag=ArenaFireManager,distance=..20]
kill @e[tag=SunSpiritTracker,limit=1,sort=nearest]