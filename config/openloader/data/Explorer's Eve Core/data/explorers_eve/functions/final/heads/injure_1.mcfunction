#Injure the head until otherwise stated.
data modify entity @s Heads.1.InjuryTime set value 1000000
tag @s[tag=!FinalBossPassive] add Head1Injured
execute unless entity @s[tag=Head1Injured] run data modify entity @s Heads.1.InjuryTime set value 10