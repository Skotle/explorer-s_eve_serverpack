#Dispose of the marker, and if appropriate, spawn a Formidibomb.
tag @w[tag=BombReady] add BombLit
execute if entity @w[tag=BombReady] run summon witherstormmod:formidibomb ~ ~ ~ {Tags:["SymbiontBomb"],Fuse:2000s,StartingFuse:2000s}
execute if entity @w[tag=BombReady] as @e[tag=SymbiontBomb,limit=1,sort=nearest] at @s run function explorers_eve:symbiont/loot_momentum
kill @s