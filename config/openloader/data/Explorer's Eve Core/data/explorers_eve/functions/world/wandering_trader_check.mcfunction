#Only actually upgrade if the panel hunt has properly started.
tag @s add TraderUpgraded
execute if data storage world WitherStormSplit run function explorers_eve:world/wandering_trader_upgrade