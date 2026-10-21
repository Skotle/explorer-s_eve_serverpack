#Make particles around the shield Symbiont.
execute as @e[tag=BarrierSource] at @s anchored eyes rotated ~ 0 run function explorers_eve:final/command_block/barrier/particle_circle
execute as @e[tag=BarrierSource] run schedule function explorers_eve:final/command_block/barrier/particle_mobs 3s