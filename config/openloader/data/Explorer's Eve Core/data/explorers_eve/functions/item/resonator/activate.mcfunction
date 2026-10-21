#Pretty lights!
execute if entity @s[tag=DawnResonator] run playsound blue_skies:block.everdawn.portal.travel block @a ~ ~ ~
execute if entity @s[tag=BrightResonator] run playsound blue_skies:block.everbright.portal.travel block @a ~ ~ ~
execute if entity @s[tag=DawnResonator] run particle blue_skies:star_flare 1 0.4 0.4 ~ ~-0.2 ~ 2 0.05 2 0.05 1000
execute if entity @s[tag=BrightResonator] run particle blue_skies:star_flare 0.2 0.9 0.9 ~ ~-0.2 ~ 2 0.05 2 0.05 1000

kill @e[tag=ResonatorPoint,distance=..3.85]

#Marker!
tag @s add Active