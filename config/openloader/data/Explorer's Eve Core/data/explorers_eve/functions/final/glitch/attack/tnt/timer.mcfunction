#Every few ticks, throw TNT until there's tons of it.
scoreboard players set @s GlitchAttackTime 0
summon tnt ~ ~1 ~ {Tags:["GlitchTNT","NewTNT"],Fuse:600}
playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ 3 1.5

execute as @e[tag=NewTNT,limit=1,sort=nearest] at @s run function explorers_eve:final/glitch/attack/tnt/launch

execute store result score @s CommandEntityCount run execute if entity @e[type=tnt,distance=..200]
execute if score @s CommandEntityCount matches 24.. run function explorers_eve:final/glitch/attack/tnt/end