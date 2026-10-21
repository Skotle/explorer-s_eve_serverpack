#End the fight.
execute unless entity @e[type=cataclysm:the_harbinger,distance=5..] as @e[tag=HarbingerTowerMark] at @s run function explorers_eve:boss/harbinger/tower_destroy
execute unless entity @e[type=cataclysm:the_harbinger,distance=5..] run kill @e[tag=HarbingerTowerCluster]
kill @s