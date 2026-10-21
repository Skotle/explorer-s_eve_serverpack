#Tear up the world! Only so far away, though.
function explorers_eve:boss/wither/break
particle minecraft:explosion_emitter
effect give @a[distance=..4] instant_damage 1 1
execute unless entity @e[tag=WitherChargeEnd,distance=..1] positioned ^ ^ ^1 run function explorers_eve:storm/early/charge_break