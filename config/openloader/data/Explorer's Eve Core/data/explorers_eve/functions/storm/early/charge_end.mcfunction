#Move forward and scare the living daylights out of the unaware.
execute store result score $BlockDrops Math run gamerule doTileDrops
gamerule doTileDrops false
data modify entity @s Invul set value 1
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 3 0.7
function explorers_eve:storm/early/charge_break
execute if score $BlockDrops Math matches 1 run gamerule doTileDrops true
scoreboard players reset $BlockDrops Math
tp @s @e[tag=WitherChargeEnd,limit=1,sort=nearest,distance=..60]
kill @e[tag=WitherChargeEnd,limit=1,sort=nearest,distance=..60]
kill @e[tag=StormHold,limit=1,sort=nearest]
tag @s remove WitherCharging