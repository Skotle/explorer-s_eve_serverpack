#Spawn loot.
loot spawn ~ ~ ~ loot explorers_eve:final_boss
execute as @e[type=item,limit=1,sort=nearest] at @s run function explorers_eve:final/loot_momentum

#After almost 20 seconds, end.
scoreboard players add @s RandomValue 1
execute if score @s RandomValue matches 375.. run function explorers_eve:final/loot_end