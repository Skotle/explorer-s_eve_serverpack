#Resets the Wither Storm's aggression.
playsound witherstormmod:withered_beacon_deactivate block @a[distance=0..] ~ ~ ~ 1 1 1
kill @e[tag=SuperTNTMarker,limit=1,sort=nearest]
kill @e[tag=SuperTNTParticles]
witherstormmod ultimateTarget clear @s[tag=!Injured] pos
execute if score $SymbiontEnabled Math matches 0 run witherstormmod config server set server.withered_symbiont.canSummonSymbiont false
execute if score $SymbiontEnabled Math matches 1 run witherstormmod config server set server.withered_symbiont.canSummonSymbiont true
tag @s remove TNTDistracted
scoreboard players reset @s TNTDistractionTime