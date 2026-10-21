#Just in case the player falls out of the sky.
execute as @a[tag=AetherFall] at @s positioned over motion_blocking_no_leaves unless block ~ ~ ~ #explorers_eve:liquid run spawnpoint @s ~ ~ ~ ~
execute as @a[tag=AetherFall] at @s positioned over motion_blocking_no_leaves if block ~ ~ ~ #explorers_eve:liquid positioned over world_surface run spawnpoint @s ~ ~ ~ ~
tag @a remove AetherFall