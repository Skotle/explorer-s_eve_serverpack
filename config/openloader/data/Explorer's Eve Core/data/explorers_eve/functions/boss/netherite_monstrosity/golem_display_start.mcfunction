#Spawn the display.
tag @s add DisplayActive
particle dust 1 0 1 1 ~ ~ ~ 0.15 0.15 0.15 0.02 20
playsound minecraft:block.lava.pop block @a[distance=..16] ~ ~ ~ 1 1.5
summon minecraft:block_display ~ ~ ~ {Tags:["GolemDisplay"],block_state:{Name:"witherstormmod:tainted_dust_block"},brightness:{sky:9,block:9},transformation:{translation:[-0.25f,-0.25f,-0.25f],left_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f]}}