#If in the bowels, the corpse moves nearby.
execute if dimension witherstormmod:bowels run spreadplayers ~ ~ 1 16 under 140 false @e[tag=BowelsCorpse]
execute if dimension witherstormmod:bowels run tellraw @s [{"text":"Your corpse has moved somewhere nearby.","color":"gray"}]

#If not in the bowels, the corpse drops below the Wither Storm.
execute unless dimension witherstormmod:bowels as @e[tag=BowelsCorpse] at @w[tag=BowelsReady] run tp @s ~ ~ ~
execute unless dimension witherstormmod:bowels as @e[tag=BowelsCorpse,predicate=explorers_eve:bowels] at @w run tp @s ~ ~ ~
execute unless dimension witherstormmod:bowels run tellraw @s [{"text":"Your corpse falls below the Wither Storm...","color":"gray"}]

#Only corpses outside of the bowels have their tag cleared, so they'll drop if the player loses their spawn point.
tag @e[tag=BowelsCorpse,predicate=!explorers_eve:bowels] remove BowelsCorpse
tag @s remove BowelsDeath