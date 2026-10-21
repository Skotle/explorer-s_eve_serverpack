#Traps fall apart after use.
setblock ~ ~ ~ air
playsound witherstormmod:block_cluster_shake block @a ~ ~ ~ 5 1
playsound entity.wither.break_block block @a ~ ~ ~ 5 0.5
witherstormmod cluster create ~10 ~10 ~10 ~-10 ~-10 ~-10 0 {RotationDelta:{x:3,y:3},ShakeTime:0,NoGravity:1b,Motion:[0.3d,0.75d,-0.1d],Tags:["TrapCluster"]}

#Assign random-ish values to make the cluster more FUN!
scoreboard players set @s RandomRange 41
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 20
execute store result entity @e[tag=TrapCluster,limit=1,sort=nearest] RotationDelta.x float 0.1 run scoreboard players get @s Math

scoreboard players set @s RandomRange 41
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 20
execute store result entity @e[tag=TrapCluster,limit=1,sort=nearest] RotationDelta.y float 0.1 run scoreboard players get @s Math

scoreboard players set @s RandomRange 101
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players remove @s Math 50
execute store result entity @e[tag=TrapCluster,limit=1,sort=nearest] Motion[0] double 0.01 run scoreboard players get @s Math

scoreboard players set @s RandomRange 101
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players remove @s Math 50
execute store result entity @e[tag=TrapCluster,limit=1,sort=nearest] Motion[2] double 0.01 run scoreboard players get @s Math

execute if entity @s[tag=East] run data modify entity @e[tag=TrapCluster,limit=1,sort=nearest] Motion[0] set value 0.75d
execute if entity @s[tag=West] run data modify entity @e[tag=TrapCluster,limit=1,sort=nearest] Motion[0] set value -0.75d
execute if entity @s[tag=South] run data modify entity @e[tag=TrapCluster,limit=1,sort=nearest] Motion[2] set value 0.75d
execute if entity @s[tag=North] run data modify entity @e[tag=TrapCluster,limit=1,sort=nearest] Motion[2] set value -0.75d
kill @s