#This is a backup function in case the Wither Storm can't kill the Formidibomb.
witherstormmod ultimateTarget clear @w[tag=FormidibombAngry,tag=!Injured] pos
execute as @w[tag=FormidibombAngry,tag=TNTDistracted] at @s run function explorers_eve:item/super_tnt/end
tag @w[tag=FormidibombAngry,distance=..400] remove FormidibombAngry
kill @e[tag=DigSkullSource,limit=1,sort=nearest]

data modify entity @s Fuse set value 100s
tag @s remove AngerFocusActive