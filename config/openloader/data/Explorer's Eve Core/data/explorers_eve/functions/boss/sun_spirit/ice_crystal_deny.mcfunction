#Deny iceballs from spawning.
execute as @e[type=aether:ice_crystal,distance=..20] at @s run function explorers_eve:boss/sun_spirit/ice_crystal_replace

#Check if the time's right to allow them again.
scoreboard players remove @s SunSpiritIceTime 1
execute if score @s SunSpiritIceTime matches ..-1 run tag @s remove IceDeny