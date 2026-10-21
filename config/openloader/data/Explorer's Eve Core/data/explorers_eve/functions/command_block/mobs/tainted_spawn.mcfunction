#Pick a random mob.
scoreboard players set @s RandomRange 70
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue

#The mobs are divided into tiers, which go up as the fight lasts longer. Even tier 1 gets a bonus because it's easier to read.
execute if entity @s[tag=Tier1] run scoreboard players add @s Math 100
execute if entity @s[tag=Tier2] run scoreboard players add @s Math 200
execute if entity @s[tag=Tier3] run scoreboard players add @s Math 300
execute if entity @s[tag=Tier4] run scoreboard players add @s Math 400

#Spawning time! Mobs should be ordered in terms of strength, so a lower number is less dangerous.
#Tier 1.
execute if entity @s[scores={Math=100..109}] run summon blue_skies:armored_frost_spirit ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=110..119}] run summon minecraft:slime ~ ~ ~ {Tags:["SummonedMob"],Size:4}
execute if entity @s[scores={Math=120..129}] run summon blue_skies:nyctofly ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=130..139}] run summon aether:mimic ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=140..149}] run summon twilightforest:minotaur ~ ~ ~ {Tags:["SummonedMob"],HandItems:[{id:"twilightforest:gold_minotaur_axe",Count:1b},{}]}
execute if entity @s[scores={Math=150..159}] run summon twilightforest:blockchain_goblin ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=160..169}] run summon twilightforest:skeleton_druid ~ ~ ~ {Tags:["SummonedMob"],HandItems:[{id:"minecraft:golden_hoe",Count:1b},{}]}

#Tier 2.
execute if entity @s[scores={Math=200..209}] run summon blue_skies:diophyde_prowler ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=210..219}] run summon blue_skies:infested_swarmer ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=220..224}] run summon aether:blue_swet ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=225..229}] run summon aether:golden_swet ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=230..239}] run summon twilightforest:fire_beetle ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=240..249}] run summon twilightforest:wraith ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=250..259}] run summon minecraft:stray ~ ~ ~ {Tags:["SummonedMob"],HandItems:[{id:"minecraft:bow",Count:1b},{}]}
execute if entity @s[scores={Math=260..269}] run summon twilightforest:pinch_beetle ~ ~ ~ {Tags:["SummonedMob"]}

#Tier 3.
execute if entity @s[scores={Math=300..309}] run summon cataclysm:endermaptera ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=310..319}] run summon blue_skies:polargeist ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=320..329}] run summon twilightforest:stable_ice_core ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=330..339}] run summon blue_skies:emberback ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=340..349}] run summon aether:sentry ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=350..359}] run summon minecraft:drowned ~ ~ ~ {Tags:["SummonedMob"],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
execute if entity @s[scores={Math=360..369}] run summon twilightforest:king_spider ~ ~ ~ {Tags:["SummonedMob"],Passengers:[{id:"twilightforest:skeleton_druid",Tags:["SummonedMob"],HandItems:[{id:"minecraft:golden_hoe",Count:1b},{}]}]}

#Tier 4.
execute if entity @s[scores={Math=400..409}] run summon minecraft:guardian ~ ~ ~ {Tags:["SummonedMob"],Attributes:[{Name:generic.attack_damage,Base:10}]}
execute if entity @s[scores={Math=410..419}] run summon blue_skies:crynocerous ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=420..429}] run summon twilightforest:yeti ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=430..439}] run summon blue_skies:venom_spider ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=440..449}] run summon twilightforest:death_tome ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=450..459}] run summon twilightforest:slime_beetle ~ ~ ~ {Tags:["SummonedMob"]}
execute if entity @s[scores={Math=460..469}] run summon aether:cockatrice ~ ~ ~ {Tags:["SummonedMob"]}

#Effects.
execute as @e[tag=SummonedMob] at @s run function explorers_eve:command_block/mobs/tainted_effects
particle dust 1 1 1 1 ~ ~0.4 ~ 0.4 0.8 0.4 0.05 25 force
kill @s