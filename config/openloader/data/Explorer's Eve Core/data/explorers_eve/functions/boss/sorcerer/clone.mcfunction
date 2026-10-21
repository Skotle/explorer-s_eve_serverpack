#Every 50 health, do stuff. First, update the health limit.
scoreboard players remove @s HealthLimit 50

#How many clones to spawn?
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 4
execute if score @s Health matches ..125 run scoreboard players add @s Math 4
function explorers_eve:boss/sorcerer/clone_mark

#Then spawn a new clone.
spreadplayers ~ ~ 2 24 false @e[tag=SorcererSpawnMark]
execute at @e[tag=SorcererSpawnMark] run summon cataclysm:nameless_sorcerer ~ ~ ~ {is_Illusion:1b}
execute at @e[tag=SorcererSpawnMark] run playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..64] ~ ~ ~ 1 1.5 1
kill @e[tag=SorcererSpawnMark]