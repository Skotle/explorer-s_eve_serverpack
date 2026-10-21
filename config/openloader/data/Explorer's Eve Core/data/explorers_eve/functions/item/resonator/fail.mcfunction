#Cancel the summoning and say why.
execute if score @s Math matches 0 run tellraw @s [{"text":"This message should not appear. I'll be afraid if it does.","color":"light_purple"}]
execute if score @s Math matches 1 run tellraw @s [{"text":"There's already a portal very close by!","color":"light_purple"}]

#And give back that item!
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75 1
execute unless entity @s[gamemode=creative] if score @s BrightResonatorUsed matches 1.. run give @s cataclysm:monstrous_eye{display:{Lore:['{"text":"Use to open a one-way portal between the Overworld and the Everbright. This portal can only teleport players! If you haven\'t used the Charm of Keeping, your inventory will be left behind, except for any equipped accessories and Command Block parts!","color":"gray","italic":false}']}}
execute unless entity @s[gamemode=creative] if score @s DawnResonatorUsed matches 1.. run give @s cataclysm:flame_eye{display:{Lore:['{"text":"Use to open a one-way portal between the Overworld and the Everdawn. This portal can only teleport players! If you haven\'t used the Charm of Keeping, your inventory will be left behind, except for any equipped accessories and Command Block parts!","color":"gray","italic":false}']}}