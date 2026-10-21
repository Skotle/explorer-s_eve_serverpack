#Make a noise, make a line of warning particles, and shoot a skull at whoever's closest.
scoreboard players set @s WitherShoot 10
execute if entity @s[tag=Phase2] run scoreboard players remove @s WitherShoot 3
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] eyes
playsound entity.wither.shoot hostile @a ~ ~ ~ 3 1
summon minecraft:wither_skull ~ ~2.5 ~ {Tags:["WitherSkull","NewSkull"],LeftOwner:0b}
execute as @e[tag=NewSkull] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/wither/skull