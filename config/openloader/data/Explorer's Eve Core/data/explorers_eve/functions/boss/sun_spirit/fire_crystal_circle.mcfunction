#Make a circle of slow crystals.
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0.14d,0d,0d],XSpeed:0.14d,YSpeed:0d,ZSpeed:0d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[-0.14d,0d,0d],XSpeed:-0.14d,YSpeed:0d,ZSpeed:0d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0d,0d,0.14d],XSpeed:0d,YSpeed:0d,ZSpeed:0.14d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0d,0d,-0.14d],XSpeed:0d,YSpeed:0d,ZSpeed:-0.14d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0.10d,0d,0.10d],XSpeed:0.10d,YSpeed:0d,ZSpeed:0.10d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[-0.10d,0d,0.10d],XSpeed:-0.10d,YSpeed:0d,ZSpeed:0.10d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0.10d,0d,-0.10d],XSpeed:0.10d,YSpeed:0d,ZSpeed:-0.10d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[-0.10d,0d,-0.10d],XSpeed:-0.10d,YSpeed:0d,ZSpeed:-0.10d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0.05d,0d,0.12d],XSpeed:0.05d,YSpeed:0d,ZSpeed:0.12d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[-0.05d,0d,0.12d],XSpeed:-0.05d,YSpeed:0d,ZSpeed:0.12d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0.05d,0d,-0.12d],XSpeed:0.05d,YSpeed:0d,ZSpeed:-0.12d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[-0.05d,0d,-0.12d],XSpeed:-0.05d,YSpeed:0d,ZSpeed:-0.12d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0.12d,0d,0.05d],XSpeed:0.12d,YSpeed:0d,ZSpeed:0.05d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[-0.12d,0d,0.05d],XSpeed:-0.12d,YSpeed:0d,ZSpeed:0.05d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[0.12d,0d,-0.05d],XSpeed:0.12d,YSpeed:0d,ZSpeed:-0.05d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","CircleCrystal"],Motion:[-0.12d,0d,-0.05d],XSpeed:-0.12d,YSpeed:0d,ZSpeed:-0.05d}
execute if score @s Health matches 31..50 run kill @e[tag=CircleCrystal,distance=..1,sort=random,limit=10]
execute if score @s Health matches 6..30 run kill @e[tag=CircleCrystal,distance=..1,sort=random,limit=6]
execute as @e[type=aether:fire_crystal,distance=..30] run data modify entity @s Owner set from entity @e[type=aether:sun_spirit,limit=1,sort=nearest] UUID
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.75