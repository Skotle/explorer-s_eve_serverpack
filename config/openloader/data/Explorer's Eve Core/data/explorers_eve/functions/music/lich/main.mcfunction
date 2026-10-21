#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/lich/end
execute unless entity @e[tag=LichBoss,distance=..32] run function explorers_eve:music/lich/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/lich/loop_pick