#Spawn loot every 8 ticks.
loot spawn ~ ~ ~ loot explorers_eve:tainted_dust
execute as @e[type=item,limit=1,sort=nearest] at @s run function explorers_eve:symbiont/loot_momentum
scoreboard players set @s Math 0