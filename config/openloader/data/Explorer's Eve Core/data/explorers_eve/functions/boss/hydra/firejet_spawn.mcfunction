#Generate firejets under the selected player.
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 twilightforest:fire_jet
setblock ~ ~-2 ~ lava
summon marker ~ ~-2 ~ {Tags:["HydraFire"]}

#Don't forget noises!
playsound witherstormmod:block_cluster_shake hostile @a[distance=..40] ~ ~ ~ 1 1 0.25
particle minecraft:block twilightforest:fire_jet ~ ~ ~ 0.5 0.25 0.5 0.1 100

#Reset the timer, with some randomness.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s HydraFire = @s RandomValue
scoreboard players add @s HydraFire 500