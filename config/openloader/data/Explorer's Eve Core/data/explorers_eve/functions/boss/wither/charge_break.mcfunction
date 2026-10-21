#Tear up the world! Only so far away, though.
scoreboard players add @s Math 1
function explorers_eve:boss/wither/break
particle minecraft:explosion_emitter
effect give @a[distance=..4] instant_damage 1 1
execute if entity @s[scores={Math=..14}] positioned ^ ^ ^1 run function explorers_eve:boss/wither/charge_break
execute if entity @s[scores={Math=15}] run scoreboard players set @s Math 0