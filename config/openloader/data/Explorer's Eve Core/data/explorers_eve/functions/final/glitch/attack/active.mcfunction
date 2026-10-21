#Whatever attack it's using, do that.
scoreboard players add @s GlitchAttackTime 1

execute if entity @s[tag=FireballActive] run function explorers_eve:final/glitch/attack/fireball/timer
execute if entity @s[tag=LineActive] run function explorers_eve:final/glitch/attack/line/track
execute if entity @s[tag=ClusterActive] run function explorers_eve:final/glitch/attack/cluster/timer
execute if entity @s[tag=BombActive] run function explorers_eve:final/glitch/attack/bomb/timer
execute if entity @s[tag=TNTActive] if score @s GlitchAttackTime matches 5.. run function explorers_eve:final/glitch/attack/tnt/timer

execute if entity @s[tag=!FireballActive,tag=!LineActive,tag=!ClusterActive,tag=!BombActive,tag=!TNTActive] run tag @s remove GlitchAttacking