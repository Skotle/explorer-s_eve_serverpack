#Take care of essential battle prep. First, clear up those pretty effects.
effect clear @s glowing
particle blue_skies:star_flare 1 0 1 ~ ~2 ~ 0.45 1 0.45 0.1 200

#Track it, unless it's in the true final battle.
tag @s add SymbiontBattleStart
execute if score @w[distance=..500] StormPhase matches 6.. run tag @s add SymbiontRematch
execute if entity @w[tag=Resummoned,distance=..500] run tag @s add Resummoned
execute unless dimension witherstormmod:bowels unless entity @s[tag=FinalBossMinion] run summon marker ~ ~ ~ {Tags:["SymbiontTracker"]}
execute unless dimension witherstormmod:bowels unless entity @s[tag=FinalBossMinion] as @w[tag=!TNTDistracted,distance=..500] run function explorers_eve:storm/symbiont_move_start

#In the rematch, it also gains more health.
execute unless dimension witherstormmod:bowels if entity @s[tag=SymbiontRematch,tag=!FinalBossMinion,tag=!Resummoned] run attribute @s minecraft:generic.max_health modifier add 1542d04f-2161-41cb-b968-aa41de8930d7 RematchBoost 0.3 multiply
execute if entity @s[tag=Resummoned,tag=!FinalBossMinion] run attribute @s minecraft:generic.max_health modifier add 1542d04f-2161-41cb-b968-aa41de8930d7 ResummonBoost -0.33 multiply

#Update scoreboards/health to their new values.
execute store result entity @s Health float 0.5 run attribute @s minecraft:generic.max_health get
execute store result score @s HealthLimit run data get entity @s Health
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health
execute if dimension witherstormmod:bowels store result score @s HealthLimit run data get entity @s Health

#Unbreakable, undroppable Leather Boots with Blast Protection to severely limit cheese via explosions or Powder Snow. Except it's a stick so it's not visible.
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1495567986,1046236924,-1827436314,1327856578],Slot:"feet"}]} 1
data modify entity @s ArmorItems[0].id set value "minecraft:brick"
data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]

#It also moves faster.
attribute @s minecraft:generic.movement_speed modifier add 1d32104f-3438-12cb-b968-aa41de8930d7 SymbiontSpeed 0.5 multiply

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true

#True final battle effects.
execute if entity @s[tag=FinalBossMinion] run attribute @s minecraft:generic.max_health modifier add 1543d04f-2a91-43ab-b568-aa41ce8932d7 FinalBossHP -0.5 multiply_base
execute if entity @s[tag=FinalBossMinion] store result entity @s Health float 1 run scoreboard players get @s HealthLimit
execute if entity @s[tag=FinalBossMinion] run attribute @s minecraft:generic.movement_speed modifier add 1d67104f-3438-12cb-b968-aa41de8930d7 SymbiontSpeed 0.625 multiply