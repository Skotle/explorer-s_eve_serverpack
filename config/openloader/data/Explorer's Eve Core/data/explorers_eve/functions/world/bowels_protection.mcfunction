#Do nice things so players entering the bowels don't immediately hate life.
tag @s remove InBeam
tag @s remove NullMusic
tag @s remove MusicPlaying
effect clear @s wither
effect clear @s mining_fatigue
effect clear @s slowness
effect clear @s weakness
effect clear @s hunger
effect give @s resistance 5 3 true
effect give @s resistance 10 2 true
effect give @s resistance 15 1 true
effect give @s xaeroworldmap:no_world_map infinite 0 true
effect give @s xaerominimap:no_minimap infinite 0 true
kill @e[type=area_effect_cloud,distance=..10]
effect give @e[type=#witherstormmod:sickened_mobs,distance=..10] slowness 10 2 true
advancement revoke @s only explorers_eve:enter_bowels