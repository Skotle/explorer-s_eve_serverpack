#Boss go bye-bye! But not without letting the player respawn it.
#summon item ~ ~2 ~ {Age:-32768,Health:100000,Motion:[0.0,0.25,0.0],Item:{id:"cataclysm:burning_ashes",Count:1b,tag:{display:{Lore:['{"text":"Use atop the White Castle to summon the champion of the Twilight Forest...","color":"gray","italic":false}']}}}}
summon item ~ ~2 ~ {Glowing:1b,Invulnerable:1b,Health:10000,Age:-32768,Motion:[0.0,0.25,0.0],Item:{id:"cataclysm:chain_of_soul_binding",Count:1b,tag:{display:{Lore:['{"text":"The embers are weak, but they never go out. With sufficient power, they could be rekindled.","color":"gray","italic":false}']}}}}
summon item ~ ~2 ~ {Glowing:1b,Invulnerable:1b,Health:10000,Age:-32768,Motion:[0.0,0.25,0.0],Item:{id:"witherstormmod:withered_nether_star",Count:1b}}
particle minecraft:lava ~ ~1 ~ 0.75 0.5 0.75 0 100

tp @s ~ ~-1000 ~
kill @s