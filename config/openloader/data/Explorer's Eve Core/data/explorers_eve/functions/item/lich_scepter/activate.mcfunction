#Summon shields and zombies!
tag @s add LichScepterActive

twilightforest shield @s set 5
summon twilightforest:loyal_zombie ~ ~ ~ {Tags:[ScepterZombie]}
summon twilightforest:loyal_zombie ~ ~ ~ {Tags:[ScepterZombie]}
summon twilightforest:loyal_zombie ~ ~ ~ {Tags:[ScepterZombie]}
summon twilightforest:loyal_zombie ~ ~ ~ {Tags:[ScepterZombie]}
summon twilightforest:loyal_zombie ~ ~ ~ {Tags:[ScepterZombie]}
execute as @e[tag=ScepterZombie] at @s run function explorers_eve:item/lich_scepter/minion_effects

#Effects!
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 1.25