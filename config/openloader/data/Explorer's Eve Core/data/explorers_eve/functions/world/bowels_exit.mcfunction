#Activates upon leaving the Wither Storm.
advancement revoke @s only explorers_eve:exit_bowels

#Remove map effects.
effect clear @s xaeroworldmap:no_world_map
effect clear @s xaerominimap:no_minimap

#Set your spawn? Nope, no going back.
execute if data entity @s {SpawnDimension:"witherstormmod:bowels"} positioned over motion_blocking_no_leaves unless block ~ ~ ~ #explorers_eve:liquid run spawnpoint @s ~ ~ ~ ~
execute if data entity @s {SpawnDimension:"witherstormmod:bowels"} positioned over motion_blocking_no_leaves if block ~ ~ ~ #explorers_eve:liquid positioned over world_surface run spawnpoint @s ~ ~ ~ ~

#Come from Blue Skies? Well, then take care of this.
execute if entity @s[tag=BlueSkiesBowels] unless entity @s[tag=KeepingCurseBroken] unless predicate explorers_eve:blue_skies run tag @s add ExitedBlueSkies
execute if entity @s[tag=BlueSkiesBowels] unless entity @s[tag=KeepingCurseBroken] unless predicate explorers_eve:blue_skies in witherstormmod:bowels positioned 0 200 0 run function explorers_eve:world/blue_skies/take_inventory

#Manage this tag, just in case. This gets added if the player enters the Wither Storm in a Blue Skies dimension.
execute unless predicate explorers_eve:blue_skies run tag @s remove BlueSkiesBowels