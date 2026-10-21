#Main manager for Summoner/Alchemist changes.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/blinding/activate

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Phase transition.
execute if score @s[tag=Phase1] Health <= @s HealthLimit run function explorers_eve:boss/blinding/phase_2

#Revert from phase 2 if no players are in the arena.
execute if entity @s[tag=Phase2] positioned ~-20 ~-4 ~-20 unless entity @a[gamemode=!spectator,dx=40,dy=16,dz=40] run function explorers_eve:boss/blinding/deactivate

#Alchemist puddles are less annoying.
execute if entity @s[type=blue_skies:alchemist,tag=!FinalBattle] as @e[type=minecraft:area_effect_cloud,distance=..2.5,tag=!PotionFading] run function explorers_eve:boss/blinding/potion_fade

#Ice Bombs are disappointing.
execute as @e[type=twilightforest:thrown_ice,distance=..32] at @s run function explorers_eve:item/ice_staff/melt_ice_bomb

#In phase 2, add an extra attack.
scoreboard players remove @s[tag=Phase2] BlindingTime 1
execute if score @s BlindingTime matches ..-1 if entity @s[type=blue_skies:summoner] at @e[tag=BlindingTracker,limit=1,sort=nearest] run function explorers_eve:boss/blinding/potion_spawn
execute if score @s BlindingTime matches ..-1 if entity @s[type=blue_skies:alchemist] at @e[tag=BlindingTracker,limit=1,sort=nearest] run function explorers_eve:boss/blinding/spawn_start

#Run timers until golems spawn.
execute as @e[tag=SpawnReady,distance=..40] at @s run function explorers_eve:boss/blinding/spawn_timer

#Summoner uses Bad Luck puddles to damage players and heal minions.
execute as @a[predicate=explorers_eve:bad_luck,distance=..256] run effect give @s instant_damage 1 0
execute as @e[type=blue_skies:artificial_golem,predicate=explorers_eve:bad_luck,distance=..256] run effect give @s instant_health 1 1
execute if predicate explorers_eve:bad_luck run effect give @s instant_health 1 0