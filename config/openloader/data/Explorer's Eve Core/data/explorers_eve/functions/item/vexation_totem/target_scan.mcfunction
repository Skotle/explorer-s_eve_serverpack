#The target keeps vexes mad until there are no vexes.
execute as @e[tag=AllyVex,distance=..128] run damage @s 1 generic by @e[tag=AllyVexTarget,limit=1,sort=nearest]
execute unless entity @e[tag=AllyVex,distance=..128] run tag @s remove AllyVexTarget