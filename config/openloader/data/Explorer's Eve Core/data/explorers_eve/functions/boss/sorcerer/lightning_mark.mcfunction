#Summon a marker and put it near a player.
summon area_effect_cloud ~ ~ ~ {Tags:["SorcererLightningMark","NewSorcererLightning"],Duration:200}
spreadplayers ~ ~ 0 5 false @e[tag=NewSorcererLightning,limit=1,sort=nearest]
execute as @e[tag=NewSorcererLightning] at @s if entity @e[tag=SorcererBeaconTracker,distance=..5] run kill @s
tag @e[tag=NewSorcererLightning] remove NewSorcererLightning