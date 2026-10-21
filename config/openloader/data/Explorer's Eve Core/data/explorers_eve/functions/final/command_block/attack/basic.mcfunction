#Setup for a basic attack.
execute at @p[gamemode=!spectator] run summon marker ~ ~1.5 ~ {Tags:["SkullTarget"]}
summon marker ~ ~1 ~ {Tags:["SkullSource"]}
execute as @e[tag=SkullSource,limit=1,sort=nearest] run function explorers_eve:final/command_block/attack/shoot