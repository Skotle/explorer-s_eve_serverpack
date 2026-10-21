#Injure the head until otherwise stated.
data modify entity @s Heads.0.InjuryTime set value 6000
execute unless entity @e[tag=FinalBossPassive] run tag @s add SegmentHeadInjured
execute if entity @s[tag=FinalBossSegment1,tag=SegmentHeadInjured] run tag @w[tag=FinalBoss] add Head1Injured
execute if entity @s[tag=FinalBossSegment2,tag=SegmentHeadInjured] run tag @w[tag=FinalBoss] add Head2Injured
execute unless entity @s[tag=SegmentHeadInjured] run data modify entity @s Heads.0.InjuryTime set value 10