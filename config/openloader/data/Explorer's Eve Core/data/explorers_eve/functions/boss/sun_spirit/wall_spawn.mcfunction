#Spawn a crystal.
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.5 1.7
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","WallCrystal"],Motion:[0d,0.5d,0d],XSpeed:0d,YSpeed:0.5d,ZSpeed:0d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","WallCrystal"],Motion:[0d,-0.5d,0d],XSpeed:0d,YSpeed:-0.5d,ZSpeed:0d}
execute as @e[type=aether:fire_crystal,distance=..30] run data modify entity @s Owner set from entity @e[type=aether:sun_spirit,limit=1,sort=nearest] UUID
kill @s