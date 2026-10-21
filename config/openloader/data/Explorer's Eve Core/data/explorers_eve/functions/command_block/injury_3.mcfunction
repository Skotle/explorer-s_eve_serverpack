#Update the biome and music.
execute if entity @s[tag=Resummoned] run function explorers_eve:command_block/bowels_override_3_alt
stopsound @a[tag=CommandMusic] record explorers_eve:command_block_theme_2
stopsound @a[tag=CommandMusic] record explorers_eve:command_block_theme_2_alt
scoreboard players set @a[tag=CommandMusic] MusicTime 0
execute at @w[tag=CommandBlockHurt] run kill @e[type=witherstormmod:block_cluster,distance=..500]
execute as @e[tag=CommandMob,distance=..128] run damage @s 25 generic by @p[gamemode=!spectator]
tag @s add Injury3
scoreboard players set @s CommandEntityTime 2

#Also permanently wound the Wither Storm.
execute at @w[tag=CommandBlockHurt] as @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest,distance=..200] run data merge entity @s {Heads:{0:{InjuryTime:1000000},1:{InjuryTime:1000000},2:{InjuryTime:1000000}}}
tag @w[tag=CommandBlockHurt] add CommandBlockInjury3
witherstormmod config server set server.misc.flyingHeight 10