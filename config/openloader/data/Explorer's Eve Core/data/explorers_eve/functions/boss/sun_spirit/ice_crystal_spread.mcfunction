#Spread ice crystals around.
kill @e[type=aether:ice_crystal,distance=..200]
summon aether:ice_crystal ~ ~ ~ {Tags:["IceCrystalSpread"]}
summon aether:ice_crystal ~ ~ ~ {Tags:["IceCrystalSpread"]}
summon aether:ice_crystal ~ ~ ~ {Tags:["IceCrystalSpread"]}
summon aether:ice_crystal ~ ~ ~ {Tags:["IceCrystalSpread"]}
spreadplayers ~ ~ 12 24 false @e[tag=IceCrystalSpread,distance=..10]
execute as @e[tag=IceCrystalSpread] at @s if entity @e[type=aether:sun_spirit,distance=..5] run kill @s
execute as @e[tag=IceCrystalSpread] at @s run tp @s ~ ~1.15 ~
execute at @e[tag=IceCrystalSpread] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.75
execute at @e[tag=IceCrystalSpread] run particle minecraft:snowflake ~ ~0.25 ~ 0.3 0.3 0.3 0.01 10