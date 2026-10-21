#Summon a Void Vortex for fun!
execute align y run summon cataclysm:wither_smoke_effect ~ ~ ~ {Radius:3f,Duration:300,RadiusPerTick:0.0025f,Fire:-1s,WaitTime:10}
data modify entity @e[type=cataclysm:wither_smoke_effect,limit=1,sort=nearest] Owner set from entity @p[gamemode=!spectator] UUID
kill @s