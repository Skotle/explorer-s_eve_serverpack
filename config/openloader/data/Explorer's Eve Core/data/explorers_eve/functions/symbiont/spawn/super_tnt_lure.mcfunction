#A Symbiont begins to spawn.
execute unless entity @e[type=witherstormmod:withered_symbiont,distance=..300] unless entity @w[tag=SymbiontSummoning,distance=..300] run function explorers_eve:symbiont/spawn/super_tnt_summon
tag @w[tag=SymbiontReady] add BombReady

#Super TNT gets absorbed.
function explorers_eve:item/super_tnt/absorb