#Progress to phase 5.25 after enough time, but never 5.5 until the player collects Super TNT.
scoreboard players add @s EvolutionTime 1
execute if score @s EvolutionTime matches 3600 run witherstormmod phase set @s 5.25
execute if entity @a[advancements={explorers_eve:super_tnt=true}] run function explorers_eve:storm/phase_5_progress