#When the Command Block dies, clear all mobs and bad effects, as well as the Symbiont summoning sound.
stopsound @a[predicate=explorers_eve:bowels] * witherstormmod:withered_symbiont_death
stopsound @a[predicate=explorers_eve:bowels] * witherstormmod:command_block_build
execute as @e[tag=CommandSpawnerTracker,distance=..150] at @s run function explorers_eve:command_block/spawner_break
kill @e[type=#explorers_eve:bowels_mobs,predicate=explorers_eve:bowels,distance=..64]
kill @e[tag=CommandSkullSource,distance=..64]
kill @e[tag=CommandMobMark,distance=..64]
effect clear @a[predicate=explorers_eve:bowels] levitation
effect clear @a[predicate=explorers_eve:bowels] wither
tag @a remove CommandBattling
data modify storage world WitherStormDefeated set value 1
witherstormmod config server set server.misc.rotationSpeed default
execute at @w[tag=BowelsReady] run summon area_effect_cloud ~ ~5 ~ {Duration:700,Tags:["VictoryMusicMark"]}
execute unless entity @e[tag=VictoryMusicMark] at @w run summon area_effect_cloud ~ ~5 ~ {Duration:700,Tags:["VictoryMusicMark"]}
execute if entity @w[tag=Resummoned] run advancement grant @a only explorers_eve:witherite_possible
schedule function explorers_eve:command_block/end_delay 30s
kill @s