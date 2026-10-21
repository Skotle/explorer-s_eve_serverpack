#Pretty lights!
playsound blue_skies:block.everdawn.portal.trigger block @a ~ ~ ~
playsound blue_skies:entity.alchemist.prepare_blindness block @a ~ ~ ~
particle blue_skies:star_flare 1 0.4 0.4 ~ ~0.25 ~ 0.5 0.05 0.5 0.05 40

#Marker!
summon area_effect_cloud ~ ~0.25 ~ {Duration:5000,Tags:["BlueSkiesResonator","DawnResonator"]}
scoreboard players set @e[tag=BlueSkiesResonator,limit=1,sort=nearest] ResonatorTime -80