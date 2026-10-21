#The marker is summoned at battle_start. It constantly teleports to the Symbiont, and if it's not there, death effects happen.
tp @e[type=witherstormmod:withered_symbiont,limit=1,sort=nearest]
execute unless entity @e[type=witherstormmod:withered_symbiont,distance=..128] run function explorers_eve:symbiont/despawn