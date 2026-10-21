#Clear out old marks.
execute as @e[tag=PortalNoiseMark] at @s run function explorers_eve:world/nether_portal_mark_remove

#Mark this portal's chunks and coordinates.
execute in the_nether run forceload add ~ ~ ~ ~
summon marker ~ ~ ~ {Tags:["PortalNoiseMark","PortalNoiseNether"]}
execute in overworld run forceload add ~ ~ ~ ~
execute in overworld positioned over world_surface run summon marker ~ ~64 ~ {Tags:["PortalNoiseMark","PortalNoiseOverworld"]}

#And give the noise marker some important scores.
scoreboard players set @e[tag=PortalNoiseNether] RandomRange 10
scoreboard players set @e[tag=PortalNoiseNether] RandomValue 30