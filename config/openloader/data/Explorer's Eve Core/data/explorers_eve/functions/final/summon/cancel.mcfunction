#Some condition wasn't met, so fail to spawn.
execute if score @s Math matches -1 run tellraw @a[distance=..16] [{"text":"This beacon needs to be raised higher up!","color":"light_purple"}]
execute if score @s Math matches -2 run tellraw @a[distance=..16] [{"text":"The ambient energy in this dimension interferes with the Withered Beacon...Try moving it to the Overworld instead.","color":"light_purple"}]
execute if score @s Math matches -3 run tellraw @a[distance=..16] [{"text":"This biome is too watery for a proper fight! Go somewhere else!","color":"light_purple"}]

loot spawn ~ ~1 ~ loot explorers_eve:true_final_battle_summon_materials
kill @s