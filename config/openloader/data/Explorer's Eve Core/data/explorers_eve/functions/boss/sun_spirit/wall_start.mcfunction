#Spawn markers to make a wall of fire crystals.
summon area_effect_cloud ~ ~ ~ {Tags:["FireCrystalWall","WallX"],Rotation:[90f,0f],Duration:40}
summon area_effect_cloud ~ ~ ~ {Tags:["FireCrystalWall","WallX"],Rotation:[-90f,0f],Duration:40}
summon area_effect_cloud ~ ~ ~ {Tags:["FireCrystalWall","WallZ"],Rotation:[0f,0f],Duration:40}
summon area_effect_cloud ~ ~ ~ {Tags:["FireCrystalWall","WallZ"],Rotation:[180f,0f],Duration:40}
execute if score @s Health matches 20.. run function explorers_eve:boss/sun_spirit/wall_trim

particle flame ~ ~ ~ 0.25 2 0.25 0.01 25
summon marker ~ ~ ~ {Tags:["FireCrystalDelayed"]}