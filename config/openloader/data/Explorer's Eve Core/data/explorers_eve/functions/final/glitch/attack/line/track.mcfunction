#Constantly throw projectiles.
scoreboard players remove @s GlitchLineShoot 1
execute if score @s GlitchLineShoot matches ..0 positioned ~ ~-0.5 ~ run function explorers_eve:final/glitch/attack/line/shoot_prep

#Keep moving, and once it's moved far enough, turn.
execute if score @s GlitchAttackTime matches 2..49 as @e[tag=CommandRide,limit=1,sort=nearest] at @s run tp @s ^ ^ ^0.6
execute if score @s GlitchAttackTime matches 50.. run function explorers_eve:final/glitch/attack/line/turn