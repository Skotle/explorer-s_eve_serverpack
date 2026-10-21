#When Super TNT is lit near a phase 5.5 Wither Storm, it provokes the Symbiont into spawning.
execute if entity @w[tag=SymbiontReady,tag=!BombReady,distance=..250] align xyz run function explorers_eve:symbiont/spawn/super_tnt_lure

#Sometimes, the Wither Storm absorbs Super TNT to prevent a distraction.
execute if entity @w[tag=Phase6Chase,distance=..350] align xyz run function explorers_eve:item/super_tnt/absorb
execute if entity @w[tag=Resummoned,distance=..350] align xyz run function explorers_eve:item/super_tnt/absorb
execute if entity @e[type=witherstormmod:withered_symbiont,tag=RushMode,distance=..500] align xyz run function explorers_eve:item/super_tnt/absorb