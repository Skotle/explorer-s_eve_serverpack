#Drop a rock.
summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"aether:holystone"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:5,FallHurtAmount:5f,Tags:["SliderRock"]}
playsound minecraft:block.stone.break hostile @a ~ ~ ~ 2 1
kill @s