#Setup for spawning mobs for a random amount of time.
scoreboard players set @s StormAttackTime 0
tag @s add FinalBossAttacking

#Generate how many ticks this will last.
scoreboard players set @s RandomRange 20
function explorers_eve:random
scoreboard players operation @s CommandEntityTime = @s RandomValue
scoreboard players add @s CommandEntityTime 25