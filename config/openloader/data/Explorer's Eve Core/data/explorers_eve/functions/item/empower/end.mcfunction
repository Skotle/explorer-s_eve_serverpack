#Despawn everything.
execute unless entity @s[tag=Success] run loot spawn ~ ~0.75 ~ loot explorers_eve:empower_materials
kill @e[type=area_effect_cloud,distance=..0.5]
kill @s