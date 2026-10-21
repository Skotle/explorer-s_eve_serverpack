#The Symbiont aggressively corrects tags to prevent minor bugs.
tag @a[gamemode=spectator] remove CommandBattling

#It doesn't heal. DEBUG, don't think this even does anything anymore, so disabled because lag.
#execute store result score @s Health run data get entity @s Health
#execute if score @s Health > @s HealthLimit store result entity @s Health float 1 run scoreboard players get @s HealthLimit
#execute store result score @s Health run data get entity @s Health
#scoreboard players operation @s HealthLimit = @s Health

#If the Symbiont is stuck in a wall, falls into the pit, or is too far from the player, it catches up.
execute unless dimension witherstormmod:bowels run function explorers_eve:command_block/symbiont/rescue
execute unless block ~ ~ ~ #explorers_eve:air_like run function explorers_eve:command_block/symbiont/rescue
execute if entity @p[distance=40..,tag=CommandBattling] unless entity @a[distance=..40,tag=CommandBattling] unless score @s SymbiontStage matches 2 run function explorers_eve:command_block/symbiont/rescue