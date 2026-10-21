#Lamp gone? Just make sure and make effects.
playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 2 1.5
particle end_rod ~ ~ ~ 0 0 0 0.05 20
execute if block ~ ~ ~ witherstormmod:tainted_dust_block run setblock ~ ~ ~ air destroy
kill @s