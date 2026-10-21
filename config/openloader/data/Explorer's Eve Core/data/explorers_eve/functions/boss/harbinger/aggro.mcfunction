#Focus on the player.
tag @s add Aggro
execute as @p[gamemode=!spectator] at @s run damage @e[type=cataclysm:the_harbinger,limit=1,sort=nearest] 1 minecraft:out_of_world by @s
