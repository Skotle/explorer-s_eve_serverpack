#No. This triggers every tick, by the way.
curios drop @s necklace
execute at @s positioned ~ ~1 ~ as @e[type=item,limit=1,sort=nearest,distance=..1.5] run data merge entity @s {Glowing:1b,Invulnerable:1b,Health:10000,Age:-32768,PickupDelay:0}
tellraw @s [{"text":"Your Frigid Gemstone slips from your neck! It can't be used here!","color":"gray"}]