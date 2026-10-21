#Try to spawn the boss.
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["DragonsbaneStalkMark"]}
spreadplayers ~ ~ 0 5 false @e[tag=DragonsbaneStalkMark,limit=1,sort=nearest,distance=..1]
execute as @e[tag=DragonsbaneStalkMark,limit=1,sort=nearest] at @s positioned over motion_blocking_no_leaves if entity @a[tag=DragonsbaneStalking,gamemode=!spectator,distance=..5] run function explorers_eve:boss/dragonsbane/stalk_spawn