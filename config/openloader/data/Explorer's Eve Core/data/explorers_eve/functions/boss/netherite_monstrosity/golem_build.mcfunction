#Summon the boss, fancily!
execute if block ~1 ~1 ~ polished_blackstone run fill ~10 ~-1 ~7 ~10 ~2 ~8 nether_brick_fence replace air
execute if block ~1 ~1 ~ polished_blackstone run fill ~10 ~-1 ~-7 ~10 ~2 ~-8 nether_brick_fence replace air
execute if block ~-1 ~1 ~ polished_blackstone run fill ~-10 ~-1 ~7 ~-10 ~2 ~8 nether_brick_fence replace air
execute if block ~-1 ~1 ~ polished_blackstone run fill ~-10 ~-1 ~-7 ~-10 ~2 ~-8 nether_brick_fence replace air
execute if block ~ ~1 ~1 polished_blackstone run fill ~7 ~-1 ~10 ~8 ~2 ~10 nether_brick_fence replace air
execute if block ~ ~1 ~1 polished_blackstone run fill ~-7 ~-1 ~10 ~-8 ~2 ~10 nether_brick_fence replace air
execute if block ~ ~1 ~-1 polished_blackstone run fill ~7 ~-1 ~-10 ~8 ~2 ~-10 nether_brick_fence replace air
execute if block ~ ~1 ~-1 polished_blackstone run fill ~-7 ~-1 ~-10 ~-8 ~2 ~-10 nether_brick_fence replace air
fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #explorers_eve:monstrosity_golem_material
fill ~5 ~-1 ~5 ~-5 ~5 ~-5 air destroy
fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 obsidian replace lava
fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 obsidian replace aether:unstable_obsidian
fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 obsidian replace cataclysm:melting_netherrack

particle block red_nether_bricks ~ ~0.5 ~ 1.5 1.5 1.5 0 100
particle block redstone_block ~ ~0.5 ~ 1.5 1.5 1.5 0 100
particle block polished_basalt ~ ~0.5 ~ 1.5 1.5 1.5 0 100
playsound minecraft:block.metal.place block @a ~ ~ ~ 3 1 1

summon cataclysm:netherite_monstrosity
execute as @e[type=cataclysm:netherite_monstrosity,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] eyes
scoreboard players set @e[type=cataclysm:netherite_monstrosity] Health 500
tag @s add MonstrosityTracker
tag @s remove MonstrosityGolem
function explorers_eve:boss/netherite_monstrosity/golem_display_end