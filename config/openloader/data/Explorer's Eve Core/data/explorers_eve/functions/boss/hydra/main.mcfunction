#Main manager for Hydra changes. First, initialize.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/hydra/activate

#Keep track of its health, and don't let it get stuck on a fraction.
execute store result score @s Health run data get entity @s Health
execute if score @s Health matches 0 as @p[gamemode=!spectator,distance=..40] run kill @e[type=twilightforest:hydra,limit=1,sort=nearest,distance=..1]

#No healing out of phase 3.
execute if entity @s[tag=Phase3,scores={Health=261..}] run data modify entity @s Health set value 260

#Make sure it gets all 7 heads. Sometimes it doesn't cooperate.
execute unless entity @s[tag=Phase1] run data modify entity @s NumHeads set value 7b

#Mining fatigue for all nearby players to reduce cheesing. This poor thing needs the help.
execute unless entity @s[tag=FinalBattle] as @a[gamemode=!spectator,distance=..40] at @s run function explorers_eve:world/mining_fatigue

#Phase transitions.
execute if entity @s[tag=Phase1,scores={Health=..110}] run function explorers_eve:boss/hydra/phase_2
execute if entity @s[tag=Phase2,scores={Health=..250}] run function explorers_eve:boss/hydra/phase_3

#All phases: Hydra spawns firejets under players. This happens faster as the fight goes on.
execute if entity @s[tag=Phase1] run scoreboard players remove @s HydraFire 1
execute if entity @s[tag=Phase2] run scoreboard players remove @s HydraFire 2
execute if entity @s[tag=Phase3] run scoreboard players remove @s HydraFire 3
execute if entity @s[scores={HydraFire=..-1}] at @r[distance=..32,nbt={OnGround:1b}] run function explorers_eve:boss/hydra/firejet_spawn

#Firejets go out after a while.
scoreboard players add @e[tag=HydraFire,distance=..80] HydraFire 1
execute at @e[tag=HydraFire,distance=..80] run setblock ~ ~ ~ lava
execute as @e[tag=HydraFire,distance=..80,scores={HydraFire=1800..}] at @s run function explorers_eve:boss/hydra/firejet_disable

#Phase 2: Hydra tosses lava around. In phase 3, this happens faster.
execute if entity @s[tag=Phase2] run scoreboard players remove @s HydraLava 1
execute if entity @s[tag=Phase3] run scoreboard players remove @s HydraLava 2
execute if entity @s[scores={HydraLava=..-1}] run function explorers_eve:boss/hydra/lava

#The lava carries markers, and eventually, the lava fixes itself.
scoreboard players add @e[tag=HydraLava,distance=..80] HydraLava 2
execute if entity @s[tag=Phase3] run scoreboard players add @e[tag=HydraLava,distance=..80] HydraLava 1
execute as @e[tag=HydraLava,distance=..80,scores={HydraLava=1200..}] at @s run function explorers_eve:boss/hydra/lava_drain

#Firejets and lava make particles.
execute as @e[tag=HydraFire,distance=..80,scores={HydraFire=..50}] at @s align xz positioned ~0.5 ~ ~0.5 run particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0 2 0 0.1 0 force @a[distance=..40]
execute as @e[tag=HydraLava,distance=..80,scores={HydraLava=..120}] at @s run particle minecraft:flame ~ ~2 ~ 0 2 0 0.1 0 force @a[distance=..40]
execute as @e[tag=HydraLava,distance=..80,scores={HydraLava=..120}] at @s run particle minecraft:flame ~ ~2 ~ 0 2 0 0.1 3 force @a[distance=..40]

#Phase 3: Hydra bombs cause fiery chaos.
execute if entity @s[tag=Phase3] as @e[type=twilightforest:hydra_mortar,distance=..80] at @s run function explorers_eve:boss/hydra/mortar
execute if entity @s[tag=FinalBattle] as @e[tag=Fireball,distance=..80] at @s run summon minecraft:small_fireball ~ ~1 ~ {power:[0d,-0.25d,0d]}

#Just in case someone tries to be silly and move it.
tp @e[tag=HydraTracker,limit=1,sort=nearest,distance=..40] @s