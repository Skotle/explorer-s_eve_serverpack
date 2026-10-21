#Phase 2 leaps away to scare the player. Also get a tag.
tag @s add RushMode
attribute @s minecraft:generic.movement_speed modifier add 1d32104f-3438-41ab-b968-aa41de8930d7 Phase2Speed 0.5 multiply
effect give @s resistance 3 5 true
data modify entity @s Motion[1] set value 2d
data modify entity @s ShouldNotGoOverHalf set value 0b

#If the Wither Storm is distracted by Super TNT, this transition wakes it up.
execute as @w[tag=TNTDistracted] at @s run function explorers_eve:item/super_tnt/end

#In the resummoned fight, play with health.
execute if entity @s[tag=Resummoned,tag=!FinalBossMinion] run attribute @s minecraft:generic.max_health modifier remove 1542d04f-2161-41cb-b968-aa41de8930d7
execute if entity @s[tag=Resummoned,tag=!FinalBossMinion] run attribute @s minecraft:generic.max_health modifier add 1542d04f-2161-41cb-b968-aa41de8930d7 ResummonBoost 1.34 multiply
execute if entity @s[tag=Resummoned,tag=!FinalBossMinion] run tag @s add NeedsArmor
execute if entity @s[tag=Resummoned,tag=!FinalBossMinion] run scoreboard players set @w[tag=Resummoned] StormAttackWait 2000

#Fix health.
execute unless dimension witherstormmod:bowels unless entity @s[tag=FinalBossMinion] store result entity @s Health float 0.5 run attribute @s minecraft:generic.max_health get

#Fix music if this is the resummoned battle.
stopsound @a[distance=..80] record explorers_eve:resummon_theme_6
scoreboard players set @a[tag=ResummonMusic,distance=..80] MusicTime 0