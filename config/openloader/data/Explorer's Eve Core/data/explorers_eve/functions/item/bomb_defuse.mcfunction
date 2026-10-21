#No explosions!
particle dust 1 1 1 1 ~ ~.5 ~ 0.3 0.3 0.3 0.05 50
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 1 1.5
loot spawn ~ ~0.5 ~ loot witherstormmod:blocks/super_tnt
data modify entity @e[type=item,distance=..1,limit=1,sort=nearest] Health set value 99999
kill @s