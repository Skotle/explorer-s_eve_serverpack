#When the dragon dies, dispose of its children and summon the Redstone Heart over the portal.
execute positioned 0 60 0 run function explorers_eve:boss/dragon/heart
tellraw @a[distance=..200] [{"text":"A ","color":"white"},{"text":"Redstone Heart","color":"red"},{"text":" has formed over the End Portal!","color":"white"}]
execute unless data storage world DragonUnspawned run summon experience_orb ~4 ~4 ~ {Value:3000}
execute unless data storage world DragonUnspawned run summon experience_orb ~-4 ~4 ~ {Value:3000}
execute unless data storage world DragonUnspawned run summon experience_orb ~ ~4 ~4 {Value:3000}
execute unless data storage world DragonUnspawned run summon experience_orb ~ ~4 ~-4 {Value:3000}
data remove storage world DragonUnspawned
kill @e[type=endertrigon:baby_ender_dragon]
kill @s