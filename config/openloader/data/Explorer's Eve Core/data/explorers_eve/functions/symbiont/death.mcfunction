#Hurt the Storm!
execute as @w at @s run function explorers_eve:storm/injury/start
execute if predicate explorers_eve:end positioned 0 100 0 unless entity @s[distance=..800] at @s run advancement grant @a[distance=..64] only explorers_eve:life_on_the_edge

#Also set a mark, it'll scatter dust around.
execute positioned ~ ~3 ~ run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["SymbiontLoot"]}