#Every 10 minutes, gain a runaway attempt.
scoreboard players add @s DeathMercy 1
execute if score @s DeathMercy matches 480.. run function explorers_eve:storm/mercy_penalty

#If a player's picked up good stuff, then it's time to end this early.
execute if entity @s[tag=StormMercyEnd] run witherstormmod ultimateTarget distractions makeFocused @s

#Once no longer distracted, reset everything.
execute unless entity @s[nbt={UltimateTargetDistraction:{IsDistracted:1b}}] run function explorers_eve:storm/mercy_end