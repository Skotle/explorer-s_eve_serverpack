#First, make an armor stand wielding a map.
summon minecraft:armor_stand ~ -66 ~ {Tags:["TaintedGemStand"],Marker:1b}
item replace entity @e[tag=TaintedGemStand] weapon.mainhand with minecraft:map

#Depending on dimension and placed block in the center of the ring, decide what to look for.
execute unless dimension minecraft:the_nether unless block ~ ~-1 ~ #explorers_eve:tainted_gem_override run item modify entity @e[tag=TaintedGemStand] weapon.mainhand explorers_eve:locate_panel
execute unless dimension minecraft:the_nether if block ~ ~-1 ~ sandstone run item modify entity @e[tag=TaintedGemStand] weapon.mainhand explorers_eve:locate_desert_temple
execute unless dimension minecraft:the_nether if block ~ ~-1 ~ mossy_cobblestone run item modify entity @e[tag=TaintedGemStand] weapon.mainhand explorers_eve:locate_jungle_temple
execute unless dimension minecraft:the_nether if block ~ ~-1 ~ snow_block run item modify entity @e[tag=TaintedGemStand] weapon.mainhand explorers_eve:locate_snowy_temple
execute unless dimension minecraft:the_nether if block ~ ~-1 ~ prismarine run item modify entity @e[tag=TaintedGemStand] weapon.mainhand explorers_eve:locate_ocean_monument
execute if dimension minecraft:the_nether if block ~ ~-1 ~ quartz_block run item modify entity @e[tag=TaintedGemStand] weapon.mainhand explorers_eve:locate_soul_prison

#Move to data storage, dispose of the stand, and put the data onto a sneaky custom compass.
data modify storage world Decorations set from entity @e[limit=1,tag=TaintedGemStand] HandItems[0].tag.Decorations
kill @e[tag=TaintedGemStand]
item replace entity @s weapon.mainhand with minecraft:compass
item modify entity @s weapon.mainhand explorers_eve:tainted_gem_set
data remove storage world Decorations

#Also make fun effects.
effect give @s wither 4 0
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 0.75
particle dust 1 0 1 1 ~ ~1.25 ~ 0.3 0.7 0.3 10 100
particle dust 1 0 1 1 ~ ~0.25 ~ 1 0.25 1 10 100

#Clear out the dust, with a failsafe just in case the player placed an extra one.
execute if block ~ ~ ~ witherstormmod:tainted_dust run tag @s add PlaceDust
fill ~1 ~ ~1 ~-1 ~ ~-1 air replace witherstormmod:tainted_dust
execute if entity @s[tag=PlaceDust] run setblock ~ ~ ~ witherstormmod:tainted_dust
tag @s[tag=PlaceDust] remove PlaceDust