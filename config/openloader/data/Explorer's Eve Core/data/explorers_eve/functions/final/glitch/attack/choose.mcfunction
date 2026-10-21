#Reset attack timers.
scoreboard players set @s GlitchAttackTime 0
scoreboard players set @s GlitchAttackWait 0
tag @s add GlitchAttacking

#Pick a random attack.
scoreboard players set @s RandomRange 10
function explorers_eve:random
scoreboard players operation @s SkullAttack = @s RandomValue

#Boost this number to match about what part of the fight is happening.
execute if score @s Health matches 451..600 run scoreboard players add @s SkullAttack 10
execute if score @s Health matches 301..450 run scoreboard players add @s SkullAttack 20
execute if score @s Health matches 151..300 run scoreboard players add @s SkullAttack 30

#Certain parts of the fight force or deny certain attacks.
execute if entity @s[tag=ForceBomb] run scoreboard players set @s SkullAttack 29
execute if score @s GlitchBombDelay matches 1.. if score @s SkullAttack matches 28..29 run scoreboard players remove @s SkullAttack 3
execute if score @s GlitchBombDelay matches 1.. if score @s SkullAttack matches 38..39 run scoreboard players remove @s SkullAttack 4

#When there's only one hit left, no bomb.
execute if score @s SkullAttack matches 38..39 if score @s Health matches 151..167 run scoreboard players remove @s SkullAttack 4

#First third.
execute if score @s SkullAttack matches 10..12 run function explorers_eve:final/glitch/attack/cluster/start
execute if score @s SkullAttack matches 13..14 run function explorers_eve:final/glitch/attack/thorns/start
execute if score @s SkullAttack matches 15..17 run function explorers_eve:final/glitch/attack/fireball/start
execute if score @s SkullAttack matches 18..19 run function explorers_eve:final/glitch/attack/line/start

#Second third.
execute if score @s SkullAttack matches 20 run function explorers_eve:final/glitch/attack/fireball/start
execute if score @s SkullAttack matches 21..22 run function explorers_eve:final/glitch/attack/thorns/start
execute if score @s SkullAttack matches 23 run function explorers_eve:final/glitch/attack/tnt/start
execute if score @s SkullAttack matches 24..25 run function explorers_eve:final/glitch/attack/cluster/start
execute if score @s SkullAttack matches 26..27 run function explorers_eve:final/glitch/attack/line/start
execute if score @s SkullAttack matches 28..29 run function explorers_eve:final/glitch/attack/bomb/start

#Final third.
execute if score @s SkullAttack matches 30..31 run function explorers_eve:final/glitch/attack/tnt/start
execute if score @s SkullAttack matches 32..34 run function explorers_eve:final/glitch/attack/cluster/start
execute if score @s SkullAttack matches 35..37 run function explorers_eve:final/glitch/attack/line/start
execute if score @s SkullAttack matches 38..39 run function explorers_eve:final/glitch/attack/bomb/start

scoreboard players remove @s GlitchBombDelay 1