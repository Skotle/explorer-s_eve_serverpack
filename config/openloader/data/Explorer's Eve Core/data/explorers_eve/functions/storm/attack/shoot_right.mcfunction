#Position the attack at the right head.
execute rotated ~ 45 positioned ^13 ^24 ^-9 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["SkullSource"]}
data merge entity @w {Heads:{1:{RoaringTime:20,IsRoaring:1b}}}
execute as @e[tag=SkullSource,limit=1,sort=nearest] at @s facing entity @e[tag=SkullTarget,limit=1] eyes run function explorers_eve:storm/attack/shoot
kill @e[tag=SkullSource,limit=1,sort=nearest]