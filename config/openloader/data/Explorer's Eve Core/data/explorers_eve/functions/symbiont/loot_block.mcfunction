#Place a lamp and make it fly!
setblock ~ ~ ~ witherstormmod:tainted_dust_block
witherstormmod cluster create ~ ~ ~ ~ ~ ~ 0 {RotationDelta:{x:2,y:2},ShakeTime:0,NoGravity:0b,Motion:[1d,1d,1d],Tags:["LampCluster"]}
execute as @e[tag=LampCluster,limit=1,sort=nearest] run function explorers_eve:symbiont/loot_momentum
scoreboard players set @s SymbiontBlockTime 0