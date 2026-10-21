#Functions that should only run once, even if /trigger Reload is used.
loot give @s loot minecraft:chests/spawn_bonus_chest
give @s patchouli:guide_book{"patchouli:book":"patchouli:explorers_eve"}
execute store result score @s UUID run data get entity @s UUID[0]