#Clear up data from the early phases.
witherstormmod config server set server.flaming_skulls.flamingSkullExplosionSize default
witherstormmod consumedEntities lock @s
data modify entity @s Heads.0.Hits set value 0
scoreboard players reset @s WitherCharge
scoreboard players reset @s WitherBreak
scoreboard players reset @s EvolutionTime
tag @s remove Phase4ChasePrep