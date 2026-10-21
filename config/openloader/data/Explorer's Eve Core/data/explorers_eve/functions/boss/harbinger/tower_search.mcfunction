#Find the EMP.
scoreboard players add @s Math 1
execute unless score @s Math matches 32.. unless block ~ ~ ~ cataclysm:emp positioned ~ ~1 ~ run function explorers_eve:boss/harbinger/tower_search
execute unless score @s Math matches 32.. if block ~ ~ ~ cataclysm:emp run function explorers_eve:boss/harbinger/tower_set
execute if score @s Math matches 32.. positioned over motion_blocking positioned ~ ~2.5 ~ run function explorers_eve:boss/harbinger/tower_set