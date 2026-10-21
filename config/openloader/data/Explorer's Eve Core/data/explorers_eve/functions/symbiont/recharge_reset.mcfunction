#Set the recharge time. It's always shorter in the rematch.
scoreboard players set @s RandomRange 200
function explorers_eve:random
scoreboard players operation @s RechargeTime = @s RandomValue
scoreboard players add @s RechargeTime 1100
execute if entity @s[tag=SymbiontRematch] run scoreboard players remove @s RechargeTime 200
execute if entity @s[tag=BowelsSymbiont] run scoreboard players set @s RechargeTime 350
execute if entity @s[tag=FinalBossMinion] run scoreboard players set @s RechargeTime 300