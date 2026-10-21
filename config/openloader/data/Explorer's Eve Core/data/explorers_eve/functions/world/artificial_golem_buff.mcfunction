#The only solution is to have more of them at once.
summon blue_skies:artificial_golem ~ ~ ~ {IsRanged:1b}
summon blue_skies:artificial_golem ~ ~ ~ {IsRanged:1b}
summon blue_skies:artificial_golem ~ ~ ~ {IsRanged:0b}
summon blue_skies:artificial_golem ~ ~ ~ {IsRanged:0b}

#And they still need more stats. These poor things are so bad.
execute as @e[type=blue_skies:artificial_golem,limit=5,sort=nearest] run data modify entity @s OwnerUUID set from entity @p UUID
execute as @e[type=blue_skies:artificial_golem,limit=5,sort=nearest] run attribute @s minecraft:generic.movement_speed modifier add 1d53604f-3438-43cb-b668-ad31de8430c7 MoreSpeed 0.1 add
execute as @e[type=blue_skies:artificial_golem,limit=5,sort=nearest] run attribute @s minecraft:generic.max_health modifier add 1d53604f-3438-43cb-b668-ad31de8430a7 MoreHealth 20 add
execute as @e[type=blue_skies:artificial_golem,limit=5,sort=nearest] store result entity @s Health float 1 run attribute @s generic.max_health get
tag @e[type=blue_skies:artificial_golem,limit=5,sort=nearest] add GolemBuffed