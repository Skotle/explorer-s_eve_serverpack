#Keep track of all of the heads to see if they're injured. This only occurs once per second; no need for spam.
execute store result score @s Math run data get entity @s Heads.0.InjuryTime
execute unless entity @s[tag=Head0Injured] unless score @s Math matches 0 run function explorers_eve:final/heads/injure_0

execute store result score @s Math run data get entity @s Heads.1.InjuryTime
execute unless entity @s[tag=Head1Injured] unless entity @s[tag=SegmentsWeak] unless score @s Math matches 0 run function explorers_eve:final/heads/injure_1

execute store result score @s Math run data get entity @s Heads.2.InjuryTime
execute unless entity @s[tag=Head2Injured] unless entity @s[tag=SegmentsWeak] unless score @s Math matches 0 run function explorers_eve:final/heads/injure_2

execute if entity @s[tag=SegmentsWeak] as @e[tag=FinalBossSegment,limit=2,sort=nearest] at @s run function explorers_eve:final/heads/track_segments_weak

execute if entity @s[tag=SegmentsStrong] as @e[tag=FinalBossSegment,limit=2,sort=nearest] at @s run function explorers_eve:final/heads/track_segments_strong
execute if entity @s[tag=SegmentsStrong] unless entity @e[tag=FinalBossSegment,distance=..500] run tag @s remove SegmentsStrong

execute if entity @s[tag=Head0Injured,tag=Head1Injured,tag=Head2Injured] unless entity @s[tag=SegmentsStrong] run function explorers_eve:final/heads/broken