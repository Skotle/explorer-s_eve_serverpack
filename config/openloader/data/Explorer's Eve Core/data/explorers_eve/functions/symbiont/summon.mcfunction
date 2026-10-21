#Count up a timer for Storm skulls, and also summon tentacles if that isn't already done.
execute unless entity @s[tag=Tentacles] run function explorers_eve:symbiont/tentacles

#Every now and then, the WIther Storm supports.
scoreboard players remove @s SymbiontSkullWait 1
execute if score @s SymbiontSkullWait matches 1 as @w[tag=SymbiontHelp] at @s run function explorers_eve:storm/face_player
execute if score @s SymbiontSkullWait matches 1 if entity @w[tag=SymbiontHelp,scores={StormPhase=6..}] as @e[type=witherstormmod:wither_storm_segment,sort=nearest,limit=2] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute if score @s SymbiontSkullWait matches ..0 run function explorers_eve:symbiont/summon_reset