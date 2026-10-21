execute unless entity @s[predicate=explorers_eve:mining_fatigue] at @s run playsound minecraft:entity.elder_guardian.curse hostile @s
effect give @s minecraft:mining_fatigue 10 2
kill @e[tag=SnowyTempleMark,distance=..4.5]