#Summon several markers and move them based on health.
summon marker ~ ~ ~ {Tags:["HarbingerTowerMark","TowerWait"]}
summon marker ~ ~ ~ {Tags:["HarbingerTowerMark","TowerWait"]}
summon marker ~ ~ ~ {Tags:["HarbingerTowerMark","TowerWait"]}
execute if score @s Health matches ..250 unless dimension explorers_eve:glitch run summon marker ~ ~ ~ {Tags:["HarbingerTowerMark","TowerWait"]}
execute if score @s Health matches ..150 unless dimension explorers_eve:glitch run summon marker ~ ~ ~ {Tags:["HarbingerTowerMark","TowerWait"]}
scoreboard players set @e[tag=HarbingerTowerMark,distance=..200] HarbingerTowerTime 70
spreadplayers ~ ~ 10 32 false @e[tag=HarbingerTowerMark,distance=..3]
execute at @e[tag=HarbingerTowerMark,distance=..128] run forceload add ~ ~ ~ ~

#The final batch of towers is always pain.
execute if score @s Health matches ..150 run tag @s add FinalTowersUsed

#Reset the timer.
scoreboard players set @s RandomRange 200
function explorers_eve:random
scoreboard players operation @s HarbingerTowerTime = @s RandomValue
scoreboard players add @s HarbingerTowerTime 600
execute if dimension explorers_eve:glitch run scoreboard players remove @s HarbingerTowerTime 400