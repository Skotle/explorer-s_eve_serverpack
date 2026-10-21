#Main manager for Minoshroom changes. First, initialize.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/minoshroom/activate

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#No lava cheese.
execute if block ~ ~ ~ #explorers_eve:liquid run fill ~10 ~5 ~10 ~-10 ~-1 ~-10 air replace #explorers_eve:liquid

#Sometimes, it tries to throw an axe.
execute if entity @s[scores={Health=8..200}] run scoreboard players remove @s MinoshroomTime 1
execute if entity @s[scores={Health=8..100}] run scoreboard players remove @s MinoshroomTime 1
execute if entity @s[scores={MinoshroomTime=..1},tag=!WarpWarned] at @s run function explorers_eve:boss/minoshroom/warp_warn
execute if entity @s[scores={MinoshroomTime=..-1}] at @s run function explorers_eve:boss/minoshroom/warp_aim