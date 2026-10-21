#Start the fight.
tag @s add SliderActive
tag @s add Phase1
scoreboard players set @s SliderSentryTime 500

fill ~1 ~-2 ~ ~-2 ~-2 ~2 aether:treasure_doorway_carved_stone[facing=north] replace air
fill ~1 ~-2 ~-1 ~-2 ~-2 ~-2 aether:treasure_doorway_carved_stone[facing=south] replace air

summon marker ~ ~ ~ {Tags:["SliderMark","SliderMarkRoot"]}
summon marker ~ ~8 ~ {Tags:["SliderMark","SliderMarkCeiling"]}
summon marker ~5 ~-1 ~5 {Tags:["SliderMark","SliderMarkCorner"]}
summon marker ~5 ~-1 ~-5 {Tags:["SliderMark","SliderMarkCorner"]}
summon marker ~-5 ~-1 ~5 {Tags:["SliderMark","SliderMarkCorner"]}
summon marker ~-5 ~-1 ~-5 {Tags:["SliderMark","SliderMarkCorner"]}