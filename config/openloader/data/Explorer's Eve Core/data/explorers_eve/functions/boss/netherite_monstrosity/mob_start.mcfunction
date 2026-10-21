#Spawn several markers.
summon marker ~5 ~-1 ~5 {Tags:["MonstrosityMobMark"]}
summon marker ~5 ~-1 ~-5 {Tags:["MonstrosityMobMark"]}
summon marker ~-5 ~-1 ~5 {Tags:["MonstrosityMobMark"]}
summon marker ~-5 ~-1 ~-5 {Tags:["MonstrosityMobMark"]}

#Reset the timer.
scoreboard players set @s RandomRange 300
function explorers_eve:random
scoreboard players operation @s MonstrosityTime = @s RandomValue
scoreboard players add @s MonstrosityTime 600
execute if entity @s[tag=FinalBattle] run scoreboard players remove @s MonstrosityTime 500

#Also count how many things are nearby. Too few, immediately buff the timer.
execute store result score @s Math if entity @e[tag=MonstrositySupport,distance=..32]
execute if entity @s[scores={Math=..1}] run scoreboard players set @s MonstrosityTime 200

#If there are too many mobs, kill some markers. No markers if 10 mobs exist.
execute if entity @s[scores={Math=6..}] run kill @e[tag=MonstrosityMobMark,limit=2,distance=..40,sort=random]
execute if entity @s[scores={Math=10..}] run kill @e[tag=MonstrosityMobMark,limit=2,distance=..40,sort=random] 