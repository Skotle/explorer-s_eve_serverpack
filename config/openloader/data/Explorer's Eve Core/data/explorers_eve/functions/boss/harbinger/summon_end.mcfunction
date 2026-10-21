#Finally spawn the boss.
summon cataclysm:the_harbinger ~ ~ ~ {Is_Act:1b,Motion:[0d,-10d,0d]}
kill @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1]
kill @s

#Particles!
particle cataclysm:lightning ~ ~ ~ 0 0 0 7 50 force
particle minecraft:explosion ~ ~ ~ 0 0 0 8 1 force