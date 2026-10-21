#Injure the Storm's heads while it plays dead.
execute as @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] run data merge entity @s {Heads:{0:{InjuryTime:4000},1:{InjuryTime:4000},2:{InjuryTime:4000}}}
execute if entity @s[tag=TNTDistracted] run function explorers_eve:item/super_tnt/end
tag @s add PlayDeadInjured

#Also cure all players!
execute as @a run witherstormmod sickness cure @s