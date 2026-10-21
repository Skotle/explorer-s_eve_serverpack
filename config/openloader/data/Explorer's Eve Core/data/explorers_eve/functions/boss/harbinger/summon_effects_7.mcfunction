#Particles bunch up. ITS HAPPENING
execute positioned ^8 ^ ^ facing entity @s feet run function explorers_eve:boss/harbinger/summon_effects_line
execute positioned ^-8 ^ ^ facing entity @s feet run function explorers_eve:boss/harbinger/summon_effects_line
execute positioned ^ ^ ^8 facing entity @s feet run function explorers_eve:boss/harbinger/summon_effects_line
execute positioned ^ ^ ^-8 facing entity @s feet run function explorers_eve:boss/harbinger/summon_effects_line
execute rotated as @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] positioned ^5 ^7 ^ facing entity @s feet run function explorers_eve:boss/harbinger/summon_effects_line
execute rotated as @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] positioned ^-5 ^7 ^ facing entity @s feet run function explorers_eve:boss/harbinger/summon_effects_line
execute rotated as @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] positioned ^ ^-7 ^5 facing entity @s feet run function explorers_eve:boss/harbinger/summon_effects_line
execute rotated as @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] positioned ^ ^-7 ^-5 facing entity @s feet run function explorers_eve:boss/harbinger/summon_effects_line

kill @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1]

#More lightning!
particle cataclysm:lightning ~ ~ ~ 0 0 0 7 40 force