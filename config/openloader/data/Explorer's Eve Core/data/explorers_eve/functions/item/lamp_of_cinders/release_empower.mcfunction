#If empowered, shoot even more and release the spinning ones.
summon minecraft:small_fireball ~ ~1.5 ~ {Tags:["NewFireball","PlayerLampFireball"]}
summon minecraft:small_fireball ~ ~1.5 ~ {Tags:["NewFireball","PlayerLampFireball"]}
summon minecraft:small_fireball ~ ~1.5 ~ {Tags:["NewFireball","PlayerLampFireball"]}
summon minecraft:small_fireball ~ ~1.5 ~ {Tags:["NewFireball","PlayerLampFireball"]}
summon minecraft:small_fireball ~ ~1.5 ~ {Tags:["NewFireball","PlayerLampFireball"]}
execute as @e[tag=NewFireball,limit=1,sort=random,distance=..2] at @s run function explorers_eve:item/lamp_of_cinders/aim_straight
execute as @e[tag=LampRotate,distance=..32] at @s facing entity @p[tag=LampEmpowered] eyes rotated ~90 0 run function explorers_eve:item/lamp_of_cinders/aim_rotate
tag @s remove LampEmpowered