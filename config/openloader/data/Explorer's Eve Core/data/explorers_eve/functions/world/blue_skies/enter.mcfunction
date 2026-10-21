#Activates when the player enters the Everbright or Everdawn.
advancement revoke @s only explorers_eve:enter_blue_skies
tag @s add EnteredBlueSkies

#Recover inventory from the other marker.
execute unless entity @s[tag=KeepingCurseBroken] unless entity @s[tag=BlueSkiesBowels] unless entity @s[tag=InBlueSkies] in witherstormmod:bowels positioned 0 200 0 run function explorers_eve:world/blue_skies/take_inventory
tag @s remove EnteredBlueSkies

#No need for the Gatekeeper's book!
blue_skies set_lore_used true

#And remove this weird tag. It's added for weirdos who try to enter the Wither Storm from Blue Skies.
tag @s remove BlueSkiesBowels

#Also track this.
tag @s add InBlueSkies