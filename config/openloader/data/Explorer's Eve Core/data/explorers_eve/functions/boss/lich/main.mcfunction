#Main manager for Lich changes. It's initialized every second because of shadow clones.
#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Track shields.
execute if entity @s[tag=ShieldsActive] run function explorers_eve:boss/lich/shield_track

#Phase transitions.
execute if entity @s[tag=Phase1,nbt={MinionsToSummon:0}] unless entity @e[type=twilightforest:lich_minion,distance=..20] run function explorers_eve:boss/lich/phase_2
execute if entity @s[tag=Phase1,scores={Health=..50}] run function explorers_eve:boss/lich/phase_2
execute if entity @s[tag=Phase2,scores={Health=..50}] run function explorers_eve:boss/lich/phase_3

#No lava cheese.
execute if block ~ ~ ~ #explorers_eve:liquid run fill ~10 ~5 ~10 ~-10 ~-1 ~-10 air replace #explorers_eve:liquid

#Firebolts always turn into small fireballs.
execute as @e[type=twilightforest:lich_bomb,distance=..40] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/lich/fireball_nerf

#After phase 1, the Lich can throw potions.
execute unless entity @s[tag=Phase1] run scoreboard players remove @s LichTime 1
execute if entity @s[tag=Phase3] run scoreboard players remove @s LichTime 1
execute if score @s Health matches ..50 run scoreboard players remove @s LichTime 1
execute if entity @s[scores={LichTime=..-1}] anchored eyes facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/lich/potion_spawn