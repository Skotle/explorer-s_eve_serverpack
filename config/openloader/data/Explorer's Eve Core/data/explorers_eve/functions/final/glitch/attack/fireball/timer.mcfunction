#Wait for a delay, then launch the opposite angle. When both are launched, end.
execute if score @s GlitchAttackTime matches 30.. unless entity @s[tag=Cardinal] run function explorers_eve:final/glitch/attack/fireball/cardinal
execute if score @s GlitchAttackTime matches 30.. unless entity @s[tag=Diagonal] run function explorers_eve:final/glitch/attack/fireball/diagonal

execute if entity @s[tag=Cardinal,tag=Diagonal] run function explorers_eve:final/glitch/attack/fireball/end