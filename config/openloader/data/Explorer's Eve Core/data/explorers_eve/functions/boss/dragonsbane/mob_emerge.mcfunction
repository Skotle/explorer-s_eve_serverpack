#Burrow away!
scoreboard players remove @s DragonsbaneDigTime 1
particle block cobblestone ~ ~0.15 ~ 0.3 0.5 0.3 1 10
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1.5
tp @s ~ ~0.03 ~
execute if score @s DragonsbaneDigTime matches ..-1 run function explorers_eve:boss/dragonsbane/mob_end