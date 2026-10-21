#The marker follows its assigned fireball.
scoreboard players operation $FireTrackTemp UUID = @s UUID
execute as @e[tag=FireTracker] if score @s UUID = $FireTrackTemp UUID run tag @s add TrackerMove
tp @e[tag=TrackerMove] @s
tag @e remove TrackerMove