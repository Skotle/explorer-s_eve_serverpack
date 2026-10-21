#Mark a single fireball.
scoreboard players reset @s SoulCannonUsed
execute if entity @w[distance=..200] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:40,Tags:["SoulDistractMark"]}
ride @e[tag=SoulDistractMark,limit=1,sort=nearest,distance=..2] mount @e[type=dungeons_plus:soul_fireball,limit=1,sort=random,distance=..2]

#But if empowered, be silly!
execute if predicate explorers_eve:empowered_soul_cannon as @e[type=dungeons_plus:soul_fireball,distance=..2] run function explorers_eve:item/soul_cannon/empower

#Also, sorry, inflict hunger.
effect give @s minecraft:hunger 1 80 true