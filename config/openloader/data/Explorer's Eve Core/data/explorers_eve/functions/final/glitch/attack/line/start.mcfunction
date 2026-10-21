#Replace the ride and prep tags.
tag @s add LineActive
scoreboard players set @s GlitchLineShoot 20
playsound witherstormmod:withered_symbiont_hurt hostile @a[distance=..200] ~ ~ ~ 10 1.5 1

kill @e[tag=CommandRide]
summon area_effect_cloud ~ ~ ~ {Tags:["CommandRide"],Duration:9999}
execute as @e[tag=CommandRide] at @s facing entity @p[gamemode=!spectator] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

#Generate how many passes the block will make.
execute if score @s Health matches 151..300 run scoreboard players set @s GlitchLineTurns 4
execute if score @s Health matches 301..500 run scoreboard players set @s GlitchLineTurns 3
execute if score @s Health matches 501..600 run scoreboard players set @s GlitchLineTurns 2

scoreboard players set @s RandomRange 3
function explorers_eve:random
scoreboard players operation @s GlitchLineTurns += @s RandomValue

