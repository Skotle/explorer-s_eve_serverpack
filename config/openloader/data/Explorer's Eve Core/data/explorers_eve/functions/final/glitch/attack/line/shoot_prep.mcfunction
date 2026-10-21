#Reset the timer.
execute if score @s Health matches 151..300 run scoreboard players set @s GlitchLineShoot 3
execute if score @s Health matches 301..450 run scoreboard players set @s GlitchLineShoot 4
execute if score @s Health matches 451..600 run scoreboard players set @s GlitchLineShoot 5

#Pick what projectile to shoot.
scoreboard players set @s RandomRange 8
function explorers_eve:random

execute if score @s RandomValue matches 0 run summon minecraft:arrow ~ ~ ~ {Tags:["GlitchShot","GlitchShotMotion"],crit:1b}
execute if score @s RandomValue matches 1 run summon minecraft:trident ~ ~ ~ {Tags:["GlitchShot","GlitchShotMotion"]}
execute if score @s RandomValue matches 2 run summon minecraft:fireball ~ ~ ~ {Tags:["GlitchShot"]}
execute if score @s RandomValue matches 3 run summon minecraft:wither_skull ~ ~ ~ {Tags:["GlitchShot"]}
execute if score @s RandomValue matches 4 run summon twilightforest:lich_bolt ~ ~ ~ {Tags:["GlitchShot","GlitchShotMotion"]}
execute if score @s RandomValue matches 5 run summon aether:golden_dart ~ ~ ~ {Tags:["GlitchShot","GlitchShotMotion"]}
execute if score @s RandomValue matches 6 run summon aether:enchanted_dart ~ ~ ~ {Tags:["GlitchShot","GlitchShotMotion"]}
execute if score @s RandomValue matches 7 run summon blue_skies:spear ~ ~ ~ {Tags:["GlitchShot","GlitchShotMotion"]}

#Play the right sound, too.
execute if score @s RandomValue matches 0 run playsound minecraft:entity.arrow.shoot hostile @a ~ ~ ~ 3 1
execute if score @s RandomValue matches 1 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 3 1
execute if score @s RandomValue matches 2 run playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 3 1
execute if score @s RandomValue matches 3 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 3 1
execute if score @s RandomValue matches 4 run playsound twilightforest:entity.twilightforest.lich.shoot hostile @a ~ ~ ~ 3 1
execute if score @s RandomValue matches 5 run playsound aether:item.dart_shooter.shoot hostile @a ~ ~ ~ 3 1
execute if score @s RandomValue matches 6 run playsound aether:item.dart_shooter.shoot hostile @a ~ ~ ~ 3 1
execute if score @s RandomValue matches 7 run playsound blue_skies:item.spear.throw hostile @a ~ ~ ~ 3 1

#Make a temporary cloud to shoot at the player. It handles the rest.
execute as @e[tag=GlitchShot,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:final/glitch/attack/line/shoot