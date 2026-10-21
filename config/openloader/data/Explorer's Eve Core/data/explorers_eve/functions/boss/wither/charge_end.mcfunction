#Move forward and scare the living daylights out of the unaware.
data modify entity @s NoAI set value 0
data modify entity @s Invul set value 1
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 3 0.7
tp @s @e[tag=WitherChargeEnd,limit=1,sort=nearest,distance=..20]
tp @e[tag=WitherHold,limit=1,distance=..20,sort=nearest] @s
function explorers_eve:boss/wither/charge_break
tag @s add WitherInvul
tag @s remove WitherCharging