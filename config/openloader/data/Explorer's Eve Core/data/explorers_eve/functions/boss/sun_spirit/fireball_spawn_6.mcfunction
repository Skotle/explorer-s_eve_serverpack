#Summon a specific number of markers.
scoreboard players add @s Math 1
summon fireball ~ ~ ~ {Tags:["Fireball","SunSpiritFireball","NewFireballLaunch"],ExplosionPower:1b}
execute rotated as @s run tp @e[tag=NewFireballLaunch,limit=1,sort=nearest] ^ ^ ^1 ~ ~
tag @e[tag=NewFireballLaunch,limit=1,sort=nearest] remove NewFireballLaunch
tp @s ~ ~ ~ ~60 ~
execute unless score @s Math matches 6.. rotated as @s run function explorers_eve:boss/sun_spirit/fireball_spawn_6