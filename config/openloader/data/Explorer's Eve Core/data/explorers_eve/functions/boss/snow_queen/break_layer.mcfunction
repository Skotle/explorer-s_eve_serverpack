#Break the ice.
fill ~7 ~6 ~7 ~-7 ~-8 ~-7 air replace ice
fill ~7 ~6 ~7 ~-7 ~-8 ~-7 air replace packed_ice
fill ~7 ~6 ~7 ~-7 ~-8 ~-7 air replace blue_ice
fill ~7 ~6 ~7 ~-7 ~-8 ~-7 air replace water
tp @e[tag=IceArenaCenter,limit=1,sort=nearest] ~ ~-8 ~
effect give @a[distance=..10,gamemode=!spectator] slow_falling 2 0 true
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.55
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.65
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.75
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.85
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.95
particle block blue_ice ~ ~-6 ~ 8 8 8 0.1 1000
tag @s[tag=Layer1Broken,tag=!Layer2Broken] add Layer2Broken
tag @s[tag=!Layer1Broken] add Layer1Broken