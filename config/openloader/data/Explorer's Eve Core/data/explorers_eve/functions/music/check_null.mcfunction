#This is triggered when there should be no music.
execute if entity @e[type=witherstormmod:wither_storm,tag=!FinalBoss,distance=..299] run function explorers_eve:music/null/mark
execute if entity @e[type=witherstormmod:withered_symbiont,tag=!FinalBossMinion,distance=..70] unless dimension witherstormmod:bowels run function explorers_eve:music/null/mark