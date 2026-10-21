#Make pretty particles! Only so far away, though.
scoreboard players add @s Math 1
particle minecraft:dust 0 0 0 1.5 ~ ~ ~ 0.15 0.15 0.15 1 5 force
execute if entity @s[scores={Math=15}] run particle minecraft:dust 0.5 0 0 1.5 ~ ~ ~ 0.5 0.5 0.5 1 30 force
execute if entity @s[scores={Math=..14}] positioned ^ ^ ^1 run function explorers_eve:boss/wither/charge_warn
execute if entity @s[scores={Math=15}] run scoreboard players set @s Math 0