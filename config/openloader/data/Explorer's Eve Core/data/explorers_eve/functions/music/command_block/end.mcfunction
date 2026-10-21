#End with a bang!
tag @s remove CommandMusic
tag @s remove CommandBlockIntro
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:command_block_theme_0
stopsound @s record explorers_eve:command_block_theme_1_intro
stopsound @s record explorers_eve:command_block_theme_1
stopsound @s record explorers_eve:command_block_theme_2
stopsound @s record explorers_eve:command_block_theme_3
stopsound @s record explorers_eve:command_block_theme_1_alt
stopsound @s record explorers_eve:command_block_theme_2_alt
stopsound @s record explorers_eve:command_block_theme_3_alt
execute unless entity @e[scores={CommandPhase=0},distance=..80] unless entity @w[tag=Resummoned] run playsound explorers_eve:command_block_theme_end record @s ~ ~ ~ 1 1 1
execute unless entity @e[scores={CommandPhase=0},distance=..80] if entity @w[tag=Resummoned] run playsound explorers_eve:command_block_theme_end_alt record @s ~ ~ ~ 1 1 1
execute if entity @e[scores={CommandPhase=0},distance=..80] run playsound explorers_eve:command_block_theme_0_end record @s ~ ~ ~ 1 1 1

execute if biome ~ ~ ~ witherstormmod:bowels run function explorers_eve:music/bowels/mark