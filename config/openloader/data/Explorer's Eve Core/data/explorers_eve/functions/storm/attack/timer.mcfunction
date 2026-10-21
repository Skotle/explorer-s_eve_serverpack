#Count how many blocks are between the Storm and the player, then tick down the timer accordingly.
scoreboard players set @s BlockCount 0
execute positioned ~ ~15 ~ facing entity @p[gamemode=!spectator,distance=0..] eyes run function explorers_eve:storm/blocks_to_player
execute if entity @s[tag=Resummoned] run scoreboard players remove @s StormAttackWait 60
execute unless score @s BlockCount matches 8.. run scoreboard players remove @s StormAttackWait 75
execute if score @s BlockCount matches 8.. run scoreboard players remove @s StormAttackWait 25
execute if score @s BlockCount matches 8.. if data storage world DiggyDiggyHole run scoreboard players remove @s StormAttackWait 99999
execute at @p[gamemode=!spectator] if predicate explorers_eve:unbreakable_dungeon run scoreboard players remove @s StormAttackWait 50
execute if entity @s[tag=Phase6Chase] run scoreboard players remove @s StormAttackWait 50
execute if entity @s[scores={StormAttackWait=..-1}] run function explorers_eve:storm/attack/choose_type
tag @s remove AttackReady