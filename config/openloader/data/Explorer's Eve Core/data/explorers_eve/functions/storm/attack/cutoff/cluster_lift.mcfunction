#Pick up a cluster.
witherstormmod cluster create ~ ~ ~ 5 0 {RotationDelta:{x:1,y:1},ShakeTime:5,NoGravity:1,Motion:[0d,0.5d,0d]} @s
execute at @e[tag=LinePullTarget,limit=1,sort=nearest] run spreadplayers ~ ~ 1 3 false @e[tag=LinePullTarget2,limit=2,sort=nearest]
execute at @e[tag=LinePullTarget2,limit=2,sort=nearest] run witherstormmod cluster create ~ ~ ~ 3 0 {RotationDelta:{x:1,y:1},ShakeTime:5,NoGravity:1,Motion:[0d,0.5d,0d]} @s
playsound witherstormmod:block_cluster_shake hostile @a ~ ~ ~ 2
tag @s add MadeCluster