#When there are no crystals left, mark that.
execute positioned 0 100 0 if entity @a[distance=..200] unless entity @e[type=end_crystal,distance=..200] run tag @s add CrystalsDestroyed

#If the dragon exists, track its health.
execute store result score @s Health run data get entity @e[type=ender_dragon,limit=1,sort=nearest] Health

#Below 25% health, projectiles are banned.
execute if score @s Health matches ..50 as @e[type=#explorers_eve:banned_dragon_projectiles,distance=..500] at @s unless entity @a[distance=..8] run function explorers_eve:boss/dragon/ban_projectile

#No bombs!
execute as @e[type=#explorers_eve:bomb_distraction,distance=..300,tag=!DistractionChecked] at @s run function explorers_eve:item/bomb_defuse

#Activates when the dragon dies.
execute unless entity @e[type=ender_dragon,distance=0..] run function explorers_eve:boss/dragon/death