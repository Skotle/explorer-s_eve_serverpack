#Aggressively check for a phase change to prevent unfairness.
execute store result score @s StormPhase run witherstormmod phase get @s

#Make pretty particles and warnings!
scoreboard players remove @s WitherChargeDelay 1
execute if score @s StormPhase matches 2.. run scoreboard players set @s WitherChargeDelay -1
tp @s @e[tag=StormHold,limit=1,sort=nearest]
execute positioned ~ ~1.5 ~ run particle minecraft:dust 0.5 0 0 1.5 ~ ~ ~ 0.5 1 0.5 1 10

execute if score @s WitherChargeDelay matches 40 facing entity @e[tag=WitherChargeEnd,limit=1,sort=nearest] eyes run function explorers_eve:storm/early/charge_warn
execute if score @s WitherChargeDelay matches 30 facing entity @e[tag=WitherChargeEnd,limit=1,sort=nearest] eyes run function explorers_eve:storm/early/charge_warn
execute if score @s WitherChargeDelay matches 20 facing entity @e[tag=WitherChargeEnd,limit=1,sort=nearest] eyes run function explorers_eve:storm/early/charge_warn
execute if score @s WitherChargeDelay matches 10 facing entity @e[tag=WitherChargeEnd,limit=1,sort=nearest] eyes run function explorers_eve:storm/early/charge_warn
execute if score @s WitherChargeDelay matches 0 facing entity @e[tag=WitherChargeEnd,limit=1,sort=nearest] eyes run function explorers_eve:storm/early/charge_end
execute if score @s WitherChargeDelay matches -1 run function explorers_eve:storm/early/charge_cancel