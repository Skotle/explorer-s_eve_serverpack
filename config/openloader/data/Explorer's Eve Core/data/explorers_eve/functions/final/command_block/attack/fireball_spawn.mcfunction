#Summon a dragon fireball and aim it.
summon dragon_fireball ~ ~1 ~ {Tags:["RematchFireball"],power:[0.0,-0.07,0.0],CreatedBySymbiont:1b}
execute as @e[tag=RematchFireball,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:final/command_block/attack/fireball_launch
