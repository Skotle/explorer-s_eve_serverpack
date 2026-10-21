#Spawn fireballs with tracking markers.
summon dungeons_plus:soul_fireball ~ ~1 ~ {power:[0.0,-0.07,0.0],is_multi:1b,has_flame:1b,knockback:1,Tags:["NewSoulEmpower"]}
summon dungeons_plus:soul_fireball ~ ~1.5 ~ {power:[0.0,-0.07,0.0],is_multi:1b,has_flame:1b,knockback:1,Tags:["NewSoulEmpower"]}
summon dungeons_plus:soul_fireball ~ ~2 ~ {power:[0.0,-0.07,0.0],is_multi:1b,has_flame:1b,knockback:1,Tags:["NewSoulEmpower"]}

execute as @e[tag=NewSoulEmpower] at @s run function explorers_eve:item/soul_cannon/aim_random
kill @s