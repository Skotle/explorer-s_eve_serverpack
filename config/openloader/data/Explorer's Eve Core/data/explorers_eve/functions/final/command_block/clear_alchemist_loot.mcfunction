#No loot!
witherstormmod cluster create ~ ~ ~ 8 0
kill @e[tag=AlchemistMark,distance=..500]
tag @s remove AlchemistLoot
tag @s remove AlchemistLootReady