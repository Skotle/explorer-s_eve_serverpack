#Test if this is an empowered crystal.
execute if entity @p[gamemode=!spectator,distance=..5,predicate=explorers_eve:empowered_cloud_staff] rotated as @e[type=aether:cloud_minion,limit=1,sort=nearest] run function explorers_eve:item/cloud_staff/aim

tag @s add CloudCrystalChecked