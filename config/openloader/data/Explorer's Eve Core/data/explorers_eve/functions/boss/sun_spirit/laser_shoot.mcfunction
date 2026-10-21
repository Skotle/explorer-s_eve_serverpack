#Laser!
particle minecraft:dust 0.5 0 0 1.5 ~ ~ ~ 0.1 0.1 0.1 1 2
execute if score @s SunSpiritLaserTime matches 42.. run particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.02 3
execute if score @s SunSpiritLaserTime matches 42.. as @a[distance=..2] run damage @s 15 minecraft:explosion by @e[tag=SunSpiritActive,limit=1,sort=nearest]
execute if entity @s[tag=!FinalBattle,distance=..20] positioned ^ ^ ^0.5 run function explorers_eve:boss/sun_spirit/laser_shoot
execute if entity @s[tag=FinalBattle,distance=..40] positioned ^ ^ ^0.5 unless block ~ ~ ~ witherstormmod:hardened_flesh_block run function explorers_eve:boss/sun_spirit/laser_shoot