#Gives the Wither Storm extra heads without increasing evolution status and clears any player enmity.
#If this is a refight, readd the evolution speed boost modifier.
execute if entity @s[tag=Resummoned] run witherstormmod phase set @s 7
data modify entity @s OtherHeadsDisabled set value 0
execute as @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] run data merge entity @s {Heads:{0:{InjuryTime:30},1:{InjuryTime:30},2:{InjuryTime:30}}}
attribute @s witherstormmod:target_stationary_flying_speed modifier remove 133b104f-3428-12ab-b968-aa41ce8930d7

playsound witherstormmod:withered_beacon_power_up hostile @a[distance=0..] ~ ~ ~ 1 1 1
playsound witherstormmod:wither_storm_roar hostile @a[distance=0..] ~ ~ ~ 50 1 0.5
execute at @a[gamemode=!spectator,distance=0..] run particle dust 1 0 1 1 ~ ~1.5 ~ 2.5 1.5 2.5 10 100
data modify entity @s TargetRunawayAttempts set value 0
execute unless entity @s[tag=Resummoned] run witherstormmod ultimateTarget chase stop @s
execute unless entity @s[tag=Resummoned] run data modify entity @s UltimateTargetDistraction.CanBeDistracted set value 1b
execute unless entity @s[tag=Resummoned] run data modify entity @s UltimateTargetDistraction.DistractionWait set value 3600
witherstormmod config server set server.withered_symbiont.canSummonSymbiont true
tag @s remove Phase6Chase
tag @s remove SymbiontReady
tag @s remove BombReady
tag @s remove Injured

#Remove attacking tags to cancel ongoing attacks.
tag @s remove StormAttacking
tag @s remove MultishotActive
tag @s remove CutoffActive
tag @s remove QuakeActive
tag @s remove ScattershotActive
tag @s remove SlowAttack
kill @e[tag=DigSkullSource]
kill @e[tag=UprootPullSource]
kill @e[tag=QuakeMark]
tag @e[distance=..200] remove LinePullPossible

#Cleanup and give the advancement, just in case they didn't already get it.
scoreboard players set @s StormTeleportWait 0
advancement grant @a only witherstormmod:main/weakened_arise_stronger
data modify storage world WitherStormSplit set value 1

stopsound @a[distance=..400] record explorers_eve:resummon_theme_4
scoreboard players set @a[tag=ResummonMusic,distance=..500] MusicTime 0