#All attacks use this function: Make a noise, make a line of warning particles, and shoot a skull at an invisible target.
tp @s ~ ~ ~ facing entity @e[tag=SkullTarget,limit=1] eyes
playsound witherstormmod:wither_storm_shoot hostile @a ~ ~ ~ 30 1
execute facing entity @e[tag=SkullTarget,limit=1] eyes run function explorers_eve:storm/attack/skull_particle
execute unless data storage world DraconicTemperament run summon witherstormmod:flaming_wither_skull ~ ~ ~ {Tags:["FlamingSkull","NewFlamingSkull"],LeftOwner:0b}
execute if data storage world DraconicTemperament run summon witherstormmod:blue_flaming_wither_skull ~ ~ ~ {Tags:["FlamingSkull","NewFlamingSkull"],LeftOwner:0b}
execute as @e[tag=NewFlamingSkull] at @s facing entity @e[tag=SkullTarget,limit=1] eyes run function explorers_eve:storm/attack/flaming_skull
kill @e[tag=SkullTarget,limit=1]