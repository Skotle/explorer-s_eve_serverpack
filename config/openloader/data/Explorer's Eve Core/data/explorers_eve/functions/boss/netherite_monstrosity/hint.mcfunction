#Give a hint if the player can't figure out what to do.
scoreboard players add @s HintTime 1
execute if score @s HintTime matches 140..340 run title @a[distance=..24,advancements={cataclysm:kill_monstrosity=false}] actionbar {"text":"Use a shield to block the Netherite Monstrosity's melee slam!","color":"light_purple"}