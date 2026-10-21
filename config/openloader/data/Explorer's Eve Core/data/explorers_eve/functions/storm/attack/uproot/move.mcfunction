#Move closer, make a cluster, and if it's time to stop, then stop.
execute facing entity @e[tag=UprootPullTarget,limit=1,sort=nearest] eyes run tp @s ^ ^ ^4
witherstormmod cluster create ~ ~ ~ 5 0 {RotationDelta:{x:1,y:1},ShakeTime:20,NoGravity:1b} @w[tag=UprootActive]
playsound witherstormmod:block_cluster_shake block @a ~ ~ ~ 2 1
particle witherstormmod:command_block ~ ~ ~ 2 2 2 0 5
execute if predicate explorers_eve:structure/labyrinth run fill ~8 -27 ~8 ~-8 -10 ~-8 stone replace bedrock
execute if entity @e[tag=UprootPullTarget,distance=..5] run kill @s