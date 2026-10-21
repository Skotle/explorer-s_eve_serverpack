#The Wither Storm has seen the Formidibomb.
tag @s add AngerFocus
tag @s add AngerFocusActive
tag @w[scores={StormPhase=6..},distance=..256] add FormidibombAngry
data modify entity @s Fuse set value 3600s
witherstormmod ultimateTarget clear @w[tag=FormidibombAngry,tag=!Injured,tag=!TNTDistracted] pos