#Spawn many spikes marks!
tag @s add NewSpikes
summon area_effect_cloud ~ ~ ~ {Duration:240,Tags:["SymbiontSpikeMark"]}
execute as @e[tag=SymbiontSpikeMark,limit=1,sort=nearest] rotated as @e[tag=NewSpikes,limit=1,sort=nearest] rotated ~30 0 run tp @s ^ ^ ^1 ~ ~
summon area_effect_cloud ~ ~ ~ {Duration:240,Tags:["SymbiontSpikeMark"]}
execute as @e[tag=SymbiontSpikeMark,limit=1,sort=nearest] rotated as @e[tag=NewSpikes,limit=1,sort=nearest] rotated ~90 0 run tp @s ^ ^ ^1 ~ ~
summon area_effect_cloud ~ ~ ~ {Duration:240,Tags:["SymbiontSpikeMark"]}
execute as @e[tag=SymbiontSpikeMark,limit=1,sort=nearest] rotated as @e[tag=NewSpikes,limit=1,sort=nearest] rotated ~150 0 run tp @s ^ ^ ^1 ~ ~
summon area_effect_cloud ~ ~ ~ {Duration:240,Tags:["SymbiontSpikeMark"]}
execute as @e[tag=SymbiontSpikeMark,limit=1,sort=nearest] rotated as @e[tag=NewSpikes,limit=1,sort=nearest] rotated ~210 0 run tp @s ^ ^ ^1 ~ ~
summon area_effect_cloud ~ ~ ~ {Duration:240,Tags:["SymbiontSpikeMark"]}
execute as @e[tag=SymbiontSpikeMark,limit=1,sort=nearest] rotated as @e[tag=NewSpikes,limit=1,sort=nearest] rotated ~270 0 run tp @s ^ ^ ^1 ~ ~
summon area_effect_cloud ~ ~ ~ {Duration:240,Tags:["SymbiontSpikeMark"]}
execute as @e[tag=SymbiontSpikeMark,limit=1,sort=nearest] rotated as @e[tag=NewSpikes,limit=1,sort=nearest] rotated ~330 0 run tp @s ^ ^ ^1 ~ ~
tag @s remove NewSpikes

#Oh, and some effects I guess.
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 3 1
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 1 0 0 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ -1 0 0 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0 0 1 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0 0 -1 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0.7 0 0.7 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ -0.7 0 0.7 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0.7 0 -0.7 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ -0.7 0 -0.7 0.25 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0.383 0 0.924 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ -0.383 0 0.924 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0.383 0 -0.924 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ -0.383 0 -0.924 0.25 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0.924 0 0.383 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ -0.924 0 0.383 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0.924 0 -0.383 0.25 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3 ~ -0.924 0 -0.383 0.25 0 force