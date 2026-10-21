#No drops!
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b}
tag @s add NoDrops

#If this is the miniboss Snow Guardian, apply effects here. Yes, really. It's buggy otherwise, even if this is jank.
execute if entity @s[tag=SnowGuardianSupreme] run function explorers_eve:world/snow_guardian_supreme