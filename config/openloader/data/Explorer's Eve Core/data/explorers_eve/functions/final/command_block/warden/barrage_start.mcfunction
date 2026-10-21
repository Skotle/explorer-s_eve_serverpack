#First, adjust tags to know which attack this is.
tag @s[tag=Barrage1,tag=!Barrage2] add Barrage2
tag @s[tag=!Barrage1] add Barrage1
tag @s add WardenBarrage

#Depending on tags, determine how many beams to shoot.
scoreboard players set @s[tag=Barrage1] WardenBeamCount 5
scoreboard players set @s[tag=Barrage2] WardenBeamCount 8

#Depending on which barrage this is, either stop the Command Block or force it to attack.
execute unless entity @s[tag=Barrage2] run scoreboard players set @e[type=witherstormmod:command_block,tag=CommandRematch] CommandSkullWait 350
execute if entity @s[tag=Barrage2] run scoreboard players set @e[type=witherstormmod:command_block,tag=CommandRematch,scores={CommandSkullWait=100..}] CommandSkullWait 100

#No moving or taking damage!
data merge entity @s {Invulnerable:1b,Silent:1b,NoAI:1b}
attribute @s minecraft:generic.movement_speed modifier add 1d58604f-3438-41cb-b968-ad31de8430d7 BossStill -10 add
stopsound @a[tag=FinalBattling] hostile minecraft:entity.warden.sonic_charge

#And teleport!
function explorers_eve:final/command_block/warden/teleport