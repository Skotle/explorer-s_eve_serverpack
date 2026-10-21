#Depending on which dimension the player's in, go to the right one.
tag @s add NeedsTeleport
execute if dimension blue_skies:everbright run tag @s add BrightMark
execute if dimension blue_skies:everdawn run tag @s add DawnMark
execute if entity @s[tag=NeedsTeleport,predicate=!explorers_eve:everbright,tag=BrightTransport] in blue_skies:everbright run function explorers_eve:item/resonator/teleport
execute if entity @s[tag=NeedsTeleport,predicate=explorers_eve:everbright,tag=BrightTransport] in minecraft:overworld run function explorers_eve:item/resonator/teleport
execute if entity @s[tag=NeedsTeleport,predicate=!explorers_eve:everdawn,tag=DawnTransport] in blue_skies:everdawn run function explorers_eve:item/resonator/teleport
execute if entity @s[tag=NeedsTeleport,predicate=explorers_eve:everdawn,tag=DawnTransport] in minecraft:overworld run function explorers_eve:item/resonator/teleport

#Effects!
execute if entity @s[tag=BrightTransport] at @s run playsound blue_skies:block.everbright.portal.travel block @a ~ ~ ~
execute if entity @s[tag=DawnTransport] at @s run playsound blue_skies:block.everdawn.portal.travel block @a ~ ~ ~
execute if entity @s[tag=BrightTransport] at @s run particle blue_skies:everbright_portal ~ ~ ~ 0.2 0.5 0.2 0.001 500
execute if entity @s[tag=DawnTransport] at @s run particle blue_skies:everdawn_portal ~ ~ ~ 0.2 0.5 0.2 0.001 500
execute if entity @s[tag=BrightTransport] at @s run particle blue_skies:blue_flame ~ ~1 ~ 0.2 0.5 0.2 0.2 200
execute if entity @s[tag=DawnTransport] at @s run particle blue_skies:black_flame ~ ~1 ~ 0.2 0.5 0.2 0.2 200

#Cleanup.
tag @s remove BrightTransport
tag @s remove DawnTransport
tag @s remove BrightMark
tag @s remove DawnMark
tag @s remove ResonatorTeleporting
scoreboard players reset @s ResonatorTime