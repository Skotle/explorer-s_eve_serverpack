#Main manager for Command Block glitch effects.
#Despawn if all players die.
execute unless entity @a[gamemode=!spectator,tag=FinalBattling,distance=..200] run function explorers_eve:final/glitch/escape

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Check if it's been hurt.
execute if score @s Health < @s HealthLimit unless entity @s[tag=Despawning] run function explorers_eve:final/glitch/injury

#Once damaged, it takes a while to be hurt again.
execute if entity @s[tag=GlitchHurt] run scoreboard players add @s GlitchHurtTime 1
execute if score @s GlitchHurtTime matches 1.. unless entity @s[tag=ShortCircuit] if entity @a[gamemode=!spectator,distance=..8] run data modify entity @e[tag=CommandRideHigh,limit=1,sort=nearest] Motion[1] set value 1.5d
execute if score @s GlitchHurtTime matches 10.. run function explorers_eve:final/glitch/injury_end

#It's also very difficult to hit the block after Ignis spawns.
execute if entity @s[tag=Tier4Prep,tag=!ShortCircuit] if entity @a[gamemode=!spectator,distance=..8] run data modify entity @e[tag=CommandRideHigh,limit=1,sort=nearest] Motion[1] set value 1.5d

#Constantly change the glow color.
scoreboard players remove @s[tag=!ShortCircuit] GlitchColorTime 1
execute if score @s GlitchColorTime matches ..0 run function explorers_eve:final/glitch/color_cycle

#Sparkly bats for particles!
execute as @e[tag=SparkBat] at @s run function explorers_eve:final/glitch/spark_bat

#When not shorted, always be aware of potential shorts.
execute if entity @s[tag=!ShortCircuit,tag=!ShortImmune] run function explorers_eve:final/glitch/short/delay

#When shorted, keep track of relevant stats.
execute if entity @s[tag=ShortCircuit] run function explorers_eve:final/glitch/short/timer

#Certain sounds just never play here.
stopsound @a[predicate=explorers_eve:glitch] * witherstormmod:loud_tremble
stopsound @a[predicate=explorers_eve:glitch] * witherstormmod:tremble
stopsound @a[predicate=explorers_eve:glitch] * cataclysm:voidrunerising

#Attack when able.
execute if entity @s[tag=!GlitchAttacking,tag=!ShortCircuit,tag=!GlitchEndure] unless entity @a[tag=GlitchGrabbed] run function explorers_eve:final/glitch/attack/timer

#Keep attacks active.
execute if entity @s[tag=GlitchAttacking] run function explorers_eve:final/glitch/attack/active

#Thorns are their own thing.
execute as @e[tag=ThornMark,distance=..200] at @s run function explorers_eve:final/glitch/attack/thorns/timer

#No escaping!
execute if entity @s[tag=!GlitchAttacking,tag=!ShortCircuit] as @a[tag=FinalBattling,tag=!GlitchGrabbed,distance=65..] at @s run function explorers_eve:final/player/grab
execute as @a[tag=GlitchGrabbed] at @s run function explorers_eve:final/player/pull

#Track bosses.
execute as @e[tag=GlitchBossTracker] run function explorers_eve:final/glitch/boss/track

#Final phase timer and effects.
execute if entity @s[tag=GlitchEndure] run function explorers_eve:final/glitch/endure_timer

#No respawning the tentacles!
execute if entity @e[type=witherstormmod:tentacle,distance=..8] run function explorers_eve:final/command_block/remove_tentacles

#Water freezes when the ride touches it. Yes, this is ripped right from the Symbiont. It works fine.
execute as @e[tag=CommandRide,limit=1,sort=nearest] at @s if block ~ ~ ~ #explorers_eve:liquid run function explorers_eve:symbiont/freeze

#Most of the time, the ride stays high up.
execute as @e[tag=CommandRideHigh] at @s unless block ~ ~-12 ~ air run data modify entity @s Motion[1] set value 1.5d
execute as @e[tag=CommandRideHigh] at @s if block ~ ~-20 ~ air unless entity @e[tag=GlitchHurt,distance=..2] unless entity @e[tag=Tier4Prep,distance=..2] run data modify entity @s Motion[1] set value -1.5d
execute as @e[tag=CommandRideHigh] at @s if block ~ ~-40 ~ air run data modify entity @s Motion[1] set value -1.5d

#Lastly, keep up with the ride.
execute at @e[tag=CommandRide,limit=1,sort=nearest] run tp @s ~ ~ ~

#And keep boss spawning marks around.
tp @e[tag=GlitchBossChoice] @s
tp @e[tag=GlitchBossTracker] @s