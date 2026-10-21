#Count shields.
execute store result score @s LichShields run data get entity @s ShieldStrength
execute if score @s LichShields < @s LichShieldsOld run function explorers_eve:boss/lich/shield_break
scoreboard players operation @s LichShieldsOld = @s LichShields

#End eventually.
execute if score @s LichShields matches 0 if entity @s[tag=Phase3] store result entity @s Health float 0.25 run attribute @s minecraft:generic.max_health get
execute if score @s LichShields matches 0 run tag @s remove ShieldsActive

#Give a hint on the first phase.
execute if entity @s[tag=Phase1] run title @a[distance=..24] actionbar {"text":"Reflect the Lich's blue projectiles to break its shields!","color":"light_purple"}