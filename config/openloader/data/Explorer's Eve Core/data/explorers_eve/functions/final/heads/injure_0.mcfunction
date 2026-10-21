#Injure the head until otherwise stated.
data modify entity @s Heads.0.InjuryTime set value 1000000
execute if entity @s[tag=SegmentsWeak] run data modify entity @s Heads.1.InjuryTime set value 1000000
execute if entity @s[tag=SegmentsWeak] run data modify entity @s Heads.2.InjuryTime set value 1000000
tag @s[tag=!FinalBossPassive] add Head0Injured
execute unless entity @s[tag=Head0Injured] run data modify entity @s Heads.0.InjuryTime set value 10