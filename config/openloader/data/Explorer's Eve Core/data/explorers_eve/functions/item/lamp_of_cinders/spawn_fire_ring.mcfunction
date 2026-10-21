#Summon the spinning ring. It'll expand away from the player over time.
execute rotated ~ 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~20 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~40 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~60 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~80 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~100 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~120 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~140 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~160 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~180 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~200 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~220 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~240 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~260 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~280 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~300 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~320 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute rotated ~340 0 run summon aether:fire_crystal ^ ^0.25 ^2 {Tags:["LampRotate"]}
execute as @e[tag=LampRotate,limit=18,sort=nearest] run data modify entity @s Owner set from entity @p[tag=UsingLamp] UUID

playsound cataclysm:flame_burst hostile @a ~ ~ ~ 3 2
#scoreboard players reset @s EmpoweredLampTime