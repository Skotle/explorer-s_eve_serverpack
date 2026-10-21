#Prepare the player to teleport.
tag @s add ResonatorTeleporting
execute if entity @e[tag=DawnResonator,distance=..8] run tag @s add DawnTransport
execute if entity @e[tag=BrightResonator,distance=..8] run tag @s add BrightTransport

#Effects!
execute if entity @s[tag=DawnTransport] run playsound blue_skies:block.everdawn.portal.trigger block @a ~ ~ ~
execute if entity @s[tag=BrightTransport] run playsound blue_skies:block.everbright.portal.trigger block @a ~ ~ ~