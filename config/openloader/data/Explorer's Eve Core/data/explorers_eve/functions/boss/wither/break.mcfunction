#This gets weird: Clone the surrounding blocks that are witherproof, break everything, and clone witherproof blocks back. /fill destroy really neads a filter.
execute in witherstormmod:bowels run fill 0 200 0 4 202 4 air
execute store success score @s WitherBreak run clone ~-2 ~ ~-2 ~2 ~2 ~2 to witherstormmod:bowels 0 200 0 filtered #minecraft:wither_immune
execute store result score @s BlockCount run execute if blocks ~-2 ~ ~-2 ~2 ~ ~2 ~-2 ~ ~-2 masked
execute if score @s BlockCount matches 1.. if score @s WitherBreak matches 0 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~
fill ~-2 ~ ~-2 ~2 ~2 ~2 air destroy
execute if score @s WitherBreak matches 1 run clone from witherstormmod:bowels 0 200 0 4 202 4 ~-2 ~ ~-2 filtered #minecraft:wither_immune
execute in witherstormmod:bowels run fill 0 200 0 4 202 4 witherstormmod:hardened_flesh_block
scoreboard players set @s WitherBreak 10