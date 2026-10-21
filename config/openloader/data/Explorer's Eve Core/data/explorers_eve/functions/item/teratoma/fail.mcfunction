#Cancel the summoning and say why.
execute if score @s Math matches 0 run tellraw @s [{"text":"This message should not appear. I'll be afraid if it does.","color":"light_purple"}]
execute if score @s Math matches 1 run tellraw @s [{"text":"The Withered Symbiont is currently spawning!","color":"light_purple"}]
execute if score @s Math matches 2 run tellraw @s [{"text":"The Withered Symbiont has already spawned!","color":"light_purple"}]
execute if score @s Math matches 3 run tellraw @s [{"text":"Get closer to summon a Withered Symbiont, or further away to provoke a chase!","color":"light_purple"}]
execute if score @s Math matches 4 run tellraw @s [{"text":"This Wither Storm hasn't evolved enough to summon a Withered Symbiont yet! Use Super TNT!","color":"light_purple"}]
execute if score @s Math matches 5 run tellraw @s [{"text":"This Wither Storm hasn't had enough time to infect another Withered Symbiont yet!","color":"light_purple"}]
execute if score @s Math matches 6 run tellraw @s [{"text":"This Wither Storm is distracted by the Formidibomb!","color":"light_purple"}]
execute if score @s Math matches 7 run tellraw @s [{"text":"Nice try. That won't work here.","color":"light_purple"}]
execute if score @s Math matches 8 run tellraw @s [{"text":"This Wither Storm is too hurt to do anything!","color":"light_purple"}]
execute if score @s Math matches 9 run tellraw @s [{"text":"There's no Wither Storm in this dimension!","color":"light_purple"}]
execute if score @s Math matches 10 run tellraw @s [{"text":"This Wither Storm is too busy evolving to care about you!","color":"light_purple"}]

playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75 1
execute unless entity @s[gamemode=creative] run give @s cataclysm:void_eye{display:{Lore:['{"text":"Use to provoke the Wither Storm. When far away, it will begin to chase the nearest player. When nearby, it will attempt to summon a Withered Symbiont.","color":"gray","italic":false}']}}