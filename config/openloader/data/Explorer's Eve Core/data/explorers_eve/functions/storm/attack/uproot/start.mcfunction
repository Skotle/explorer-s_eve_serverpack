#Setup for digging that only needs to be done once. The UprootPullSource is handled every tick.
tag @s add UprootActive
tag @s remove AttackReady

playsound witherstormmod:bowels_loud_hurt hostile @a[distance=..300] ~ ~ ~ 1 1.5 1
summon minecraft:area_effect_cloud ^ ^15 ^ {Duration:6000,Tags:["UprootPullSource"]}
execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:6000,Tags:["UprootPullTarget"]}
execute as @e[tag=UprootPullSource] at @s run tp @s ~ ~ ~ facing entity @e[tag=UprootPullTarget,limit=1,sort=nearest]
execute as @e[tag=UprootPullSource] at @s facing entity @e[tag=UprootPullTarget,limit=1,sort=nearest] eyes run function explorers_eve:storm/attack/uproot/find_start
function explorers_eve:storm/attack/uproot/particle_timer