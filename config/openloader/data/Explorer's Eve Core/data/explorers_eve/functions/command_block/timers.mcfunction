#Every now and then, spawn fireballs. DEBUG, not fireballs right now.
#scoreboard players remove @s CommandFireballTime 1
#execute if score @s CommandFireballTime matches ..-1 run function explorers_eve:command_block/fireball_timer_reset

#Shoot skulls after a delay dependant on how many monsters exist. Fewer monsters means more skulls.
scoreboard players remove @s CommandSkullWait 1
execute if score @s CommandSkullWait matches ..-1 positioned ~ ~-14 ~ run function explorers_eve:command_block/skull_burst_spawn
