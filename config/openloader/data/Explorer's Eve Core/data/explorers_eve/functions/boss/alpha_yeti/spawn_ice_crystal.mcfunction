#Spawn an ice crystal to annoy the player. It dies in one hit and deals tons of damage.
execute unless entity @e[type=twilightforest:ice_crystal,distance=..6] run summon twilightforest:ice_crystal
attribute @e[type=twilightforest:ice_crystal,distance=..6,limit=1,sort=nearest] minecraft:generic.max_health base set 1
execute as @e[type=twilightforest:ice_crystal,distance=..6,limit=1,sort=nearest] store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
attribute @e[type=twilightforest:ice_crystal,distance=..6,limit=1,sort=nearest] minecraft:generic.attack_damage modifier add 1d53604f-3438-43cb-b668-ad31de8430d7 MoreDamage 1 add
tag @s add SummonedCrystal