#When the Super TNT detonates, distract the Storm by setting a new ultimate target position.
kill @e[tag=SuperTNTMarker]
kill @s
execute as @w[tag=TNTDistracted] at @s run function explorers_eve:item/super_tnt/end
tag @w add TNTDistracted
execute as @w at @s run function explorers_eve:storm/attack/dig/end
execute store result score $SymbiontEnabled Math run witherstormmod config server get server.withered_symbiont.canSummonSymbiont
witherstormmod config server set server.withered_symbiont.canSummonSymbiont false
witherstormmod ultimateTarget chase stop @w
witherstormmod ultimateTarget set @w[tag=!Injured] ~ ~ ~
summon marker ~ ~ ~ {Tags:["SuperTNTMarker"]}
fill ~ ~ ~ ~ ~-10 ~ air
playsound witherstormmod:withered_symbiont_spawn block @a[distance=1..] ~ ~ ~ 30 1.5 1