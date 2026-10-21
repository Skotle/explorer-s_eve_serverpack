#Spawn a spike and make it awful.
summon witherstormmod:tentacle_spike ~ ~ ~
effect give @a[gamemode=!spectator,distance=..1.15] cataclysm:stun 2 0
effect give @a[gamemode=!spectator,distance=..1.15] wither 7 2
team join NoInfighting @e[type=witherstormmod:tentacle_spike,limit=1,sort=nearest]