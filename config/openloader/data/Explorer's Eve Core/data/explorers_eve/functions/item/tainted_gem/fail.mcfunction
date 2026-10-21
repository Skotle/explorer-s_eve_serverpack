#Tell the player what went wrong.
execute if score @s Math matches 0 run tellraw @s [{"text":"This message should not appear. I'll be afraid if it does.","color":"light_purple"}]
execute if score @s Math matches 1 run tellraw @s [{"text":"This dimension has no panels to find!","color":"light_purple"}]
execute if score @s Math matches 2 run tellraw @s [{"text":"This dimension has no panels to find...But perhaps there's something else?","color":"light_purple"}]
execute if score @s Math matches 3 run tellraw @s [{"text":"This keystone has no effect here.","color":"light_purple"}]

#Also make fun effects. Return the dust on this one.
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 0.75
particle dust 1 0 1 1 ~ ~1.25 ~ 0.3 0.7 0.3 10 100
particle dust 1 0 1 1 ~ ~0.25 ~ 1 0.25 1 10 100
fill ~1 ~ ~1 ~-1 ~ ~-1 air destroy