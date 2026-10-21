#Spawn an ice crystal. Or two.
summon twilightforest:thrown_ice ~ ~ ~ {Tags:["Grounded","NewIce"]}
execute unless entity @s[tag=IceDuplicate] run summon twilightforest:thrown_ice ~ ~ ~ {Tags:["IceDuplicate","NewIce"]}

execute as @e[tag=NewIce,distance=..5] run function explorers_eve:boss/alpha_yeti/ice_launch
execute unless block ~ ~-1 ~ air run tag @s add Grounded
#execute if entity @s[tag=Grounded] unless entity @e[type=twilightforest:stable_ice_core,distance=..8] run summon twilightforest:stable_ice_core