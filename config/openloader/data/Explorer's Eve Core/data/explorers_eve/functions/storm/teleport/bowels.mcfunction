#Move the Wither Storm to the bowels as a temporary 'invisibility' trick.
kill @e[type=witherstormmod:block_cluster,distance=..500]
execute if entity @s[scores={StormPhase=6..}] in witherstormmod:bowels run tp @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest] 0 400 0
execute in witherstormmod:bowels run tp @s 0 400 0
scoreboard players set @s StormTeleportWait 0
tag @s add DistanceTeleport
function explorers_eve:storm/teleport/mark