#Keep track of the segments MAIN heads, so this is only used when other heads are disabled.

execute store result score @s Math run data get entity @s Heads.0.InjuryTime
execute unless entity @s[tag=SegmentHeadInjured] unless score @s Math matches 0 run function explorers_eve:final/heads/injure_segments_weak

#Also always face the nearest player.
#execute unless entity @a[tag=InBeam] facing entity @p[tag=FinalBattling,gamemode=!spectator] eyes rotated ~ 0 run tp @s ~ ~ ~