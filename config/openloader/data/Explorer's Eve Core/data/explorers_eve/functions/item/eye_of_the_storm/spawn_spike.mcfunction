#Marks spawn spikes.
summon witherstormmod:tentacle_spike ~ ~ ~ {Tags:["DefenseSpike"]}
execute as @e[tag=DefenseSpike] run data modify entity @s Owner set from entity @p[gamemode=!spectator] UUID
tag @e[tag=DefenseSpike] remove DefenseSpike
kill @s