#Spawn an ice bomb.
tag @s add IceStaffUsed
scoreboard players set @s IceStaffCooldown 10

summon twilightforest:thrown_ice ~ ~1.5 ~ {Tags:["NewIce","PlayerIce"]}
execute as @e[tag=NewIce,limit=1,sort=nearest] at @s run function explorers_eve:item/ice_staff/aim