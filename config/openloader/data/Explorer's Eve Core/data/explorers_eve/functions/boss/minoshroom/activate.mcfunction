#Start the fight.
tag @s add Activated
attribute @s minecraft:generic.max_health modifier add 1d32604f-3438-41cb-b968-ad31de8430d7 BonusHP 130 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
attribute @s minecraft:generic.follow_range modifier add 1d32604f-3438-41cb-b968-ad31de8430d7 BonusRange 40 add
attribute @s minecraft:generic.movement_speed modifier add 1d32a04f-3438-15cb-b768-aa41de8930d7 BonusSpeed 0.1 multiply
item replace entity @s weapon.mainhand with dungeons_plus:warped_axe{Enchantments:[{id:"minecraft:knockback",lvl:5s}]} 1
scoreboard players set @s MinoshroomTime 3

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true