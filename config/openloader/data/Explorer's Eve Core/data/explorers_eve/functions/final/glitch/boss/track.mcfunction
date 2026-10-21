#Watch the boss. When it dies, hurt the block.
#First, extra boss mechanics.
execute if entity @s[tag=Yeti] as @e[type=twilightforest:alpha_yeti,tag=FinalBattle] at @s unless entity @a[gamemode=!spectator,distance=..20] if entity @s[nbt={OnGround:1b}] facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/alpha_yeti/leap
execute if entity @s[tag=Slider] as @e[type=aether:slider,tag=FinalBattle] at @s unless entity @a[gamemode=!spectator,distance=..20] unless entity @s[tag=SliderAsleep] run function explorers_eve:boss/slider/teleport_glitch
execute if entity @s[tag=SnowQueen] as @e[type=twilightforest:snow_queen,tag=FinalBattle] at @s unless entity @a[gamemode=!spectator,distance=..24] run function explorers_eve:boss/snow_queen/teleport
execute if entity @s[tag=Hydra] as @e[type=twilightforest:hydra,tag=FinalBattle] at @s unless entity @a[gamemode=!spectator,distance=..26] if entity @s[nbt={OnGround:1b}] facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/hydra/leap
execute if entity @s[tag=Hydra] as @e[type=twilightforest:hydra,tag=FinalBattle] at @s positioned ~ 90 ~ if entity @s[dy=999999] facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/hydra/leap
#execute if entity @s[tag=Hydra] as @e[type=twilightforest:hydra_mortar,predicate=explorers_eve:glitch] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/netherite_monstrosity/fireball_spawn
execute if entity @s[tag=UrGhast] as @e[type=twilightforest:ur_ghast,tag=FinalBattle] at @s run function explorers_eve:final/glitch/boss/ur_ghast_guards
execute if entity @s[tag=EnderGuardian] at @e[tag=CommandFinalBoss,limit=1] positioned ~-3 63 ~-3 run kill @e[type=cataclysm:void_vortex,dx=7,dy=7,dz=7]
execute if entity @s[tag=SunSpirit] as @e[type=aether:sun_spirit,tag=FinalBattle] at @s run function explorers_eve:final/glitch/boss/sun_spirit_main
execute if entity @s[tag=Ignis] run effect clear @a[predicate=explorers_eve:glitch] cataclysm:blazing_brand
execute if entity @s[tag=Ignis] as @e[tag=IgnisStrike,predicate=explorers_eve:glitch] run function explorers_eve:boss/ignis/strike_timer
execute if entity @s[tag=Ignis] as @e[type=cataclysm:ignis,tag=FinalBattle] at @s unless entity @s[tag=IgnisJump] if entity @s[nbt={OnGround:0b}] if block ~ ~-1 ~ air if block ~ ~-2 ~ air run tag @s add IgnisJump
execute if entity @s[tag=Ignis] as @e[type=cataclysm:ignis,tag=FinalBattle] at @s if entity @s[tag=IgnisJump] if entity @s[nbt={OnGround:1b}] run function explorers_eve:boss/ignis/strike_spawn

#Trackers.
execute if entity @s[tag=Naga] unless entity @e[type=twilightforest:naga,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=Yeti] unless entity @e[type=twilightforest:alpha_yeti,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=Slider] unless entity @e[type=aether:slider,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=SnowQueen] unless entity @e[type=twilightforest:snow_queen,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=Hydra] unless entity @e[type=twilightforest:hydra,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=Netherite] unless entity @e[type=cataclysm:netherite_monstrosity,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=UrGhast] unless entity @e[type=twilightforest:ur_ghast,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=SunSpirit] unless entity @e[type=aether:sun_spirit,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=EnderGuardian] unless entity @e[type=cataclysm:ender_guardian,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=Ignis] unless entity @e[type=cataclysm:ignis,tag=FinalBattle,distance=..200] run tag @s add Short
execute if entity @s[tag=Harbinger] unless entity @e[type=cataclysm:the_harbinger,tag=FinalBattle,distance=..200] run tag @s add Short

#Boss despawn features.
execute if entity @s[tag=UrGhast,tag=Short] run kill @e[tag=SupportGhastguard,predicate=explorers_eve:glitch]
execute if entity @s[tag=UrGhast,tag=Short] run kill @e[tag=UrGhastRide]
execute if entity @s[tag=EnderGuardian,tag=Short] run kill @e[type=cataclysm:void_vortex,distance=..200]

#Trigger a short if appropriate.
execute if entity @s[tag=Short] as @e[tag=CommandFinalBoss,tag=!BossShort,tag=!GlitchHurt,tag=!GlitchEndure,limit=1,sort=nearest] at @s run function explorers_eve:final/glitch/short/boss
execute if entity @s[tag=Short] run kill @s