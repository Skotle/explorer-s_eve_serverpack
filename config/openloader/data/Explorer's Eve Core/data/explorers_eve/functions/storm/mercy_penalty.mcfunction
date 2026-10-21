#Increment runaway attempts by 1.
scoreboard players set @s DeathMercy 0

execute store result score $RunawayCap Math run witherstormmod config server get server.ultimate_target_logic.runaway_attempts.targetRunawayAttemptsRequired
execute store result score @s Math run data get entity @s TargetRunawayAttempts
execute unless score @s Math >= score $RunawayCap Math run scoreboard players add @s Math 1
execute store result entity @s TargetRunawayAttempts int 1 run scoreboard players get @s Math