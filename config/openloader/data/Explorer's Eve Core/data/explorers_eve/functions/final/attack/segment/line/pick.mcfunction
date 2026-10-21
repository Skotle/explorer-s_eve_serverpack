#Pick a source, any source! Then do it until they're gone.
scoreboard players set @s SkullAttackTime 0

tag @e[tag=LineshotSegmentTarget,limit=1,sort=random] add SkullTarget

function explorers_eve:storm/attack/shoot_segment

execute unless entity @e[tag=LineshotSegmentTarget] run function explorers_eve:final/attack/segment/line/end