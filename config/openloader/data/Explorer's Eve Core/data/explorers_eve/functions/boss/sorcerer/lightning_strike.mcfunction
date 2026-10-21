#Lightning strike with a crater.
effect give @e[tag=SorcererVex,distance=..5] resistance 1 5 true
effect give @e[tag=SorcererBoss,distance=..5] resistance 1 5 true
summon lightning_bolt
summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0],Item:{id:"minecraft:coal_block",Count:1b}}