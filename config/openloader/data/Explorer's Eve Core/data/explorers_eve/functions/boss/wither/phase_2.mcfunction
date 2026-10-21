#Give it resistance so the fight lasts longer.
tag @s add Phase2
attribute @s minecraft:generic.armor modifier add 1d32104f-3438-41ab-b968-ad21de8530d7 WitherArmor 6 add
attribute @s minecraft:generic.armor_toughness modifier add 1d32104f-3438-41ab-b968-ad21de8530d7 WitherToughness 8 add
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 1 1
execute positioned ~ ~1.5 ~ run particle minecraft:explosion_emitter