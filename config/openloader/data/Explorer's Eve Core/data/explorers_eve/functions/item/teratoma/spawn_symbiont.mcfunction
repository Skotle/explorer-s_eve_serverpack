#Begin the spawning process.
tag @w[scores={StormPhase=5..}] add SymbiontSummoning
data modify entity @w[tag=SymbiontSummoning] SymbiontSummoningCooldown set value 15000
schedule function explorers_eve:symbiont/spawn/success_locate 313t

#Pretty lights!
playsound blue_skies:entity.alchemist.prepare_conversion player @a ~ ~ ~ 1 1.5
playsound blue_skies:entity.alchemist.prepare_blindness player @a ~ ~ ~ 1 1.5
playsound blue_skies:entity.summoner.prepare_attack player @a ~ ~ ~ 1 1.5
playsound witherstormmod:command_block_build hostile @a[distance=..200] ~ ~ ~ 25 1 1
particle blue_skies:star_flare 1 0 1 ~ ~1 ~ 0.25 0.5 0.25 0.1 100