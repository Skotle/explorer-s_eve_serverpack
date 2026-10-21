#Borrow the Wither Sickness tracker to see if the player is picked up by the Storm. If so, begin the effects loop.
execute store result score @s Math run witherstormmod tractorBeam isInBeam @s @e[type=#explorers_eve:wither_storm_part,limit=1,sort=nearest]
execute if score @s Math matches 0.. at @s run function explorers_eve:final/beam/effects