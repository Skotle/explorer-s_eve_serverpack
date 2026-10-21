#Keep track of all of the heads to see if they're injured. This only occurs once per second; no need for spam.
execute store result score @s Math run data get entity @s Heads.0.InjuryTime
execute unless entity @s[tag=Head0Injured] unless score @s Math matches 0 run function explorers_eve:final/heads/injure_0

execute store result score @s Math run data get entity @s Heads.1.InjuryTime
execute unless entity @s[tag=Head1Injured] unless score @s Math matches 0 run function explorers_eve:final/heads/injure_1

execute store result score @s Math run data get entity @s Heads.2.InjuryTime
execute unless entity @s[tag=Head2Injured] unless score @s Math matches 0 run function explorers_eve:final/heads/injure_2

execute if entity @s[tag=Head0Injured,tag=Head1Injured,tag=Head2Injured] run witherstormmod kill @s

#Also always face the nearest player.
#execute unless entity @a[tag=InBeam] facing entity @p[tag=FinalBattling,gamemode=!spectator] eyes rotated ~ 0 run tp @s ~ ~ ~