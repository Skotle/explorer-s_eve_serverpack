#Main manager for Command Block battle effects. These only run when a battler is in the arena.
#If the player is poisoned, change that.
execute as @a[tag=CommandBattling,predicate=explorers_eve:poison] run function explorers_eve:command_block/poison
execute as @a[tag=CommandBattling,predicate=explorers_eve:inebriation] run function explorers_eve:command_block/poison

#Frost spirits are just annoying.
kill @e[type=blue_skies:frost_spirit,distance=..64]

#If the fight's started and the platform isn't rising, do things.
execute unless entity @s[tag=CommandRise] run function explorers_eve:command_block/timers

#Whenever tainted markers exist, spawn mobs.
execute as @e[tag=CommandMobMark,distance=..128,limit=1,sort=random] at @s run function explorers_eve:command_block/mobs/tainted_spawn

#Tentacles go dormant when their health is too low.
execute as @e[tag=BowelsTentacle] store result score @s Health run data get entity @s Health
execute as @e[tag=BowelsTentacle] if score @s Health <= @s HealthLimit at @s run function explorers_eve:command_block/mobs/tentacle_dormant

#The Symbiont gets a different tag; it's special.
execute as @e[type=witherstormmod:withered_symbiont,tag=!BowelsSymbiont,distance=..128] run function explorers_eve:command_block/symbiont/effects

#If the Symbiont dies, start summoning a new one.
execute unless entity @e[tag=BowelsSymbiont] unless entity @s[tag=NoSymbiont] unless entity @s[tag=SymbiontSpawning] run function explorers_eve:command_block/symbiont/summon_start

#In phase 5 (waiting for the first hit), four cysts activate and must be destroyed.
execute if entity @s[tag=!Phase5Barrier,scores={CommandPhase=5}] at @s run function explorers_eve:command_block/cyst_activate

#Track the heads to tell when they're injured. This has to be done manually because otherwise, the Symbiont prevents phase 16 from starting.
execute if entity @s[tag=!Phase16,scores={CommandPhase=15..16}] as @e[tag=Phase16Head,tag=!Injured,limit=2,sort=nearest,distance=..80] run function explorers_eve:command_block/phase_16/heads_track
execute if entity @s[tag=!Phase16,scores={CommandPhase=15..16}] unless entity @e[tag=Phase16Head,tag=!Injured,distance=..80] at @s run function explorers_eve:command_block/phase_16/start

#If the shield's active, handle that. This is between the phase 16 functions to avoid a bug where the Command Block pretends to take damage.
execute if entity @s[tag=BarrierActive] at @s run function explorers_eve:command_block/barrier/main

#Tick down time until phase 16 repeats.
execute if entity @s[tag=Phase16] run function explorers_eve:command_block/phase_16/timer

#Spawners need a place to land.
execute as @e[tag=CommandSpawner] at @s run fill ~1 ~ ~1 ~-1 ~-1 ~-1 air replace #explorers_eve:air_like
execute as @e[tag=CommandSpawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~-1 ~ air run function explorers_eve:command_block/spawner_land