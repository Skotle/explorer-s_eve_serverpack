#Pick up a cluster.
execute if score @s CommandRiseTime matches 1..40 run witherstormmod cluster create ~ ~ ~ 2 0 {RotationDelta:{x:1,y:1},ShakeTime:5,NoGravity:1,Motion:[0d,0.5d,0d]}
execute if score @s CommandRiseTime matches 41..80 run witherstormmod cluster create ~ ~ ~ 3 0 {RotationDelta:{x:1,y:1},ShakeTime:5,NoGravity:1,Motion:[0d,0.5d,0d]}
execute if score @s CommandRiseTime matches 81..120 run witherstormmod cluster create ~ ~ ~ 4 0 {RotationDelta:{x:1,y:1},ShakeTime:5,NoGravity:1,Motion:[0d,0.5d,0d]}
execute if score @s CommandRiseTime matches 121..160 run witherstormmod cluster create ~ ~ ~ 5 0 {RotationDelta:{x:1,y:1},ShakeTime:5,NoGravity:1,Motion:[0d,0.5d,0d]}

scoreboard players set @s RandomRange 51
function explorers_eve:random
scoreboard players add @s RandomValue 25
execute store result entity @e[type=witherstormmod:block_cluster,limit=1,sort=nearest] Motion[1] double 0.01 run scoreboard players get @s RandomValue

playsound witherstormmod:block_cluster_shake hostile @a ~ ~ ~ 1
kill @e[tag=ClusterMark,limit=1,sort=nearest]