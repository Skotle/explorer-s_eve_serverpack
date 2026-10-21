#Spawn three fireballs and despawn the lava bomb that triggered this attack.
kill @s
summon fireball ~ ~ ~ {Tags:["MonstrousFireball","NewFireball"],ExplosionPower:1b}
summon fireball ~ ~ ~ {Tags:["MonstrousFireball","NewFireball","AngleLeft"],ExplosionPower:1b}
summon fireball ~ ~ ~ {Tags:["MonstrousFireball","NewFireball","AngleRight"],ExplosionPower:1b}
tp @e[tag=NewFireball] ~ ~ ~ facing entity @p[gamemode=!spectator] eyes
tp @e[tag=AngleLeft] ~ ~ ~ ~-40 ~
tp @e[tag=AngleRight] ~ ~ ~ ~40 ~

execute as @e[tag=MonstrousFireball] at @s run function explorers_eve:boss/netherite_monstrosity/fireball_shoot