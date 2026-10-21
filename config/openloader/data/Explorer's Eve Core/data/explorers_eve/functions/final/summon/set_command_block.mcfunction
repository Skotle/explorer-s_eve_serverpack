#Spawn the block and set some values.
summon witherstormmod:command_block ~ ~ ~ {Mode:2,State:4,Tentacles:[],Health:600f,Attributes:[{Name:generic.max_health,Base:600}],PortalCooldown:1000000,Tags:["CommandRematch","CommandRematchIdle"]}
summon marker ~ ~-0.5 ~ {Tags:["CommandRide"]}

scoreboard players set @e[tag=CommandRematch,limit=1,sort=nearest] HealthLimit 600
scoreboard players set @e[tag=CommandRematch,limit=1,sort=nearest] Health 600

execute if data storage world FinalBossCheckpoint1 run tag @e[tag=CommandRematch,limit=1,sort=nearest] add Phase4

data modify storage world FinalBossDimension set value "minecraft:overworld"

fill ~5 ~2 ~5 ~-5 ~-2 ~-5 air replace fire
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 witherstormmod:hardened_flesh_block replace air
fill ~2 ~-2 ~2 ~-2 ~-2 ~-2 witherstormmod:hardened_flesh_block replace air
function explorers_eve:final/command_block/remove_tentacles

#The FinalBattling tag is given here specifically so the Command Block won't despawn. That's all.
tag @a[distance=..200] add FinalBattling
kill @s