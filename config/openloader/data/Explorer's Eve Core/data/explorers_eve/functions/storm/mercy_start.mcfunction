#Don't chase players. If it's not already distracted, distract it anew and tag it appropriately.
witherstormmod ultimateTarget chase stop @s
witherstormmod ultimateTarget distractions makeDistracted @s
tag @s remove StormMercyWait
tag @s add StormMercyDistracted
scoreboard players set @s DeathMercy 0
scoreboard players set @s StormAttackWait 1250