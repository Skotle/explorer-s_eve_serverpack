#Replace Arachnarch spit with bombs.
tag @s add SpitChecked
execute if entity @s[distance=..6] at @s run summon blue_skies:venom_bomb ~ ~ ~ {Tags:["NewVenom"],Fire:-1s,Passengers:[{id:"minecraft:area_effect_cloud",Duration:50,Tags:["VenomTracker"]}]}
execute as @e[tag=NewVenom,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/population/spit_aim
