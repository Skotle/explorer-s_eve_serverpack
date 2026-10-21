#Fire crystals are slower.
tag @s add FireCrystal
scoreboard players set @s RandomRange 8
function explorers_eve:random
execute if score @s RandomValue matches 0 run data merge entity @s {Motion:[0.05d,0.1d,0.05d],XSpeed:0.05d,YSpeed:0.1d,ZSpeed:0.05d}
execute if score @s RandomValue matches 1 run data merge entity @s {Motion:[-0.05d,0.1d,0.05d],XSpeed:-0.05d,YSpeed:0.1d,ZSpeed:0.05d}
execute if score @s RandomValue matches 2 run data merge entity @s {Motion:[0.05d,0.1d,-0.05d],XSpeed:0.05d,YSpeed:0.1d,ZSpeed:-0.05d}
execute if score @s RandomValue matches 3 run data merge entity @s {Motion:[-0.05d,0.1d,-0.05d],XSpeed:-0.05d,YSpeed:0.1d,ZSpeed:-0.05d}
execute if score @s RandomValue matches 4 run data merge entity @s {Motion:[0.05d,-0.1d,0.05d],XSpeed:0.05d,YSpeed:-0.1d,ZSpeed:0.05d}
execute if score @s RandomValue matches 5 run data merge entity @s {Motion:[-0.05d,-0.1d,0.05d],XSpeed:-0.05d,YSpeed:-0.1d,ZSpeed:0.05d}
execute if score @s RandomValue matches 6 run data merge entity @s {Motion:[0.05d,-0.1d,-0.05d],XSpeed:0.05d,YSpeed:-0.1d,ZSpeed:-0.05d}
execute if score @s RandomValue matches 7 run data merge entity @s {Motion:[-0.05d,-0.1d,-0.05d],XSpeed:-0.05d,YSpeed:-0.1d,ZSpeed:-0.05d}
#execute store result entity @s Motion[0] double 0.15 run data get entity @s Motion[0]
#execute store result entity @s Motion[1] double 0.2 run data get entity @s Motion[1]
#execute store result entity @s Motion[2] double 0.15 run data get entity @s Motion[2]
#execute store result entity @s XSpeed double 0.15 run data get entity @s XSpeed
#execute store result entity @s YSpeed double 0.2 run data get entity @s YSpeed
#execute store result entity @s ZSpeed double 0.15 run data get entity @s ZSpeed