#Make pretty particles! Only so far away, though.
particle minecraft:dust 0.5 0 0 1.5 ~ ~ ~ 0.15 0.15 0.15 1 5 force
execute if entity @e[tag=WitherChargeEnd,distance=..1] run particle minecraft:dust 1 0 0 1.5 ~ ~ ~ 0.5 0.5 0.5 1 30 force
execute unless entity @e[tag=WitherChargeEnd,distance=..1] positioned ^ ^ ^1 run function explorers_eve:storm/early/charge_warn