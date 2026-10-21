#Mark the Super TNT and wait for detonation.
summon marker ~ ~ ~ {Tags:["SuperTNTTracker"]}
ride @e[tag=SuperTNTTracker,limit=1,sort=nearest] mount @s
tag @s add DistractionChecked