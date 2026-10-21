#Clean everything back up.
tag @s remove StormAttacking
tag @s remove DigActive
tag @s remove DigAiming
tag @a remove DigAimTarget
kill @e[tag=DigSkullTarget,limit=1,sort=nearest]

#Remove the holding attributes.
witherstormmod ultimateTarget clear @s pos
execute if score $EnableStrolling Math matches 1 run witherstormmod config server set server.ultimate_target_logic.random_strolling.randomStrollingWhenTargetHidden true
witherstormmod config server set server.misc.rotationSpeed default
execute if entity @s[tag=Resummoned] run witherstormmod config server set server.misc.rotationSpeed 0.3