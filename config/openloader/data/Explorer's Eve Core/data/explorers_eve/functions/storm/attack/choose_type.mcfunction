#Reset skull attack timer.
scoreboard players set @s RandomRange 500
function explorers_eve:random
scoreboard players operation @s StormAttackWait = @s RandomValue
scoreboard players add @s StormAttackWait 1000
execute if entity @e[tag=SymbiontBattleStart,distance=..300] run scoreboard players add @s StormAttackWait 1000

#Make sure to face the player, if possible!
execute at @p[gamemode=!spectator] unless entity @a[tag=InBeam,distance=..3] at @s run function explorers_eve:storm/face_player

#Then choose what kind of attack to do.
tag @s add StormAttacking

execute if entity @s[tag=AttackReady,tag=RotateSuccess,scores={BlockCount=1..}] at @p[gamemode=!spectator] if predicate explorers_eve:unbreakable_dungeon at @s run function explorers_eve:storm/attack/uproot/start
execute if entity @s[tag=AttackReady,scores={BlockCount=8..}] run function explorers_eve:storm/attack/dig/mark
execute if entity @s[tag=AttackReady,tag=Phase6Chase] run function explorers_eve:storm/attack/choose_phase_6
execute if entity @s[tag=AttackReady,scores={BlockCount=..7}] at @p[gamemode=!spectator] unless entity @a[gamemode=!spectator,tag=RecentDeath,distance=..2] at @s run function explorers_eve:storm/attack/choose_basic

tag @s remove RotateSuccess