#Fire a skull and reset the delay. Every now and then, a skull is blue.
scoreboard players remove @s SkullCount 1

execute unless score @s SkullCount matches ..-1 run summon witherstormmod:flaming_wither_skull ~ ~ ~ {Tags:["FlamingSkull","NewFlamingSkull","DigFlamingSkull"],LeftOwner:0b}
execute if score @s SkullCount matches ..-1 run summon witherstormmod:blue_flaming_wither_skull ~ ~ ~ {Tags:["FlamingSkull","NewFlamingSkull","DigFlamingSkull"],LeftOwner:0b}

execute if score @s SkullCount matches ..-1 unless data storage world DraconicTemperament run scoreboard players set @s SkullCount 20

execute as @e[tag=NewFlamingSkull] at @s facing entity @e[tag=DigSkullTarget,limit=1] eyes run function explorers_eve:storm/attack/flaming_skull