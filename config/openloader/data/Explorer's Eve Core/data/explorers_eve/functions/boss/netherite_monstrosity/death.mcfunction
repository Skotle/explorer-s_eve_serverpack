#End the fight, and by end, I mean get rid of that horrible lava.
fill ~10 ~-13 ~10 ~-10 ~1 ~-10 air replace lava
fill ~10 ~2 ~10 ~-10 ~2 ~-10 air replace magma_block
playsound minecraft:entity.wither.break_block block @a ~ ~2 ~ 3 0.5
particle block magma_block ~ ~2 ~ 5 0.5 5 1 500
advancement grant @a[distance=..64,gamemode=!spectator] only cataclysm:kill_monstrosity
kill @s