#Is the player on the ground? If not, make sure they can't break their legs.
execute at @s if block ~ ~ ~ #explorers_eve:liquid run tag @s remove InBeam
execute if entity @s[nbt={OnGround:1b}] run tag @s remove InBeam
execute if entity @s[nbt={FallFlying:1b}] run tag @s remove InBeam
effect give @s jump_boost 1 255 true
execute unless entity @s[tag=InBeam] run effect clear @s jump_boost