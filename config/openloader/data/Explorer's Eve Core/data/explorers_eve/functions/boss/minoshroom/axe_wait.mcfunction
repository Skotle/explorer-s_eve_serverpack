#Is there a reason to kill the axe? If not, keep waiting. Triggered every tick.
execute if entity @s[nbt={dealt_damage:1b}] run function explorers_eve:boss/minoshroom/axe_end
execute if entity @s[nbt={inGround:1b}] run function explorers_eve:boss/minoshroom/axe_end
execute unless entity @e[type=twilightforest:minoshroom,tag=WarpThrown,distance=..32] run function explorers_eve:boss/minoshroom/axe_end