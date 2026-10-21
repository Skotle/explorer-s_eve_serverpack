#Launch explosions towards the player!
tag @r[gamemode=!spectator,distance=16..40] add FormidibladeTarget
execute positioned ~ ~3 ~ facing entity @p[tag=FormidibladeTarget] eyes rotated ~ 0 run function explorers_eve:symbiont/blade/aim
execute positioned ~ ~3 ~ facing entity @p[tag=FormidibladeTarget] eyes rotated ~30 0 run function explorers_eve:symbiont/blade/aim
execute positioned ~ ~3 ~ facing entity @p[tag=FormidibladeTarget] eyes rotated ~-30 0 run function explorers_eve:symbiont/blade/aim
execute positioned ~ ~3 ~ facing entity @p[tag=FormidibladeTarget] eyes rotated ~60 0 run function explorers_eve:symbiont/blade/aim
execute positioned ~ ~3 ~ facing entity @p[tag=FormidibladeTarget] eyes rotated ~-60 0 run function explorers_eve:symbiont/blade/aim
tag @a remove FormidibladeTarget

#Don't forget to reset everything.
scoreboard players reset @s SymbiontBladeCharge
playsound witherstormmod:formidi_blade_decharge hostile @a[distance=..64] ~ ~3 ~ 6 1
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..64] ~ ~ ~ 3 2