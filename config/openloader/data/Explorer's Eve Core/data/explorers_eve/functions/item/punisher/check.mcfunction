#Reset the scoreboard and, if applicable, tag the fishing bobber.
scoreboard players reset @s FishingRodUsed
execute if predicate explorers_eve:punisher at @s run tag @e[type=minecraft:fishing_bobber,limit=1,sort=nearest] add PunisherBobber
execute if predicate explorers_eve:punisher if predicate explorers_eve:empowered at @s run tag @e[type=minecraft:fishing_bobber,limit=1,sort=nearest] add Empowered