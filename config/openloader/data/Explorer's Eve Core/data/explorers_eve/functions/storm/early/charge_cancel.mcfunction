#Cancel the attack to prevent unfairness.
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 3 0.7
kill @e[tag=WitherChargeEnd,limit=1,sort=nearest,distance=..60]
kill @e[tag=StormHold,limit=1,sort=nearest]
tag @s remove WitherCharging