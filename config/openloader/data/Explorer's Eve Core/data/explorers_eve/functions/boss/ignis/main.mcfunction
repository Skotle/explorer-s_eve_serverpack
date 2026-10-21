#Main manager for Ignis changes.
execute unless entity @s[tag=Activated] at @s align xyz positioned ~0.5 ~ ~0.5 run function explorers_eve:boss/ignis/activate

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Phase transitions.
execute if entity @s[tag=Phase1,nbt={BossPhase:1}] at @e[tag=IgnisTracker,limit=1] run function explorers_eve:boss/ignis/phase_2
execute if entity @s[tag=Phase2,nbt={BossPhase:2}] run function explorers_eve:boss/ignis/phase_3

#Fancy rune circles get large quickly.
execute as @e[tag=IgnisStrike,distance=..256] run function explorers_eve:boss/ignis/strike_timer

#When it lands from a jump, it makes a fancy rune circle.
execute unless entity @s[tag=IgnisJump] if entity @s[nbt={OnGround:0b}] if block ~ ~-1 ~ air if block ~ ~-2 ~ air run tag @s add IgnisJump
execute if entity @s[tag=IgnisJump] if entity @s[nbt={OnGround:1b}] run function explorers_eve:boss/ignis/strike_spawn

#Fire is bad.
execute as @a[tag=IgnisBattling,distance=..80,predicate=explorers_eve:on_fire] run function explorers_eve:boss/ignis/player_fire

#Disallow fire resistance.
execute as @a[tag=IgnisBattling,distance=..80,predicate=explorers_eve:fire_resistance] at @s run function explorers_eve:boss/ignis/clear_fire_resistance

#No Hammer of Kingbdogz, Soul Cannon, or Block & Chain!
execute as @e[type=aether:hammer_projectile,distance=..10] at @s run function explorers_eve:boss/ignis/ban_projectile
execute as @e[type=dungeons_plus:soul_fireball,tag=!ZetaShot,distance=..10] at @s run function explorers_eve:boss/ignis/ban_projectile
execute as @e[type=twilightforest:chain_block,distance=..10] at @s unless entity @a[gamemode=!spectator,distance=..8] run function explorers_eve:boss/ignis/ban_projectile

#Anvils or dripstone? Nice try.
execute as @e[type=minecraft:falling_block,distance=..32] run data modify entity @s FallHurtMax set value 1

#Despawn if no Ignis battlers exist.
execute unless entity @a[tag=IgnisBattling,distance=..80] unless entity @s[tag=FinalBattle] run function explorers_eve:boss/ignis/despawn

#If Ignis battlers escape the arena, they're forced back in.
execute at @e[tag=IgnisTracker,limit=1,sort=nearest] positioned ~-25 ~-1 ~-25 as @a[tag=IgnisBattling] unless entity @s[dx=50,dy=25,dz=50] at @e[tag=IgnisTracker,limit=1,sort=nearest] run function explorers_eve:boss/ignis/trap_player