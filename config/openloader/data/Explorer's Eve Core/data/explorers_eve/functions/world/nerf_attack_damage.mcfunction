#Nerf mob attack damage.
execute if entity @s[type=twilightforest:kobold] run attribute @s minecraft:generic.attack_damage modifier add 1d53604f-3438-43cb-b668-ad31de8430d7 LessDamage -2 add
execute if entity @s[type=twilightforest:redcap] run attribute @s minecraft:generic.attack_damage modifier add 1d53604f-3438-43cb-b668-ad31de8430d7 LessDamage -2 add
execute if entity @s[type=twilightforest:redcap_sapper] run attribute @s minecraft:generic.attack_damage modifier add 1d53604f-3438-43cb-b668-ad31de8430d7 LessDamage -2 add
execute if entity @s[type=twilightforest:pinch_beetle] run attribute @s minecraft:generic.attack_damage modifier add 1d53604f-3438-43cb-b668-ad31de8430d7 LessDamage -2 add
attribute @s minecraft:generic.attack_damage modifier add 1d53604f-3438-43cb-b668-ad31de8430d7 LessDamage -3 add
tag @s add DamageNerfed