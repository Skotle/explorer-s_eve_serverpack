#Destroy the boat!
kill @e[type=#explorers_eve:boat,limit=1,sort=nearest,distance=..4]
data modify entity @s Motion[1] set value 0.55d
particle block oak_planks ~ ~0.15 ~ 0.3 0.5 0.3 1 10
playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 1 1.15