#Heal the heads.
playsound witherstormmod:wither_storm_reactivates hostile @a[distance=0..] ~ ~ ~ 1 1 1
data merge entity @s {Heads:{0:{InjuryTime:0},1:{InjuryTime:0},2:{InjuryTime:0}}}
execute as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..200] run data merge entity @s {Heads:{0:{InjuryTime:0},1:{InjuryTime:0},2:{InjuryTime:0}}}

#Update tags and let the Storm chase again. Not right now, though.
witherstormmod ultimateTarget clear @s pos
execute if entity @s[tag=TNTDistracted] at @e[tag=SuperTNTMarker,limit=1,sort=nearest] run witherstormmod ultimateTarget set @w ~ ~ ~
execute if entity @s[tag=FormidibombAngry] at @e[tag=AngerFocus,limit=1,sort=nearest] run witherstormmod ultimateTarget set @w ~ ~ ~
tag @s remove Injured
execute unless entity @s[tag=BowelsReady] run witherstormmod config server set server.withered_symbiont.canSummonSymbiont true
witherstormmod config server set server.misc.flyingHeight 50
witherstormmod ultimateTarget chase stop @s
witherstormmod ultimateTarget distractions makeFocused @s