#A Symbiont begins to spawn.
tag @w[tag=SymbiontReady] add SymbiontSummoning
data modify entity @w[tag=SymbiontSummoning] SymbiontSummoningCooldown set value 15000
schedule function explorers_eve:symbiont/spawn/success_locate 313t

#Make angry Storm noises.
playsound witherstormmod:command_block_build hostile @a[distance=..200] ~ ~ ~ 25 1 1
