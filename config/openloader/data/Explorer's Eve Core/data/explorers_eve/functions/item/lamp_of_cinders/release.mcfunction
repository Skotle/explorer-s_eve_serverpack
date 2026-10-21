#If the timer is high enough and if the player is still holding the lamp, fire!
execute as @e[type=!player,distance=..8,predicate=explorers_eve:on_fire] run data modify entity @s Fire set value 600s

#Shoot fireballs, too!
summon minecraft:small_fireball ~ ~1.5 ~ {Tags:["NewFireball","PlayerLampFireball"]}
summon minecraft:small_fireball ~ ~1.5 ~ {Tags:["NewFireball","PlayerLampFireball"]}
summon minecraft:small_fireball ~ ~1.5 ~ {Tags:["NewFireball","PlayerLampFireball"]}

#If empowered, shoot even more and release the spinning ones.
execute if entity @s[tag=LampEmpowered] run function explorers_eve:item/lamp_of_cinders/release_empower

#Anticheese for easily burning Blue Skies arenas mid-battle. Please don't.
execute if predicate explorers_eve:structure/blue_skies_dungeon run kill @e[tag=NewFireball,distance=..2]

#Lastly, aim fireballs. They don't go exactly straight.
execute as @e[tag=NewFireball,distance=..2] at @s run function explorers_eve:item/lamp_of_cinders/aim_spread