#Now that it's moved, lock its position and let it rotate again.
witherstormmod ultimateTarget clear @s pos
kill @e[tag=FinalBossDestination]

tag @s add AttackPossible
tag @s remove FinalBossMoving

attribute @s witherstormmod:slow_flying_speed modifier add 123a104f-3438-12ab-b968-cc41ce8930d7 FinalHold -10 add
attribute @s witherstormmod:target_stationary_flying_speed modifier add 134b104f-3828-12ab-b968-cc41ce8930d7 FinalHold2 -10 add