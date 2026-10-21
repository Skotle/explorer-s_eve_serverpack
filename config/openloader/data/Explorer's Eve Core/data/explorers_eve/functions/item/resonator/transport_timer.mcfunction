#After 80 ticks, teleport!
scoreboard players add @s ResonatorTime 1
execute if score @s ResonatorTime matches 80.. run function explorers_eve:item/resonator/teleport_choose

#Make particles based on which portal this is.
execute if entity @s[tag=BrightTransport] run particle blue_skies:everbright_portal ~ ~ ~ 0.2 0.5 0.2 0.001 10
execute if entity @s[tag=DawnTransport] run particle blue_skies:everdawn_portal ~ ~ ~ 0.2 0.5 0.2 0.001 10
execute if entity @s[tag=BrightTransport] run particle blue_skies:blue_flame ~ ~1 ~ 0.2 0.5 0.2 0.05 2
execute if entity @s[tag=DawnTransport] run particle blue_skies:black_flame ~ ~1 ~ 0.2 0.5 0.2 0.05 2