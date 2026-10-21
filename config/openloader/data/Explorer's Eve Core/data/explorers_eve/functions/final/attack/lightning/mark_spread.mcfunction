#Similar to quake. Spawn marks and move them.
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 10
function explorers_eve:final/attack/lightning/spawn_mark
spreadplayers ~ ~ 3 15 false @e[tag=LightningMark]