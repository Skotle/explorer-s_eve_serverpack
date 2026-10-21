#For the Symbiont, reset attack stats.
data modify entity @s[type=witherstormmod:withered_symbiont] Smashing set value 0b
data modify entity @s[type=witherstormmod:withered_symbiont] SpellCastingTicks set value 0
data modify entity @s[type=witherstormmod:withered_symbiont] AttackDelay set value 30
data modify entity @s[type=witherstormmod:withered_symbiont] SpellsUsed set value 0

#Also, for the Symbiont, delete spare fireballs and arrows.
execute if entity @s[type=witherstormmod:withered_symbiont] at @s positioned ~ ~6 ~ run kill @e[type=arrow,distance=..12]
execute if entity @s[type=witherstormmod:withered_symbiont] at @s positioned ~ ~6 ~ run kill @e[type=fireball,distance=..16]

#Teleports the mob above the player and makes a neat noise.
effect give @s weakness 8 5 true
tp @s ~ ~12 ~
execute at @s run playsound witherstormmod:withered_symbiont_spawn hostile @a ~ ~ ~ 5 2