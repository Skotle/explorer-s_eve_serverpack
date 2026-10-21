#Remove the wall and make effects. The walls are always in the same direction.
scoreboard players set @s CommandWallWait 0
tag @s remove ArenaSealed

place template explorers_eve:bowels_arena/front_open ~-34 99 ~-14
place template explorers_eve:bowels_arena/back_open ~33 99 ~-20