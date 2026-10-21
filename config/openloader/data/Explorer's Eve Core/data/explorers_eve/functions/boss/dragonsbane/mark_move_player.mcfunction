#Pick a spot around the player, go down to motion blocking, and check if something's gone horribly wrong.
scoreboard players add @s Math 1
spreadplayers ~ ~ 1 6 false @s
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute at @s unless block ~ ~ ~ #explorers_eve:dragonsbane_air_like if block ~ ~1 ~ #explorers_eve:dragonsbane_air_like run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #explorers_eve:dragonsbane_air_like at @r[gamemode=!spectator,distance=..16] unless score @s Math matches 30.. run function explorers_eve:boss/dragonsbane/mark_move_player
execute unless entity @a[gamemode=!spectator,distance=..12] unless score @s Math matches 30.. run function explorers_eve:boss/dragonsbane/mark_move_player
execute if score @s Math matches 30.. at @e[tag=DragonsbaneBoss,limit=1,sort=nearest] run tp @s @p[gamemode=!spectator]