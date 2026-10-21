#Position the attack at a segment.
execute as @e[type=witherstormmod:wither_storm_segment,sort=nearest,limit=1,distance=..200] at @s run summon minecraft:area_effect_cloud ^ ^15 ^10 {Duration:1,Tags:["SkullSource"]}
data merge entity @e[type=witherstormmod:wither_storm_segment,sort=nearest,limit=1] {Heads:{0:{RoaringTime:20,IsRoaring:1b}}}
execute as @e[tag=SkullSource,limit=1,sort=nearest] at @s facing entity @e[tag=SkullTarget,limit=1] eyes run function explorers_eve:storm/attack/shoot
kill @e[tag=SkullSource,limit=1,sort=nearest]