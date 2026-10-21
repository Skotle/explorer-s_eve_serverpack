#Pick between missiles or not-missiles.
scoreboard players set @s RandomRange 4
function explorers_eve:random
execute if score @e[type=cataclysm:the_harbinger,limit=1,sort=nearest] Health matches ..150 run scoreboard players set @s RandomValue 0

#Spawn projectiles and aim!
execute if score @s RandomValue matches 0..1 run summon cataclysm:wither_missile ~ ~1 ~ {Tags:["NewMissile"]}
execute if score @s RandomValue matches 2..3 run summon cataclysm:wither_howitzer ~ ~1 ~ {Tags:["NewHowitzer"],radius:3f,Motion:[0d,0.5d,0d]}
execute if score @e[type=cataclysm:the_harbinger,limit=1,sort=nearest] Health matches ..250 run summon cataclysm:wither_howitzer ~ ~1 ~ {Tags:["NewHowitzer"],radius:3f,Motion:[0d,0.5d,0d]}
execute if score @e[type=cataclysm:the_harbinger,limit=1,sort=nearest] Health matches ..150 run summon cataclysm:wither_howitzer ~ ~1 ~ {Tags:["NewHowitzer"],radius:3f,Motion:[0d,0.5d,0d]}
execute as @e[tag=NewMissile] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/harbinger/crystal_aim
execute as @e[tag=NewHowitzer] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/harbinger/crystal_aim_random
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 0.9

#Reset the timer based on boss health.
scoreboard players set @s HarbingerMissileTime 20
execute if score @e[type=cataclysm:the_harbinger,limit=1,sort=nearest] Health matches ..400 run scoreboard players remove @s HarbingerMissileTime 2
execute if score @e[type=cataclysm:the_harbinger,limit=1,sort=nearest] Health matches ..300 run scoreboard players remove @s HarbingerMissileTime 2
execute if score @e[type=cataclysm:the_harbinger,limit=1,sort=nearest] Health matches ..200 run scoreboard players remove @s HarbingerMissileTime 2
execute if score @e[type=cataclysm:the_harbinger,limit=1,sort=nearest] Health matches ..100 run scoreboard players remove @s HarbingerMissileTime 2
