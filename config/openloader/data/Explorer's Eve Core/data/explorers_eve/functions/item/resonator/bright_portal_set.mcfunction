#Pretty lights!
playsound blue_skies:block.everbright.portal.trigger block @a ~ ~ ~
playsound blue_skies:entity.summoner.prepare_attack block @a ~ ~ ~
particle blue_skies:star_flare 0.2 0.9 0.9 ~ ~0.25 ~ 0.5 0.05 0.5 0.05 40

#Marker!
summon area_effect_cloud ~ ~0.25 ~ {Duration:5000,Tags:["BlueSkiesResonator","BrightResonator"]}
scoreboard players set @e[tag=BlueSkiesResonator,limit=1,sort=nearest] ResonatorTime -80