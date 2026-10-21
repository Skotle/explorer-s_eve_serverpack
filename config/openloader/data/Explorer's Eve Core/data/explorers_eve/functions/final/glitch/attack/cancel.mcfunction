#No more attacking!
scoreboard players set @s SkullAttack -99
tag @s remove GlitchAttacking
scoreboard players set @s GlitchAttackWait 0
execute if entity @s[tag=BombActive] run function explorers_eve:final/glitch/attack/bomb/end
execute if entity @s[tag=FireballActive] run function explorers_eve:final/glitch/attack/fireball/end
execute if entity @s[tag=LineActive] run function explorers_eve:final/glitch/attack/line/end
execute if entity @s[tag=ClusterActive] run function explorers_eve:final/glitch/attack/cluster/end
execute if entity @s[tag=TNTActive] run function explorers_eve:final/glitch/attack/tnt/end