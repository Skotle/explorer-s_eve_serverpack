#Happens when the boss dies.
bossbar set minecraft:dragonsbane players
execute if entity @s[tag=Phase1] run kill @e[tag=DragonsbaneArena,distance=..64]
effect clear @a[distance=..32] mining_fatigue
kill @e[tag=DragonsbaneMinion,distance=..128]
kill @s