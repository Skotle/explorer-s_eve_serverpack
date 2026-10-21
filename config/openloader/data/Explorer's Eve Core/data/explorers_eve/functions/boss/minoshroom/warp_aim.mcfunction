#Aim the axe. This mimics the Storm's shooting functions.
playsound dungeons_plus:item.warped_axe.throw hostile @a
summon dungeons_plus:warped_axe ~ ~1.5 ~ {Tags:["ShroomAxe"],can_teleport:1b,NoGravity:1b}
execute as @e[tag=ShroomAxe] at @s facing entity @p[gamemode=!spectator] eyes rotated ~ 0 run function explorers_eve:boss/minoshroom/warp_throw

item replace entity @s weapon.mainhand with air
tag @s remove WarpWarned
tag @s add WarpThrown

#Don't forget to reset the timer!
scoreboard players set @s RandomRange 4
function explorers_eve:random
scoreboard players operation @s MinoshroomTime = @s RandomValue
scoreboard players add @s MinoshroomTime 4