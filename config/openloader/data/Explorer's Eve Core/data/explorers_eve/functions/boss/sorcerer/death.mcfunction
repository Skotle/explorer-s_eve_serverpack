#Happens when the boss dies.
bossbar set minecraft:nameless_sorcerer players
kill @e[type=cataclysm:nameless_sorcerer,tag=!SorcererBoss,distance=..128]
kill @e[tag=SorcererVex,distance=..128]
kill @e[tag=SorcererBeaconTracker]
kill @s