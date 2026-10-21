#End the fight.
effect clear @a[distance=..40] mining_fatigue
fill ~15 ~2 ~15 ~-15 ~ ~-15 air replace fire
execute as @e[tag=HydraFire,distance=..64] at @s run function explorers_eve:boss/hydra/firejet_disable
execute as @e[tag=HydraLava,distance=..64] at @s run function explorers_eve:boss/hydra/lava_drain
kill @s