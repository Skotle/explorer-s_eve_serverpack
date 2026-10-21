tellraw @s [{"text":"Silent Storm challenge disabled.","color":"light_purple"}]
data remove storage world SilentStorm
scoreboard players set @s Challenge -1

execute as @e[type=#explorers_eve:wither_storm_part] run data modify entity @s Silent set value 0b
witherstormmod config server set server.misc.smartBossbar false