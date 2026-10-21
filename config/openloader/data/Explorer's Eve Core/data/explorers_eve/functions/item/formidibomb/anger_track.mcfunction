#The Formidibomb waits to be targetted.
scoreboard players add @s Math 1
witherstormmod ultimateTarget set @w[tag=FormidibombAngry,tag=!Injured,tag=!TNTDistracted,limit=1,sort=nearest] ~ ~ ~
execute if entity @e[type=witherstormmod:blue_flaming_wither_skull,distance=..2] run function explorers_eve:item/formidibomb/anger_end
execute if entity @e[type=witherstormmod:flaming_wither_skull,distance=..2] run function explorers_eve:item/formidibomb/anger_end
execute if score @s Math matches 2400.. run function explorers_eve:item/formidibomb/anger_fuse_end