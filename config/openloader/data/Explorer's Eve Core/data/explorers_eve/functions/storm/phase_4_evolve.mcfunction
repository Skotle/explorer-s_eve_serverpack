#Finally evolve to phase 5.
tag @s remove Phase4Evolving
tag @s remove Phase4Progress
tag @s add Phase5Chase
scoreboard players reset @s EvolutionTime
witherstormmod phase set @s 5
witherstormmod ultimateTarget distractions makeFocused @s
witherstormmod config server set server.misc.flyingHeight 50
attribute @s minecraft:generic.attack_damage modifier add 1533d04f-3438-43ab-b968-ab31de8133d7 StormDamage 6 add