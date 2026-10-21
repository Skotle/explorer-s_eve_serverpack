#Decide which loop to use, including intros.
execute if entity @e[tag=LichBoss,tag=Phase1,distance=..24] run function explorers_eve:music/lich/loop_1
execute if entity @e[tag=LichBoss,tag=!Phase1,distance=..24] run function explorers_eve:music/lich/loop_2