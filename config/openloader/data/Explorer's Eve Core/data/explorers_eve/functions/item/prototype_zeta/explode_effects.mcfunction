#Monsters are horribly weakened and fire is scattered around.
effect give @e[type=!player,distance=..8] wither 30 1 true
effect give @e[type=!player,type=!cataclysm:ignis,type=!cataclysm:ender_guardian,distance=..8] blue_skies:deadly_venom 30 0 true
effect give @e[type=!player,type=!cataclysm:ignis,type=!cataclysm:ender_guardian,distance=..8] cataclysm:blazing_brand 30 1 true
effect give @e[type=!player,distance=..8] weakness 30 0 true
effect give @e[type=!player,distance=..8] slowness 30 0 true
execute as @e[type=!player,distance=..8] run data modify entity @s Fire set value 600s
particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 1 5 force @a

#Fire!
scoreboard players set @s Math 12
function explorers_eve:item/prototype_zeta/fire_spawn
execute if predicate explorers_eve:structure/blue_skies_dungeon run kill @e[tag=FireballLaunch,distance=..3]
execute as @e[tag=FireballLaunch,distance=..3] at @s run function explorers_eve:item/prototype_zeta/fire_scatter