#Phase transition!
tag @s remove Phase2
tag @s add Phase3
tag @s add ShieldsActive

playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 2 1.5
playsound twilightforest:item.twilightforest.scepter.pearl hostile @a ~ ~ ~ 1 1.5
execute store result entity @s Health float 0.5 run attribute @s minecraft:generic.max_health get
data modify entity @s ShieldStrength set value 6
data modify entity @s MinionsToSummon set value 0