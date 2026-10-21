#Run checks, and based on that, either place the portal marker or fail.
kill @e[type=cataclysm:eye_of_dungeon,limit=1,sort=nearest]
scoreboard players set @s Math 0
execute if entity @e[tag=BlueSkiesResonator,distance=..16] run scoreboard players set @s Math 1
execute if entity @s[scores={Math=..0,BrightResonatorUsed=1..}] run function explorers_eve:item/resonator/bright_portal_set
execute if entity @s[scores={Math=..0,DawnResonatorUsed=1..}] run function explorers_eve:item/resonator/dawn_portal_set
execute unless score @s Math matches 0 run function explorers_eve:item/resonator/fail
scoreboard players reset @s Math
scoreboard players reset @s BrightResonatorUsed
scoreboard players reset @s DawnResonatorUsed