#Injure the head until otherwise stated.
data modify entity @s Heads.2.InjuryTime set value 1000000
tag @s[tag=!FinalBossPassive] add Head2Injured
execute unless entity @s[tag=Head2Injured] run data modify entity @s Heads.2.InjuryTime set value 10