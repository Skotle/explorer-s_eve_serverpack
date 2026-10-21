#Pick a source, any source! Then do it until they're gone.
scoreboard players set @s SkullAttackTime 0

tag @e[tag=LineshotTarget,limit=1,sort=random] add SkullTarget

tag @e[tag=LineshotSource,limit=1,sort=random,distance=..300] add LineshotShoot
execute if entity @e[tag=LineshotShoot,tag=CenterReady] run function explorers_eve:storm/attack/shoot_center
execute if entity @e[tag=LineshotShoot,tag=LeftReady] run function explorers_eve:storm/attack/shoot_left
execute if entity @e[tag=LineshotShoot,tag=RightReady] run function explorers_eve:storm/attack/shoot_right
execute if entity @e[tag=LineshotShoot,tag=SegmentReady] at @e[tag=LineshotShoot] run function explorers_eve:storm/attack/shoot_segment
tag @e[tag=LineshotShoot] remove LineshotShoot

execute unless entity @e[tag=LineshotTarget] run function explorers_eve:storm/attack/line/end