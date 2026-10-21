#Count minions.
execute store result score @s Math if entity @e[type=twilightforest:lich_minion,distance=..24]

#Try to spawn a minion.
execute unless score @s Math matches 3.. unless entity @s[tag=Phase3,scores={LichShields=0}] run summon twilightforest:lich_minion ~ ~ ~ {Tags:["NewLichMinion"],Motion:[0d,0.25d,0d],Health:15f,Attributes:[{Name:generic.max_health,Base:15}]}

#The minion gets attributes based on phase.
execute if entity @s[tag=Phase3] run attribute @e[tag=NewLichMinion,limit=1,sort=nearest] minecraft:generic.movement_speed modifier add 1d32a04f-3438-15cb-b868-aa41cd7730d7 MinionSpeed 0.075 add

#Launch it slightly.
execute as @e[tag=NewLichMinion,distance=..5] run function explorers_eve:boss/lich/minion_launch