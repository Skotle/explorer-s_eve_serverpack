#No loot!
witherstormmod cluster create ~ ~ ~ 8 0
kill @e[tag=SummonerMark,distance=..500]
tag @s remove SummonerLoot
tag @s remove SummonerLootReady