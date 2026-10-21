#Slow down baby zombies.
execute if entity @s[nbt={IsBaby:1b}] run attribute @s generic.movement_speed base set 0.15
tag @s add BabyChecked

#While we're here, if this is a villager, make sure it ISN'T a Cleric. Clerics can sell tainted dust. NOPE. Farmers can sell stew, but honestly, that's fine.
execute if entity @s[type=witherstormmod:sickened_villager,nbt={VillagerData:{profession:"minecraft:cleric"}}] run data modify entity @s VillagerData.profession set value "minecraft:nitwit"