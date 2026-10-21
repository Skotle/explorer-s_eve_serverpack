#Injure the heads.
playsound witherstormmod:wither_storm_hurt hostile @a[distance=0..] ~ ~ ~ 50 1 1
data merge entity @s {Heads:{0:{InjuryTime:4000},1:{InjuryTime:4000},2:{InjuryTime:4000}}}
execute as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..200] run data merge entity @s {Heads:{0:{InjuryTime:4000},1:{InjuryTime:4000},2:{InjuryTime:4000}}}

#Remove attacking tags to cancel ongoing attacks.
tag @s remove StormAttacking
tag @s remove MultishotActive
tag @s remove CutoffActive
tag @s remove ScattershotActive
tag @s remove SlowAttack
kill @e[tag=DigSkullSource]
kill @e[tag=UprootPullSource]
tag @e[distance=..200] remove LinePullPossible
function explorers_eve:storm/attack/dig/end

#No Symbiont while injured.
witherstormmod config server set server.withered_symbiont.canSummonSymbiont false

#Don't let the Wither Storm move. Also tag it.
execute at @p[gamemode=!spectator,distance=1..] run witherstormmod ultimateTarget set @s ~ ~ ~
execute store result entity @s Health float 0.75 run data get entity @s Health
tag @s add Injured
scoreboard players set @s InjuryDelay 0
execute if score @s StormPhase matches 5 run scoreboard players set @s InjuryDelay 120
witherstormmod config server set server.misc.flyingHeight 10

#Just for fun, send a bunch of clusters flying!
scoreboard players set @s Math 0
execute positioned ~ ~24 ~ run function explorers_eve:storm/injury/cluster_loop

#Phase-specific effects.
execute if entity @s[tag=Resummoned] run advancement grant @a only explorers_eve:witherite_possible
execute if entity @s[tag=Resummoned] run data modify storage world WitheritePossible set value 1
execute if entity @s[tag=Resummoned,scores={StormPhase=6}] run witherstormmod phase set @s 7
execute if entity @s[tag=Resummoned,scores={StormPhase=6}] run scoreboard players set @s StormPhase 7
execute if score @s StormPhase matches 7 run function explorers_eve:storm/phase_7_progress
