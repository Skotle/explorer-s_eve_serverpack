#REset the timer based on how much time is left to endure.
execute if score @s GlitchEndureTime matches 501..600 run scoreboard players set @s GlitchAttackTime 24
execute if score @s GlitchEndureTime matches 351..500 run scoreboard players set @s GlitchAttackTime 20
execute if score @s GlitchEndureTime matches 201..350 run scoreboard players set @s GlitchAttackTime 16
execute if score @s GlitchEndureTime matches 101..200 run scoreboard players set @s GlitchAttackTime 12
execute if score @s GlitchEndureTime matches 0..100 run scoreboard players set @s GlitchAttackTime 8

#Make some void vortexes.
summon cataclysm:void_vortex ~ ~ ~ {Tags:["NewVortex"],Lifespan:60}
execute if score @s GlitchEndureTime matches ..400 run summon cataclysm:void_vortex ~ ~ ~ {Tags:["NewVortex"],Lifespan:60}
execute if score @s GlitchEndureTime matches ..200 run summon cataclysm:void_vortex ~ ~ ~ {Tags:["NewVortex"],Lifespan:60}

execute at @r[tag=FinalBattling] run spreadplayers ~ ~ 3 30 false @e[type=cataclysm:void_vortex,tag=NewVortex]
execute as @e[tag=NewVortex] at @s if entity @a[gamemode=!spectator,distance=..3] run function explorers_eve:final/glitch/attack/endure/proximity_move
tag @e remove NewVortex

#Also, spawn explosions.
summon area_effect_cloud ~ ~ ~ {Tags:["TNTMark"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["TNTMark"],Duration:1}
execute if score @s GlitchEndureTime matches ..500 run summon area_effect_cloud ~ ~ ~ {Tags:["TNTMark"],Duration:1}
execute if score @s GlitchEndureTime matches ..300 run summon area_effect_cloud ~ ~ ~ {Tags:["TNTMark"],Duration:1}
execute if score @s GlitchEndureTime matches ..100 run summon area_effect_cloud ~ ~ ~ {Tags:["TNTMark"],Duration:1}
execute at @r[tag=FinalBattling] run spreadplayers ~ ~ 3 24 false @e[tag=TNTMark]
execute as @e[tag=TNTMark] at @s run function explorers_eve:final/glitch/attack/endure/random_height
execute as @e[tag=TNTMark] at @s unless entity @a[gamemode=!spectator,distance=..5] run summon tnt

#Then spawn fireworks!
summon area_effect_cloud ~ ~ ~ {Tags:["FireworkMark"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["FireworkMark"],Duration:1}
execute if score @s GlitchEndureTime matches ..500 run summon area_effect_cloud ~ ~ ~ {Tags:["FireworkMark"],Duration:1}
execute if score @s GlitchEndureTime matches ..300 run summon area_effect_cloud ~ ~ ~ {Tags:["FireworkMark"],Duration:1}
execute if score @s GlitchEndureTime matches ..100 run summon area_effect_cloud ~ ~ ~ {Tags:["FireworkMark"],Duration:1}
execute at @r[tag=FinalBattling] run spreadplayers ~ ~ 3 20 false @e[tag=FireworkMark]
execute as @e[tag=FireworkMark] at @s run function explorers_eve:final/glitch/attack/endure/random_height
execute as @e[tag=FireworkMark] at @s facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^-10 unless entity @a[gamemode=!spectator,distance=..5] run function explorers_eve:final/glitch/firework
execute as @e[tag=FireworkMark] at @s facing entity @p[gamemode=!spectator] eyes positioned ^8 ^ ^4 unless entity @a[gamemode=!spectator,distance=..5] run function explorers_eve:final/glitch/firework
execute as @e[tag=FireworkMark] at @s facing entity @p[gamemode=!spectator] eyes positioned ^-8 ^ ^4 unless entity @a[gamemode=!spectator,distance=..5] run function explorers_eve:final/glitch/firework