#Constantly reset the timer.
scoreboard players set @s HarbingerTowerTime 100

#When conditions are met, stop doing that.
execute if entity @e[type=cataclysm:death_laser_beam,distance=..12] run tag @s remove EMPDeny
execute if score @s Health matches ..500 run tag @s remove EMPDeny