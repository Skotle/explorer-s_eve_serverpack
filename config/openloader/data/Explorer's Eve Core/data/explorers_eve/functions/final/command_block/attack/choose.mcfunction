#Reset skull attack timer.
scoreboard players set @s RandomRange 200
function explorers_eve:random
scoreboard players operation @s CommandSkullWait = @s RandomValue
scoreboard players add @s CommandSkullWait 150

#Choose an attack.
scoreboard players set @s RandomRange 10
execute if entity @s[tag=Phase1] run scoreboard players remove @s RandomRange 4
execute if entity @s[tag=Phase2] run scoreboard players remove @s RandomRange 2
function explorers_eve:random
scoreboard players operation @s SkullAttack = @s RandomValue

execute if score @s SkullAttack matches ..2 if entity @a[distance=..16] run scoreboard players add @s SkullAttack 3

execute if entity @e[tag=WardenBarrage,distance=..128] run scoreboard players set @s SkullAttack 9

#Run whatever attack was chosen.
execute if entity @s[scores={SkullAttack=..2}] run function explorers_eve:final/command_block/attack/basic
execute if entity @s[scores={SkullAttack=3..5}] run function explorers_eve:final/command_block/attack/fireball_spawn
execute if entity @s[scores={SkullAttack=6..7}] run function explorers_eve:final/command_block/attack/skull_burst_start

#Scattershot has more restrictions. If the player's in water, don't use scatter, use line instead.
execute if entity @s[scores={SkullAttack=8..}] at @p[gamemode=!spectator] unless block ~ ~ ~ water unless block ~ ~-1 ~ water run tag @s add ScattershotPossible
execute if entity @s[scores={SkullAttack=8..},tag=ScattershotPossible] run function explorers_eve:final/command_block/attack/scatter_leap
execute if entity @s[scores={SkullAttack=8..},tag=!ScattershotPossible] run function explorers_eve:final/command_block/attack/skull_burst_start
tag @s remove ScattershotPossible