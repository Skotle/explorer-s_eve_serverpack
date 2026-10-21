#Update the biome and music.
execute if entity @s[tag=Resummoned] run function explorers_eve:command_block/bowels_override_2_alt
stopsound @a[tag=CommandMusic] record explorers_eve:command_block_theme_1
stopsound @a[tag=CommandMusic] record explorers_eve:command_block_theme_1_alt
scoreboard players set @a[tag=CommandMusic] MusicTime 0
execute at @w[tag=CommandBlockHurt] run kill @e[type=witherstormmod:block_cluster,distance=..500]
execute as @e[tag=CommandMob,distance=..128] run damage @s 25 generic by @p[gamemode=!spectator]
tag @s add Injury2
scoreboard players set @s CommandEntityTime 1