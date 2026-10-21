#Place marks.
execute if entity @s[tag=Center] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:201,Tags:["LineshotSegmentTarget"]}
execute if entity @s[tag=Sides] run summon minecraft:area_effect_cloud ^ ^ ^4 {Duration:201,Tags:["LineshotSegmentTarget"]}
execute if entity @s[tag=Sides] run summon minecraft:area_effect_cloud ^ ^ ^-4 {Duration:201,Tags:["LineshotSegmentTarget"]}
execute if entity @s[tag=Sides] run summon minecraft:area_effect_cloud ^ ^ ^10 {Duration:201,Tags:["LineshotSegmentTarget"]}
execute if entity @s[tag=Sides] run summon minecraft:area_effect_cloud ^ ^ ^-10 {Duration:201,Tags:["LineshotSegmentTarget"]}
kill @s