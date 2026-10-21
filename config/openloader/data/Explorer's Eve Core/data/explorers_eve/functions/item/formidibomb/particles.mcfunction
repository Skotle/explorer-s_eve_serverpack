#Make a ring of particles 100 blocks away from the Formidibomb. This is the danger zone. In the final battle, reduce the range.
execute as @e[tag=BombClockwise] at @s run tp @s ~ ~ ~ ~0.5 ~
execute as @e[tag=BombCounterClockwise] at @s run tp @s ~ ~ ~ ~-0.5 ~
execute as @e[tag=BombParticles] at @s unless predicate explorers_eve:glitch run particle dust 1 0 0 1 ^ ^ ^100 0.1 5 0.1 0 5 force
execute as @e[tag=BombParticles] at @s if predicate explorers_eve:glitch run particle dust 1 0 0 1 ^ ^-10 ^50 0.1 5 0.1 0 5 force
execute as @e[tag=BombParticles] at @s at @e[type=witherstormmod:formidibomb,limit=1,sort=nearest,distance=..10] run tp @s ~ ~ ~
execute as @e[tag=BombParticles] at @s unless entity @e[type=witherstormmod:formidibomb,distance=..5] run kill @s
execute if entity @e[type=witherstormmod:formidibomb] run schedule function explorers_eve:item/formidibomb/particles 1t