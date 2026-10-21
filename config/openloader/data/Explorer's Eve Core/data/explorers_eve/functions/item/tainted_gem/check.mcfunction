#First, do a quick check to see if we need to fail this.
scoreboard players set @s Math 0
execute if dimension explorers_eve:glitch run scoreboard players set @s Math 1
execute if dimension witherstormmod:bowels run scoreboard players set @s Math 1
execute if dimension minecraft:the_nether unless block ~ ~-1 ~ quartz_block run scoreboard players set @s Math 2
execute unless dimension minecraft:the_nether if block ~ ~-1 ~ quartz_block run scoreboard players set @s Math 3

execute if score @s Math matches 0 run function explorers_eve:item/tainted_gem/set
execute unless score @s Math matches 0 run function explorers_eve:item/tainted_gem/fail
scoreboard players reset @s Math