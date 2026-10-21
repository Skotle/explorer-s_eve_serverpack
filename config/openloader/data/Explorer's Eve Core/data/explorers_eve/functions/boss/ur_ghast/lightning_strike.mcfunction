#Lightning strike. Simple as that.
summon lightning_bolt
execute if predicate explorers_eve:glitch run summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0],Item:{id:"minecraft:coal_block",Count:1b}}
kill @s