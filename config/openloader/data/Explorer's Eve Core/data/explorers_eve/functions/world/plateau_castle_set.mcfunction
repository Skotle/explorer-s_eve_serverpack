#Spawn Ignis's arena.
place template explorers_eve:ignis_arena ~-23 ~-1 ~-23
execute if block ~ ~ ~ cataclysm:altar_of_fire run kill @e[type=armor_stand,distance=..5,limit=4]
execute if block ~ ~ ~ cataclysm:altar_of_fire run summon cataclysm:ignited_revenant ~ ~-8 ~6
execute if block ~ ~ ~ cataclysm:altar_of_fire run summon cataclysm:ignited_revenant ~ ~-8 ~-6