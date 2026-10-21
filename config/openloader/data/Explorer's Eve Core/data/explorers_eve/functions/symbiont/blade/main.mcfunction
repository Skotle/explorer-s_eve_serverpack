#Charge the Formidiblade.
execute if score @s SymbiontStage matches 0 run scoreboard players add @s SymbiontBladeCharge 1
execute if score @s SymbiontStage matches 1.. if score @s SymbiontBladeCharge matches 250.. run scoreboard players add @s SymbiontBladeCharge 1
execute if score @s SymbiontBladeCharge matches ..250 store result entity @s HandItems[0].tag.Power float 0.004 run scoreboard players get @s SymbiontBladeCharge

execute if score @s SymbiontBladeCharge matches 250 run function explorers_eve:symbiont/blade/charge
execute if score @s SymbiontBladeCharge matches 300.. if score @s SymbiontStage matches 0..1 unless entity @a[gamemode=!spectator,distance=..16] if entity @a[gamemode=!spectator,distance=..40] if entity @s[nbt={OnGround:1b}] run function explorers_eve:symbiont/blade/release