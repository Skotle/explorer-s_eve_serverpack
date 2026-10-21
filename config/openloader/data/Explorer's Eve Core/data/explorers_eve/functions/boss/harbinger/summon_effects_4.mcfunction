#Make another marker!
summon area_effect_cloud ~ ~ ~ {Tags:["HarbingerSummonMark2"],Duration:300}

#Missiles!
playsound minecraft:entity.wither.shoot hostile @a[distance=..50] ~ ~ ~ 2 0.9 0.5
summon cataclysm:wither_howitzer ~ ~ ~ {Tags:["NewHowitzer"],radius:3f,Motion:[0.36d,0.2d,0d]}
summon cataclysm:wither_howitzer ~ ~ ~ {Tags:["NewHowitzer"],radius:3f,Motion:[-0.36d,0.2d,0d]}
summon cataclysm:wither_howitzer ~ ~ ~ {Tags:["NewHowitzer"],radius:3f,Motion:[0d,0.2d,0.36d]}
summon cataclysm:wither_howitzer ~ ~ ~ {Tags:["NewHowitzer"],radius:3f,Motion:[0d,0.2d,-0.36d]}
summon cataclysm:wither_howitzer ~ ~ ~ {Tags:["NewHowitzer"],radius:3f,Motion:[0.24d,0.2d,0.24d]}
summon cataclysm:wither_howitzer ~ ~ ~ {Tags:["NewHowitzer"],radius:3f,Motion:[-0.24d,0.2d,0.24d]}
summon cataclysm:wither_howitzer ~ ~ ~ {Tags:["NewHowitzer"],radius:3f,Motion:[0.24d,0.2d,-0.24d]}
summon cataclysm:wither_howitzer ~ ~ ~ {Tags:["NewHowitzer"],radius:3f,Motion:[-0.24d,0.2d,-0.24d]}