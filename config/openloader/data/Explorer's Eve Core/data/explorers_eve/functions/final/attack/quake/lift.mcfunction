#Pick up a cluster.
witherstormmod cluster create ~ ~ ~ 5 0 {RotationDelta:{x:1,y:1},ShakeTime:5,NoGravity:1,Motion:[0d,0.5d,0d]} @w[tag=FinalBoss]
playsound witherstormmod:block_cluster_shake hostile @a ~ ~ ~ 2
kill @s