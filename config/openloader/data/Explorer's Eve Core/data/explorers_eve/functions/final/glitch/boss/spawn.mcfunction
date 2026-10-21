#Spawning time! Spawn a boss based on what tag this marker has.
#Tier 1.
execute if entity @s[tag=Naga] run summon twilightforest:naga ~ ~ ~ {Tags:[FinalBattle],DeathLootTable:"minecraft:empty",Attributes:[{Name:generic.follow_range,Base:200}],Motion:[0d,1d,0d]}
execute if entity @s[tag=Yeti] run summon twilightforest:alpha_yeti ~ ~ ~ {Tags:[FinalBattle],DeathLootTable:"minecraft:empty",Health:200f,Attributes:[{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:30}],Motion:[0d,1d,0d]}

#Tier 2.
execute if entity @s[tag=SnowQueen] run summon twilightforest:snow_queen ~ ~ ~ {Tags:[FinalBattle,Layer1Broken,Layer2Broken,Layer3Broken,IceArenaCenter,Activated],DeathLootTable:"minecraft:empty",Health:200f,Attributes:[{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:200}],Motion:[0d,1d,0d],NoGravity:1b}
execute if entity @s[tag=Hydra] run summon twilightforest:hydra ~ ~ ~ {Tags:[FinalBattle],DeathLootTable:"minecraft:empty",NumHeads:7b,Health:250f,Attributes:[{Name:generic.max_health,Base:250},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:20}],Motion:[0d,1d,0d]}
execute if entity @s[tag=Netherite] run summon cataclysm:netherite_monstrosity ~ ~ ~ {Tags:[FinalBattle,Activated,Phase4,NetheriteMonstrosityCore],is_Berserk:1,DeathLootTable:"minecraft:empty",Health:300f,Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:40},{Name:generic.movement_speed,Base:0.45}],Motion:[0d,1d,0d]}
execute if entity @s[tag=Slider] run summon aether:slider ~ ~ ~ {Tags:[FinalBattle,SliderActive,SliderAsleep],BossFight:1b,DeathLootTable:"minecraft:empty",Health:200f,Attributes:[{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:20}],Motion:[0d,1d,0d]}

#Tier 3.
execute if entity @s[tag=UrGhast] run summon twilightforest:ur_ghast ~ ~ ~ {Tags:[FinalBattle,Activated],DeathLootTable:"minecraft:empty",Health:300f,Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:15}],Motion:[0d,1d,0d]}
execute if entity @s[tag=SunSpirit] run summon aether:sun_spirit ~ ~ ~ {Tags:[FinalBattle,SunSpiritActive],BossFight:1b,DeathLootTable:"minecraft:empty",Health:20f,Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:15},{Name:generic.movement_speed,Base:-1}],Motion:[0d,1d,0d]}
execute if entity @s[tag=EnderGuardian] run summon cataclysm:ender_guardian ~ ~ ~ {Tags:[FinalBattle,Activated,CrystalUpgraded],DeathLootTable:"minecraft:empty",is_Helmetless:1b,used_mass_destruction:1b,Health:300f,Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:15},{Name:generic.movement_speed,Base:0.75}],Motion:[0d,1d,0d]}
execute if entity @s[tag=Harbinger] run summon cataclysm:the_harbinger ~ ~ ~ {Tags:[FinalBattle],DeathLootTable:"minecraft:empty",Is_Act:1b,Health:300f,Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:15}],Motion:[0d,1d,0d]}

#Tier 4.
execute if entity @s[tag=Ignis] run summon cataclysm:ignis ~ ~ ~ {Tags:[FinalBattle,Activated],DeathLootTable:"minecraft:empty",Is_Shield_Break:1b,BossPhase:3,Health:400f,Attributes:[{Name:generic.max_health,Base:400},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:25},{Name:generic.movement_speed,Base:0.42}],Motion:[0d,1d,0d]}

#Effects.
particle dust 1 1 1 1 ~ ~0.4 ~ 0.4 0.8 0.4 0.05 25 force
execute as @e[tag=FinalBattle,limit=1,sort=nearest] at @s run function explorers_eve:final/command_block/launch_entity
tag @s remove GlitchBossChoice
tag @s add GlitchBossTracker

#Effects for the new boss.
team join NoInfighting @e[tag=FinalBattle]
effect give @e[tag=FinalBattle,limit=1,sort=nearest,type=!twilightforest:hydra] resistance 3 5 true
effect give @e[tag=FinalBattle,limit=1,sort=nearest] fire_resistance 1000000 0 true
execute if entity @s[tag=SunSpirit] run scoreboard players set @e[type=aether:sun_spirit,tag=FinalBattle] HealthLimit 20

#Unbreakable, undroppable Leather Boots with Blast Protection to severely limit cheese via explosions or Powder Snow.
execute as @e[tag=FinalBattle] run item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1495567986,1046236924,-1827436314,1327856578],Slot:"feet"}]} 1
execute as @e[tag=FinalBattle] run data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]