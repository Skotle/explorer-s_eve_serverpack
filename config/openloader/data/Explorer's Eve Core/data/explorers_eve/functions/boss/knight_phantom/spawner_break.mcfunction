#Spawner gone? Just make sure and make effects.
execute if block ~ ~ ~ spawner run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 2 1.5
execute if block ~ ~ ~ spawner run particle twilightforest:ominous_flame ~ ~ ~ 0 0 0 0.05 20
execute if block ~ ~ ~ spawner run setblock ~ ~ ~ air destroy
kill @s