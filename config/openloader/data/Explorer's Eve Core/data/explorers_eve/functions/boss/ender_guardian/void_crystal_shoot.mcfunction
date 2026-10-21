#Shoot the spikes.
summon marker ~ ~ ~ {Tags:["VoidSpike","Rotate0"]}
summon marker ~ ~ ~ {Tags:["VoidSpike","Rotate1"]}
summon marker ~ ~ ~ {Tags:["VoidSpike","Rotate2"]}
execute if entity @s[tag=Wave2] run summon marker ~ ~ ~ {Tags:["VoidSpike","Rotate3"]}
execute if entity @s[tag=Wave2] run summon marker ~ ~ ~ {Tags:["VoidSpike","Rotate4"]}
execute if entity @s[tag=Wave2] run summon marker ~ ~ ~ {Tags:["VoidSpike","Rotate5"]}
execute as @e[tag=Rotate0,limit=1,sort=nearest] at @s rotated as @e[tag=VoidSpikeSource,limit=1,sort=nearest] run tp @s ^ ^ ^-21 facing entity @e[tag=VoidSpikeSource,limit=1,sort=nearest]
execute as @e[tag=Rotate1,limit=1,sort=nearest] at @s rotated as @e[tag=VoidSpikeSource,limit=1,sort=nearest] rotated ~120 0 run tp @s ^ ^ ^-21 facing entity @e[tag=VoidSpikeSource,limit=1,sort=nearest]
execute as @e[tag=Rotate2,limit=1,sort=nearest] at @s rotated as @e[tag=VoidSpikeSource,limit=1,sort=nearest] rotated ~240 0 run tp @s ^ ^ ^-21 facing entity @e[tag=VoidSpikeSource,limit=1,sort=nearest]
execute as @e[tag=Rotate3,limit=1,sort=nearest] at @s rotated as @e[tag=VoidSpikeSource,limit=1,sort=nearest] rotated ~180 0 run tp @s ^ ^ ^-21 facing entity @e[tag=VoidSpikeSource,limit=1,sort=nearest]
execute as @e[tag=Rotate4,limit=1,sort=nearest] at @s rotated as @e[tag=VoidSpikeSource,limit=1,sort=nearest] rotated ~300 0 run tp @s ^ ^ ^-21 facing entity @e[tag=VoidSpikeSource,limit=1,sort=nearest]
execute as @e[tag=Rotate5,limit=1,sort=nearest] at @s rotated as @e[tag=VoidSpikeSource,limit=1,sort=nearest] rotated ~60 0 run tp @s ^ ^ ^-21 facing entity @e[tag=VoidSpikeSource,limit=1,sort=nearest]