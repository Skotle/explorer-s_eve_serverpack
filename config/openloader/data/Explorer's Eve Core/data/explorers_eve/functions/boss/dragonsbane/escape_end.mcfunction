#Once done burrowing, open the exit.
execute as @e[tag=DragonsbaneArena,limit=1,sort=nearest] if entity @s[tag=North] at @s run fill ~1 ~2 ~-8 ~-1 ~ ~-8 air replace infested_cobblestone
execute as @e[tag=DragonsbaneArena,limit=1,sort=nearest] if entity @s[tag=South] at @s run fill ~1 ~2 ~8 ~-1 ~ ~8 air replace infested_cobblestone
execute as @e[tag=DragonsbaneArena,limit=1,sort=nearest] if entity @s[tag=East] at @s run fill ~8 ~2 ~1 ~8 ~ ~-1 air replace infested_cobblestone
execute as @e[tag=DragonsbaneArena,limit=1,sort=nearest] if entity @s[tag=West] at @s run fill ~-8 ~2 ~1 ~-8 ~ ~-1 air replace infested_cobblestone

execute as @e[tag=DragonsbaneArena,limit=1,sort=nearest] if entity @s[tag=North] at @s run playsound witherstormmod:block_cluster_shake block @a ~ ~ ~-8
execute as @e[tag=DragonsbaneArena,limit=1,sort=nearest] if entity @s[tag=South] at @s run playsound witherstormmod:block_cluster_shake block @a ~ ~ ~8
execute as @e[tag=DragonsbaneArena,limit=1,sort=nearest] if entity @s[tag=East] at @s run playsound witherstormmod:block_cluster_shake block @a ~8 ~ ~
execute as @e[tag=DragonsbaneArena,limit=1,sort=nearest] if entity @s[tag=West] at @s run playsound witherstormmod:block_cluster_shake block @a ~-8 ~ ~

#Dispose of the entity, bossbar, and marker.
bossbar set minecraft:dragonsbane players
kill @e[tag=DragonsbaneArena,limit=1,sort=nearest]
kill @e[tag=DragonsbaneMinion,distance=..32]
effect clear
tp @s ~ -1000 ~
kill @s