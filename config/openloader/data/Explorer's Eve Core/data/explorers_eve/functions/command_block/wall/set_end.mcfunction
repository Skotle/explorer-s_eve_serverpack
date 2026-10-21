#Finish the wall and adjust tags.
scoreboard players set @s CommandWallWait 0
tag @s add ArenaSealed

place template explorers_eve:bowels_arena/front_closed ~-34 99 ~-14
place template explorers_eve:bowels_arena/back_closed ~33 99 ~-20

#Add extra hardened flesh to cut off cheaty small tunnels that sometimes spawn.
fill ~36 104 ~35 ~-31 140 ~35 witherstormmod:hardened_flesh_block
fill ~36 104 ~-35 ~-31 140 ~-35 witherstormmod:hardened_flesh_block
fill ~36 104 ~35 ~36 140 ~-35 witherstormmod:hardened_flesh_block
fill ~-31 104 ~35 ~-31 140 ~-35 witherstormmod:hardened_flesh_block

#Rescue the Symbiont to make sure it never gets stuck behind the wall.
execute as @e[type=witherstormmod:withered_symbiont,tag=BowelsSymbiont] at @s run function explorers_eve:command_block/symbiont/rescue