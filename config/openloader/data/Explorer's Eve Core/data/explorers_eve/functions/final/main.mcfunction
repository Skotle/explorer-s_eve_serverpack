#Main manager for final battle effects.
#Players that try to help just can't.
execute as @a[tag=!FinalBattling,distance=..256] at @s run function explorers_eve:final/player/late_start

#Check if a player's in the tractor beam.
execute unless entity @s[tag=FinalBossInjured] as @a[tag=FinalBattling] at @e[type=#explorers_eve:wither_storm_part,distance=..400] run function explorers_eve:final/beam/contact

#Despawn if all players die.
execute unless entity @a[gamemode=!spectator,tag=FinalBattling,distance=..500] unless entity @a[predicate=explorers_eve:glitch] unless entity @s[tag=Despawning] run function explorers_eve:final/despawn

#When the Storm is moving, keep track of when to stop.
execute if entity @s[tag=FinalBossMoving] run function explorers_eve:final/move/check

#Should the Storm attack? If so, try.
execute if entity @s[tag=AttackPossible] run tag @s add AttackReady
execute if entity @s[tag=FinalBossAttacking] run tag @s remove AttackReady
execute if entity @e[tag=GlitchTransport] run tag @s remove AttackReady
execute if entity @s[tag=AttackReady] run function explorers_eve:final/attack/timer

#Strong segments are very angry.
execute if entity @s[tag=SegmentsStrong] as @e[tag=FinalBossSegment,limit=2,sort=nearest] at @s run function explorers_eve:final/attack/segment/timer

#When active, track head damage.
execute unless entity @s[tag=FinalBossInjured] unless entity @s[tag=Blinded] unless entity @s[tag=Despawning] run function explorers_eve:final/heads/track

#When passive, wait for the miniboss to die.
execute if entity @s[tag=FinalBossPassive] unless entity @e[tag=FinalBossMinion,distance=..500] unless entity @s[tag=Despawning] run function explorers_eve:final/injury_major

#Minions shouldn't get too far away from the player.
execute as @e[type=minecraft:wither,tag=FinalBossMinion] at @s unless entity @a[gamemode=!spectator,distance=..40] unless entity @e[tag=WitherHold,distance=..20] at @p[gamemode=!spectator,tag=FinalBattling,distance=..300] run function explorers_eve:final/minion_teleport

#Minions are marked.
execute as @e[tag=FinalBossMinion] at @s anchored eyes rotated ~ 0 run function explorers_eve:final/command_block/barrier/particle_circle

#Heal heads after some time.
execute if entity @s[tag=FinalBossInjured] run function explorers_eve:final/injury_timer

#No killing it in the last phases! At least, not easily.
execute if entity @s[tag=Blinded,tag=!FinalBossIdle,tag=!Despawning] run data modify entity @s Health set value 75

#No bombs!
execute as @e[type=#explorers_eve:bomb_distraction,distance=..300,tag=!DistractionChecked] at @s run function explorers_eve:item/super_tnt/absorb