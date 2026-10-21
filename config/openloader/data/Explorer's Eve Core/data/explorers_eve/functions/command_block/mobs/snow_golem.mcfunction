#Snow Golems are very slightly less tanky and faster.
attribute @s minecraft:generic.movement_speed modifier add 1d58604f-3438-41cb-b968-ad31de8430d7 SpeedBuff 0.05 add
attribute @s minecraft:generic.max_health modifier add 1d52604f-3438-43cb-b668-ad31de8430d7 BonusHP 8 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get