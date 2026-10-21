#Keep ticking the timer and move the target. Start with a warning, then fire.
scoreboard players add @s SunSpiritLaserTime 1
execute as @e[tag=LaserTarget,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/sun_spirit/laser_move
execute if score @s SunSpiritLaserTime matches 1.. anchored eyes facing entity @e[tag=LaserTarget,limit=1,sort=nearest] eyes run function explorers_eve:boss/sun_spirit/laser_shoot
execute if score @s SunSpiritLaserTime matches 1 run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 2 0.8
execute if score @s SunSpiritLaserTime matches 42 run playsound cataclysm:revenant_breath hostile @a ~ ~ ~ 3 0.7
execute if score @s SunSpiritLaserTime matches 87.. unless entity @s[tag=FinalBattle] run function explorers_eve:boss/sun_spirit/laser_end