#Fancy bomb! First, use fill commands to make sure the beacon blocks don't drop.
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace

#Then, spawn bomb. Also spawn a marker to delay doing anything else for half a second (handled in main tick function).
effect give @a[distance=32..96] resistance 4 4
summon witherstormmod:formidibomb ~ ~ ~
tag @s remove WitheredBeaconActive
tag @s add FinalBossSummonDelay
scoreboard players reset @s Math

#Lastly, make effects, then get rid of markers.
stopsound @a * witherstormmod:command_block_build
playsound witherstormmod:command_block_summon block @a[distance=..200] ~ ~ ~ 5 1.5 1
playsound witherstormmod:command_block_power_down block @a[distance=..200] ~ ~ ~ 5 1
kill @e[type=witherstormmod:block_cluster,distance=..32]