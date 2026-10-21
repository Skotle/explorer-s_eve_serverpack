#The tower can now be used!
setblock ~ ~ ~ cataclysm:emp[overload=false]

#Effects!
playsound cataclysm:harbinger_charge_prepare hostile @a ~ ~ ~ 3 1.5
particle minecraft:dust 0.5 0 0 1.5 ~ ~ ~ 2 3 2 1 50 force
particle minecraft:dust 0 0 0 1.5 ~ ~ ~ 2 3 2 1 50 force

#Tags.
tag @s add TowerOverload
scoreboard players add @s[scores={HarbingerTowerTime=..200}] HarbingerTowerTime 200