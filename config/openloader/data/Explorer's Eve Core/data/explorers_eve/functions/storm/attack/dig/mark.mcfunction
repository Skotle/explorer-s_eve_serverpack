#Setup for digging to aim the Wither Storm without suddenly teleporting it.
tag @s add DigAiming
tag @s remove AttackReady

tag @p[gamemode=!spectator] add DigAimTarget

#Lock the Wither Storm in place.
execute at @p[tag=DigAimTarget,limit=1,sort=nearest] run witherstormmod ultimateTarget set @s ~ ~ ~
execute store result score $EnableStrolling Math run witherstormmod config server get server.ultimate_target_logic.random_strolling.randomStrollingWhenTargetHidden
witherstormmod config server set server.ultimate_target_logic.random_strolling.randomStrollingWhenTargetHidden false
witherstormmod config server set server.misc.rotationSpeed 0.5