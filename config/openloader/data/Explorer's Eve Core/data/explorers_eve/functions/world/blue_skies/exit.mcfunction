#Activates when the player leaves the Everbright or Everdawn.
advancement revoke @s only explorers_eve:exit_blue_skies
tag @s add ExitedBlueSkies

#Recover inventory from the other marker.
execute unless entity @s[tag=KeepingCurseBroken] unless dimension witherstormmod:bowels unless predicate explorers_eve:blue_skies in witherstormmod:bowels positioned 0 200 0 run function explorers_eve:world/blue_skies/take_inventory
tag @s remove ExitedBlueSkies

#Tag the player if they enter the Wither Storm from Blue Skies for no good reason.
execute if dimension witherstormmod:bowels run tag @s add BlueSkiesBowels