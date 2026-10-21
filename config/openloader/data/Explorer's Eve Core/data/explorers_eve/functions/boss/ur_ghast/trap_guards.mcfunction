#Spawn a few guards and spread them around.
execute if entity @s[tag=Knight] run summon twilightforest:carminite_golem ~ ~1 ~ {Tags:["TrapGuard"],Attributes:[{Name:generic.movement_speed,Base:0.2}]}
execute if entity @s[tag=BlockChain] run summon twilightforest:blockchain_goblin ~ ~1 ~ {Tags:["TrapGuard"],Attributes:[{Name:generic.movement_speed,Base:0.23}]}
execute if entity @s[tag=Golem] run summon twilightforest:carminite_golem ~ ~1 ~ {Tags:["TrapGuard"],Attributes:[{Name:generic.movement_speed,Base:0.2}]}
spreadplayers ~ ~ 1 2 false @e[tag=TrapGuard,distance=..5]