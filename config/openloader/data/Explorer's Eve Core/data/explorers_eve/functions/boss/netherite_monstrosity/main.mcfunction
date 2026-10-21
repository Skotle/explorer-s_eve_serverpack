#Main manager for Netherite Monstrosity changes.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/netherite_monstrosity/activate

#Keep track of its health.
execute store result score @s Health run data get entity @s Health
execute if score @s Health matches 0 as @p[gamemode=!spectator,distance=..40] run kill @e[type=cataclysm:netherite_monstrosity,limit=1,sort=nearest,distance=..1]

#Phase transitions.
execute if entity @s[tag=Phase1,scores={Health=..400}] run tag @s add Phase2Wait
execute if entity @s[tag=Phase2,scores={Health=..260}] run tag @s add Phase3Wait
execute if entity @s[tag=Phase3,scores={Health=..150}] at @e[tag=NetheriteMonstrosityCore,limit=1,sort=nearest] run function explorers_eve:boss/netherite_monstrosity/phase_4

#The transition between phases takes a while.
execute if entity @s[tag=Phase2Wait] run function explorers_eve:boss/netherite_monstrosity/phase_2_transition
execute if entity @s[tag=Phase3Wait] run function explorers_eve:boss/netherite_monstrosity/phase_3_transition

#Lava bombs are nerfed into fireballs.
execute as @e[type=cataclysm:lava_bomb,distance=..40] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/netherite_monstrosity/fireball_spawn

#Mining fatigue for all nearby players to reduce cheesing.
execute unless entity @s[scores={Health=..1}] unless entity @s[tag=FinalBattle] as @a[gamemode=!spectator,distance=..32] at @s run function explorers_eve:world/mining_fatigue

#No easily freezing lava!
execute as @a[distance=..32] at @s if block ~ ~-1 ~ aether:unstable_obsidian run fill ~5 ~-2 ~5 ~-5 ~1 ~-5 aether:unstable_obsidian[age=3] replace aether:unstable_obsidian
execute if entity @s[tag=Phase2] run fill ~9 ~-2 ~9 ~-9 ~ ~-9 aether:unstable_obsidian[age=3] replace obsidian
execute if entity @s[tag=Phase3] run fill ~4 ~-2 ~4 ~-4 ~ ~-4 aether:unstable_obsidian[age=3] replace obsidian

#Hint if the player takes too long in phase 1.
execute if entity @s[tag=Phase1] run function explorers_eve:boss/netherite_monstrosity/hint

#Fireballs are the WORST.
execute as @e[tag=MonstrousFireball,distance=..40] at @s run summon minecraft:small_fireball ~ ~1 ~ {power:[0d,-0.25d,0d]}
execute as @e[tag=MonstrousFireball,distance=..40] at @s at @a[distance=..2] run summon minecraft:small_fireball ~ ~1 ~ {power:[0d,-0.25d,0d]}

#In phases 2 and 3, spawn mobs.
execute if entity @s[tag=Phase2] run scoreboard players remove @s MonstrosityTime 1
execute if entity @s[tag=Phase3] run scoreboard players remove @s MonstrosityTime 1
execute if entity @s[tag=FinalBattle,scores={Health=30..}] run scoreboard players remove @s MonstrosityTime 2
execute if entity @s[scores={MonstrosityTime=..-1}] at @e[tag=NetheriteMonstrosityCore,limit=1,sort=nearest] run function explorers_eve:boss/netherite_monstrosity/mob_start

#Markers make lava bubbles, then they erupt.
execute if entity @s[tag=FinalBattle,scores={Health=..30}] run scoreboard players add @e[tag=MonstrosityMobMark] MonstrosityTime 99
execute as @e[tag=MonstrosityMobMark,distance=..200] at @s run function explorers_eve:boss/netherite_monstrosity/mob_timer

#In phase 4, make particles.
execute if entity @s[tag=Phase4,tag=!FinalBattle] run particle minecraft:lava ~ ~3 ~ 2 1 2 0 2