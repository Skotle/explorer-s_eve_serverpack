#If a sickened mob touches the Withered Symbiont, it gets consumed to heal it.
#It heals 2 hearts. If it's in phase 2, it won't heal above half.
scoreboard players add @e[type=witherstormmod:withered_symbiont,limit=1,sort=nearest] Health 4
execute as @e[type=witherstormmod:withered_symbiont,limit=1,sort=nearest] if entity @s[tag=RushMode] if score @s Health >= @s HealthLimit run scoreboard players operation @s Health = @s HealthLimit
execute as @e[type=witherstormmod:withered_symbiont,limit=1,sort=nearest] store result entity @s Health float 1 run scoreboard players get @s Health

#Finally, make effects and kill the mob.
particle dust 1 0 1 1 ~ ~1.25 ~ 0.3 0.7 0.3 10 100
playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 1 2
kill @s