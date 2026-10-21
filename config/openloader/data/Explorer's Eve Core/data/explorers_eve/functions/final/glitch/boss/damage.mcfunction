#Lose a percentage of max health whenever the Command Block is hurt.
execute store result score @s Health run data get entity @s Health
execute store result score @s Math run attribute @s generic.max_health get
scoreboard players set @s RandomValue 4
scoreboard players operation @s Math /= @s RandomValue
scoreboard players operation @s Health -= @s Math
execute if score @s Health matches ..0 unless entity @e[tag=BossShort] run tag @s add NearDeath
execute unless entity @s[tag=NearDeath] store result entity @s Health float 1 run scoreboard players get @s Health
damage @s 1 minecraft:indirect_magic
tag @s remove NearDeath