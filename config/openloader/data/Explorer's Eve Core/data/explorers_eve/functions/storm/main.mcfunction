#These checks are all done by the Wither Storm to save on entity searching.
#Check if the player's in the tractor beam.
execute as @a[gamemode=!spectator,distance=..400] at @s at @e[type=#explorers_eve:wither_storm_part,distance=..200] run function explorers_eve:storm/beam/check

#Check if the player is nearby.
execute if entity @a[gamemode=!spectator,distance=..265] run tag @s add AttackReady

#Mobs will wander around the surface when a player gets near enough. Handle this with these commands.
execute unless entity @s[tag=MobsSpawned] if entity @a[gamemode=!spectator,distance=..180] unless predicate explorers_eve:too_much_water run function explorers_eve:storm/mobs_start
execute if entity @s[tag=MobsSpawned] unless entity @a[gamemode=!spectator,distance=..180] unless entity @e[tag=StormSpawned,distance=..200] run tag @s remove MobsSpawned

#Check if the player is gaining Wither Sickness time, or if it's hit its cap. This shouldn't do anything if the Storm is too close. It's good for checking the underground, though.
execute as @a[gamemode=!spectator,distance=..600] run function explorers_eve:storm/sickness_check

#During the phase 6 chase, distance means less.
execute if entity @s[tag=Phase6Chase] if entity @a[gamemode=!spectator,distance=..600] run tag @s add AttackReady

#is there a reason for an attack to not happen? If so, remove the tag.
execute if entity @s[tag=StormAttacking] run tag @s remove AttackReady
execute if entity @s[tag=TNTDistracted] run tag @s remove AttackReady
execute if entity @s[tag=SymbiontHelp] run tag @s remove AttackReady
execute if entity @e[type=witherstormmod:formidibomb,distance=..300] run tag @s remove AttackReady
execute if entity @s[tag=Injured] run tag @s remove AttackReady
execute if entity @s[tag=FormidibombAngry] run tag @s remove AttackReady
execute if entity @s[tag=DigAiming] run tag @s remove AttackReady
execute if entity @a[gamemode=!spectator,tag=InBeam,distance=..300] run tag @s remove AttackReady

#If an attack is possible, choose which one.
execute if entity @s[tag=AttackReady] run function explorers_eve:storm/attack/timer

#While aiming the dig attack, check to see if aiming is finished.
execute if entity @s[tag=DigAiming] run function explorers_eve:storm/attack/dig/wait

#If the Storm has killed a player, wait for them to respawn before getting distracted.
execute if entity @s[tag=StormMercyWait] unless entity @a[gamemode=!spectator,distance=..300] if entity @a[gamemode=!spectator,nbt=!{Health:0f}] run function explorers_eve:storm/mercy_start

#If the Storm is in a mercy distraction, watch and see if the distraction should end early.
execute if entity @s[tag=StormMercyDistracted] run function explorers_eve:storm/mercy_track

#If the Storm is injured, it waits to be uninjured.
execute if entity @s[tag=Injured] run function explorers_eve:storm/injury/timer

#If it's distracted by Super TNT, it waits for the distraction to end. No getting distracted elsewhere!
execute if entity @s[tag=TNTDistracted] run function explorers_eve:item/super_tnt/timer

#If this is a resummoned Storm, completely override progression before the Formidibomb.
execute if entity @s[scores={StormPhase=4..5},tag=Resummoned,tag=!BombLit] run function explorers_eve:storm/resummoned_evolution

#Handler for phase 4's progress, which this pack overrides.
execute if entity @s[scores={StormPhase=4},tag=!Resummoned] run function explorers_eve:storm/phase_4_hold

#Backup check just in case commands are used to play with progression.
execute if entity @s[tag=Phase4ChasePrep,scores={StormPhase=5..}] run function explorers_eve:storm/early_data_clear

#If the Storm is in Phase 5 and the player doesn't have Super TNT, keep it there.
execute if entity @s[scores={StormPhase=5},tag=!SymbiontReady,tag=!Resummoned] run function explorers_eve:storm/phase_5_hold

#Handles positioning when a Symbiont fight starts.
execute if entity @s[tag=SymbiontMoving] run function explorers_eve:storm/symbiont_move_timer

#Activates when the Storm is in Phase 6, has three heads, and hasn't yet chased the player.
execute if entity @s[scores={StormPhase=6},tag=!Phase6Chase,nbt={OtherHeadsDisabled:1b}] run function explorers_eve:storm/phase_6_chase

#No distractions during the phase 6 chase!
execute if entity @s[tag=Phase6Chase] run witherstormmod ultimateTarget distractions makeFocused @s

#Activates when the Storm has three heads and hasn't 'revived recently'. This time should be the same as the player protection time after playing dead.
execute if entity @s[tag=Phase6Chase,nbt={PlayDeadManager:{RecentlyRevived:0b,State:0}}] run function explorers_eve:storm/phase_6_heal

#Once the Storm heals fully in phase 6, no more progression until the right time.
execute if entity @s[scores={StormPhase=6},tag=!Phase6Chase,tag=!Resummoned] run function explorers_eve:storm/phase_6_hold

#If the Storm is in Phase 6+ and a Formidibomb is nearby, it gets very mad.
execute if entity @s[tag=FormidibombAngry,tag=!StormAttacking,tag=!TNTDistracted] run function explorers_eve:storm/attack/formidibomb_target

#In Blue Skies, be very vulnerable.
execute if predicate explorers_eve:blue_skies unless entity @a[tag=InBeam] as @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest,distance=..200] run data merge entity @s {Heads:{0:{Hits:3},1:{Hits:3},2:{Hits:3}}}

#No fast chasing if the player dies in the bowels.
execute if entity @s[scores={StormPhase=7}] if entity @a[gamemode=!spectator] unless entity @a[gamemode=!spectator,predicate=!explorers_eve:bowels] run witherstormmod ultimateTarget chase stop @s

#Mark a portal to teleport to when the player uses it.
execute unless entity @e[tag=StormTeleportActive] unless entity @a[gamemode=!spectator,distance=0..] if entity @a[gamemode=!spectator,predicate=!explorers_eve:invalid_teleport] run function explorers_eve:storm/teleport/mark

#If the Storm's able to teleport, run teleport checks.
execute if entity @s[tag=!TNTDistracted,tag=!Injured] unless entity @s[scores={StormPhase=4}] run function explorers_eve:storm/teleport/main

#If the player's in the Nether, occasionally make a noise through the portal.
execute if entity @e[tag=PortalNoiseOverworld,distance=..256] unless data storage world SilentStorm as @e[tag=PortalNoiseNether] at @s run function explorers_eve:storm/portal_noise

#Sync player progress and config options. Kept in its own function for ease of management.
function explorers_eve:storm/config_sync

#If Incuritis mode is active, infect everyone.
execute if data storage world Incuritis as @a[gamemode=!spectator] run witherstormmod sickness infect @s