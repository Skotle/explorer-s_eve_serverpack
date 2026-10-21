#It doesn't actually rotate. It just pretends to.
execute if entity @p[tag=UsingLamp,distance=..16] if block ^ ^ ^0.5 #explorers_eve:air_like run summon aether:fire_crystal ^ ^ ^0.5 {Tags:["LampRotate"],Owner:[I;0,0,0,0],Motion:[0d,0d,0d],XSpeed:0d,YSpeed:0d,ZSpeed:0d,Invulnerable:1b}
execute positioned ^ ^ ^0.5 as @e[tag=LampRotate,limit=1,sort=nearest] run data modify entity @s Owner set from entity @p[tag=UsingLamp] UUID
kill @s