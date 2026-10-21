#Brief delay between crystals.
scoreboard players add @s Math 1
execute if entity @s[tag=FireCrystalWall] positioned ^ ^ ^1 run function explorers_eve:boss/sun_spirit/wall_mark
execute if entity @s[tag=FireCrystalDelayed,scores={Math=15..}] run function explorers_eve:boss/sun_spirit/wall_spawn