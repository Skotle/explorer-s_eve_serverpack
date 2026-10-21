#Main manager for Command Block rematch effects.
#Players that try to help just can't.
execute as @a[tag=!FinalBattling,distance=..128] at @s run function explorers_eve:final/player/late_start

#Despawn if all players die.
execute unless entity @a[gamemode=!spectator,tag=FinalBattling,distance=..200] unless entity @s[tag=CommandRematchEscape] run function explorers_eve:final/despawn

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Check if it's been hurt.
execute if score @s Health < @s HealthLimit unless entity @s[tag=Despawning] run function explorers_eve:final/command_block/injury

#Don't hide underground.
execute store result score @s BlockCount run execute if blocks ~ ~ ~ ~ 319 ~ ~ ~ ~ masked
execute if score @s BlockCount matches 1.. run scoreboard players add @s CommandSurfaceTime 1
execute if score @s BlockCount matches 0 run scoreboard players reset @s CommandSurfaceTime
execute if score @s CommandSurfaceTime matches 100.. run function explorers_eve:final/command_block/surface_teleport

#Skull burst effects.
execute as @e[tag=RematchSkullSource,distance=..200] at @s run function explorers_eve:final/command_block/attack/skull_burst_timer

#Scattershot effects.
execute if entity @s[tag=ScatterActive] run function explorers_eve:final/command_block/attack/scatter_main

#Time to spawn mobs? Then spawn them!
execute if entity @s[tag=SpawningMobs] run function explorers_eve:final/command_block/spawn_timer

#The Lich has more clones and potions.
execute if entity @s[tag=Phase2] as @e[type=twilightforest:lich,tag=FinalBattle] at @s run function explorers_eve:final/command_block/lich/main

#Lich minions are strong.
execute if entity @s[tag=Phase2] as @e[type=twilightforest:lich_minion,tag=!CommandMinion,distance=..200] at @s run function explorers_eve:final/command_block/minion_buff

#The Warden is mad.
execute if entity @s[tag=Phase3] as @e[type=warden,tag=FinalBattle] at @s run function explorers_eve:final/command_block/warden/main

#Golems are strong.
execute if entity @s[tag=Phase4] as @e[type=blue_skies:artificial_golem,tag=!CommandMinion,distance=..200] at @s run function explorers_eve:final/command_block/minion_buff

#Alchemist and golem arrows are much stronger.
execute if entity @s[tag=Phase4] as @e[type=arrow,tag=!ArrowChecked,distance=..100] at @s run function explorers_eve:final/command_block/arrow_check

#Blue Skies Illagers don't heal.
execute if entity @s[tag=Phase4] as @e[type=#explorers_eve:blinding_boss,tag=FinalBattle,predicate=explorers_eve:regeneration] run function explorers_eve:final/command_block/prevent_healing

#Blindness doesn't happen.
execute as @a[tag=FinalBattling,predicate=explorers_eve:blindness] run function explorers_eve:boss/blinding/darkness

#No loot from the Blue Skies bosses!
execute if entity @s[tag=SummonerLootReady] at @e[type=minecraft:firework_rocket,limit=1,sort=nearest,tag=!IllagerLoot] run function explorers_eve:final/command_block/clear_summoner_loot
execute if entity @s[tag=AlchemistLootReady] at @e[type=minecraft:firework_rocket,limit=1,sort=nearest,tag=!IllagerLoot] run function explorers_eve:final/command_block/clear_alchemist_loot
execute if entity @s[tag=SummonerLoot] unless entity @e[type=blue_skies:summoner,tag=FinalBattle] run tag @s add SummonerLootReady
execute if entity @s[tag=AlchemistLoot] unless entity @e[type=blue_skies:alchemist,tag=FinalBattle] run tag @s add AlchemistLootReady

#Time for the real battle? Then levitate away!
execute if entity @s[tag=CommandRematchEscape] run function explorers_eve:final/command_block/escape

#If the barrier is up, no hurting! Attacks are handled in here, too.
execute if entity @s[tag=BarrierActive] run function explorers_eve:final/command_block/barrier/main

#No respawning the tentacles!
execute if entity @e[type=witherstormmod:tentacle,distance=..8] run function explorers_eve:final/command_block/remove_tentacles

#No bombs!
execute as @e[type=#explorers_eve:bomb_distraction,distance=..300,tag=!DistractionChecked] at @s run function explorers_eve:item/bomb_defuse

#Water freezes when the ride touches it. Yes, this is ripped right from the Symbiont. It works fine.
execute as @e[tag=CommandRide,limit=1,sort=nearest] at @s if block ~ ~ ~ #explorers_eve:liquid run function explorers_eve:symbiont/freeze

#Lastly, keep up with the ride.
execute at @e[tag=CommandRide,limit=1,sort=nearest] run tp @s ~ ~ ~