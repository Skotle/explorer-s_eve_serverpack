#Reset timer.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s SorcererArcTime = @s RandomValue
scoreboard players add @s SorcererArcTime 100

#Then, depending on which arc spawned the boss, run an effect.
execute if entity @e[tag=SorcererDusk,distance=..250] anchored eyes facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/sorcerer/potion_spawn
execute if entity @e[tag=SorcererEthereal,distance=..250] at @r[gamemode=!spectator,distance=..128] run function explorers_eve:boss/sorcerer/lightning_mark