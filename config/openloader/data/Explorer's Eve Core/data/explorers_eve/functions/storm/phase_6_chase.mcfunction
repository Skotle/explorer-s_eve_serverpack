#Force the Storm to chase the player.
witherstormmod ultimateTarget chase begin @s
data modify entity @s TargetRunawayAttempts set value 0
execute as @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] run data merge entity @s {Heads:{0:{InjuryTime:50000},1:{InjuryTime:50000},2:{InjuryTime:50000}}}
execute as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest] run attribute @s minecraft:generic.attack_damage modifier add 1533d04f-3438-43ab-b968-ab31de8133d7 StormDamage 8 add
team join NoInfighting @e[type=#explorers_eve:wither_storm_part]
scoreboard players set @s StormAttackWait 1000
scoreboard players reset @s EvolutionTime
tag @s add Phase6Chase
tag @s remove SymbiontReady
tag @s remove BombReady
tag @s remove BombLit
tag @s remove PlayDeadInjured
tag @s remove Injured

stopsound @a[tag=ResummonMusic] record explorers_eve:resummon_theme_3
scoreboard players set @a[tag=ResummonMusic,distance=..500] MusicTime 0