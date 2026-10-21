#Summons a Symbiont at the Command Block.
execute unless entity @e[type=witherstormmod:withered_symbiont,distance=..128] run summon witherstormmod:withered_symbiont ~ ~ ~ {IsNonBossMode:1,Attributes:[{Name:generic.max_health,Base:30}],Health:30}
tag @s remove SymbiontSpawning
scoreboard players reset @s CommandSymbiontTime