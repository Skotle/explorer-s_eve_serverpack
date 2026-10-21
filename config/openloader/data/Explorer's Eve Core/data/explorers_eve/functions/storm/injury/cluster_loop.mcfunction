#Spawn a cluster until 100 of them exist. Yep. That's a lot. The Storm's hurt bad.
scoreboard players add @s Math 1
fill ~ ~ ~ ~1 ~1 ~1 witherstormmod:tainted_flesh_block
witherstormmod cluster create ~ ~ ~ ~1 ~1 ~1 0 {RotationDelta:{x:2,y:2},ShakeTime:0,NoGravity:0b,Motion:[1d,1d,1d],Tags:["FleshCluster"]}
execute as @e[tag=FleshCluster,limit=1,sort=nearest] run function explorers_eve:storm/injury/cluster_spawn
execute if entity @s[scores={Math=..100}] run function explorers_eve:storm/injury/cluster_loop