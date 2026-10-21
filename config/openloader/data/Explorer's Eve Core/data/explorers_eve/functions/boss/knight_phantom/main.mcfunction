#Main manager for Knight Phantom changes.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/knight_phantom/activate

#One phantom always keeps track of attacks.
execute unless entity @e[type=twilightforest:knight_phantom,distance=..40,tag=PhantomBoss] run tag @s add PhantomBoss

#Phantoms have enchanted gear.
enchant @s knockback 2
enchant @s unbreaking 1

#Phantoms have a timer. This timer ticks relative to how many other phantoms and wraiths there are.
scoreboard players remove @s PhantomTime 18
scoreboard players add @e[type=twilightforest:knight_phantom,distance=..40] PhantomTime 3
execute as @e[tag=PhantomWraith,distance=..24] run scoreboard players add @e[tag=PhantomBoss,distance=..64] PhantomTime 1

#Only the boss phantom uses this extra attack for balancing purposes.
execute if entity @s[tag=PhantomBoss,scores={PhantomTime=..0}] run function explorers_eve:boss/knight_phantom/spawner_start