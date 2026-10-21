#If the player is withered, have mercy.
execute as @a[predicate=explorers_eve:wither,distance=..256] run effect give @s saturation 1 0 true

#Once the player flees, it activates.
execute if entity @s[scores={StormPhase=0}] if entity @a[gamemode=!spectator,distance=15..] unless entity @a[gamemode=!spectator,distance=..12] unless entity @s[tag=EarlySpawn] run function explorers_eve:storm/early/spawn

#Once it catches up, it tries to drop and explode.
execute if entity @s[scores={StormPhase=0..1}] positioned ~-7 ~-12 ~-7 if entity @a[gamemode=!spectator,dx=14,dy=16,dz=14] if entity @s[tag=!WitherCharging,nbt={Invul:0}] at @s unless block ~ ~ ~ water run function explorers_eve:storm/early/drop

#It won't get stuck anywhere.
execute unless block ~ ~4 ~ #explorers_eve:dig_measure_ignore unless entity @a[gamemode=!spectator,distance=..5] if entity @s[nbt={Invul:0}] run witherstormmod cluster create ~ ~4 ~ 3 0 {} @s

#Before getting a beam, it can charge at the player.
execute if entity @s[scores={StormPhase=0..1}] run scoreboard players remove @s WitherCharge 1
execute if entity @s[tag=!WitherCharging,scores={WitherCharge=..0}] if entity @a[gamemode=!spectator,distance=..64] if entity @s[nbt={Invul:0}] run function explorers_eve:storm/early/charge_start

#Manage the charge effects.
execute if entity @s[tag=WitherCharging] facing entity @e[tag=WitherChargeEnd,limit=1,sort=nearest] eyes rotated ~ 0 anchored eyes run function explorers_eve:storm/early/charge_timer

#Any injury will stun the Storm.
execute if entity @s[scores={StormPhase=2..3}] run data modify entity @s Heads.0.Hits set value 5

#The tractor beam gives effects.
execute if entity @s[scores={StormPhase=2..3}] as @a[gamemode=!spectator,distance=..32] run function explorers_eve:storm/beam/check

#If the player's getting beamed, no skulls.
execute if entity @a[tag=InBeam,distance=..32] run function explorers_eve:storm/early/prevent_skulls

#No Wither Sickness this early.
execute as @a run witherstormmod sickness cure @s

#If the player is deathly close, make them be not dead probably.
effect give @a[distance=..12] minecraft:saturation 1 64 true

#Mark a portal to teleport to when the player uses it.
execute unless entity @e[tag=StormTeleportActive] unless entity @a[gamemode=!spectator,distance=0..] if entity @a[gamemode=!spectator,predicate=!explorers_eve:invalid_teleport] run function explorers_eve:storm/teleport/mark

#If Silent Storm mode is active, become silent.
execute if data storage world SilentStorm run function explorers_eve:storm/silent

#Progress phases continually.
scoreboard players add @s EvolutionTime 10
execute unless entity @a[gamemode=!spectator,distance=1..] if entity @a[gamemode=!spectator] run scoreboard players add @s EvolutionTime 5
execute if score @s EvolutionTime matches ..14999 run witherstormmod phase set @s 0
execute if score @s EvolutionTime matches 15000..19999 run witherstormmod phase set @s 1
execute if score @s EvolutionTime matches 20000..24999 run witherstormmod phase set @s 1.1
execute if score @s EvolutionTime matches 25000..29999 run witherstormmod phase set @s 1.2
execute if score @s EvolutionTime matches 30000..89999 run witherstormmod phase set @s 2
execute if score @s EvolutionTime matches 90000..149999 run witherstormmod phase set @s 2.1
execute if score @s EvolutionTime matches 150000..199999 run witherstormmod phase set @s 3
execute if score @s EvolutionTime matches 200000..249999 run witherstormmod phase set @s 3.1
execute if score @s EvolutionTime matches 250000..279999 run witherstormmod phase set @s 3.2
execute if score @s EvolutionTime matches 280000..299999 run witherstormmod consumedEntities set @s blackhole
execute if score @s EvolutionTime matches 300000.. run function explorers_eve:storm/early/evolve