#Add 25% extra damage when empowered.
scoreboard players set @s Math 150
scoreboard players operation @s Damage *= @s Math
scoreboard players set @s Math 100
scoreboard players operation @s Damage /= @s Math