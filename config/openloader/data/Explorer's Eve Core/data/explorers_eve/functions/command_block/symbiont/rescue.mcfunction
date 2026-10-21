#Teleports the Symbiont above the player and makes a neat noise.
execute positioned ~ ~6 ~ run kill @e[type=arrow,distance=..4]
execute positioned ~ ~6 ~ run kill @e[type=fireball,distance=..8]
execute unless entity @a[tag=CommandBattling] at @e[tag=CommandBattleActive,limit=1,sort=nearest] run tp @s ~-20 ~ ~
execute at @p[tag=CommandBattling] run tp @s ~ ~10 ~
execute at @s unless block ~ ~ ~ #explorers_eve:air_like run tp @p[tag=CommandBattling]
execute at @s run playsound witherstormmod:withered_symbiont_spawn hostile @a ~ ~ ~ 5 2