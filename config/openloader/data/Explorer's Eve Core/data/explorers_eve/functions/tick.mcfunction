#Activates when the fully powered Withered Beacon is resummoning.
execute as @e[tag=WitheredBeaconActive] at @s run function explorers_eve:final/summon/summoning

#Final battle summoning effects.
execute as @e[tag=FinalBossSummonDelay] at @s run function explorers_eve:final/summon/set_delay

#Activates when the marker to start the true final battle appears.
execute as @e[tag=FinalBossSummonMark] at @s positioned ~ ~-2.5 ~ run function explorers_eve:final/summon/check

#Final battle effects.
execute as @e[type=witherstormmod:command_block,tag=CommandRematch] at @s run function explorers_eve:final/command_block/main

#Final battle effects.
execute as @e[type=witherstormmod:command_block,tag=CommandDecoy] at @s run function explorers_eve:final/command_block_track

#Final battle effects.
execute as @e[type=witherstormmod:command_block,tag=CommandFinalBoss] at @s run function explorers_eve:final/glitch/main

#Final battle effects.
execute as @e[tag=FinalBossAttacking] at @s run function explorers_eve:final/attack/active

#Final battle effects.
execute as @e[tag=FinalBossSegmentAttacking] at @s run function explorers_eve:final/attack/segment/active

#Final battle injury particles.
execute as @e[tag=FinalBossVulnerable] at @s run function explorers_eve:final/injury_particles

#Final battle loot effects.
execute as @e[tag=FinalBossLoot] at @s run function explorers_eve:final/loot_timer

#Final battle death effects.
execute as @a[tag=FinalBattleDied] run function explorers_eve:final/player/death_tick

#Early Storm effects.
execute as @e[type=witherstormmod:wither_storm,scores={StormPhase=..3}] at @s run function explorers_eve:storm/early/main

#Tractor beam fall protection.
execute as @a[tag=InBeam] run function explorers_eve:storm/beam/ground

#When attacking, the Storm uses this file.
execute as @e[tag=StormAttacking] at @s run function explorers_eve:storm/attack/active

#Digging skulls clear liquid.
execute at @e[tag=DigFlamingSkull] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #explorers_eve:dig_remove

#Super TNT distraction effects.
execute as @e[tag=SuperTNTTracker] at @s unless entity @e[type=#explorers_eve:bomb_distraction,distance=..10] run function explorers_eve:item/super_tnt/start

#Super TNT distraction particles.
execute as @e[tag=SuperTNTMarker] at @s run function explorers_eve:item/super_tnt/particles

#Symbiont battle effects.
execute as @e[type=witherstormmod:withered_symbiont] at @s run function explorers_eve:symbiont/main

#Symbiont loot effects.
execute as @e[tag=SymbiontLoot] at @s run function explorers_eve:symbiont/loot_timer

#Ender Dragon battle effects.
execute as @e[tag=DragonTracker,limit=1] at @s run function explorers_eve:boss/dragon/main

#Wither battle effects.
execute as @e[type=wither] at @s if entity @a[gamemode=!spectator,distance=..80] run function explorers_eve:boss/wither/main

#Lich fight changes.
execute as @e[tag=LichBoss] at @s if entity @a[gamemode=!spectator,distance=..40] run function explorers_eve:boss/lich/main

#Minoshroom axe effects.
execute as @e[tag=ShroomAxe] at @s run function explorers_eve:boss/minoshroom/axe_wait

#Hydra battle effects.
execute as @e[type=twilightforest:hydra,tag=!FinalBattle] at @s if entity @a[gamemode=!spectator,distance=..32] run function explorers_eve:boss/hydra/main

#Hydra rematch effects.
execute as @e[type=twilightforest:hydra,tag=FinalBattle] at @s if entity @a[gamemode=!spectator,distance=..100] run function explorers_eve:boss/hydra/main

#Knight Phantom spawners don't drop experience.
execute as @e[tag=PhantomSpawnerMark] at @s run kill @e[type=experience_orb,distance=..1]

#Ur-Ghast battle effects.
execute as @e[type=twilightforest:ur_ghast] at @s if entity @a[gamemode=!spectator,distance=..64] run function explorers_eve:boss/ur_ghast/main

#Snow Queen initialization.
execute as @e[type=twilightforest:snow_queen] unless entity @s[tag=Activated] at @s run function explorers_eve:boss/snow_queen/activate

#Dragonsbane!
execute as @e[tag=DragonsbaneBoss] at @s run function explorers_eve:boss/dragonsbane/main

#Netherite Monstrosity golem display rotation.
execute as @e[tag=GolemDisplay] at @s run tp @s ~ ~ ~ ~1.5 ~

#Netherite Monstrosity battle effects.
execute as @e[type=cataclysm:netherite_monstrosity] at @s if entity @a[gamemode=!spectator,distance=..40] run function explorers_eve:boss/netherite_monstrosity/main

#Ender Guardian battle effects.
execute as @e[type=cataclysm:ender_guardian] at @s if entity @a[gamemode=!spectator,distance=..64] run function explorers_eve:boss/ender_guardian/main

#Ignis changes.
execute as @e[type=cataclysm:ignis,tag=!FinalBattle] at @s if entity @a[gamemode=!spectator,distance=..80] run function explorers_eve:boss/ignis/main

#Harbinger changes.
execute as @e[tag=HarbingerSummonMark] at @s run function explorers_eve:boss/harbinger/summon_timer
execute as @e[type=cataclysm:the_harbinger] at @s if entity @a[gamemode=!spectator,distance=..64] run function explorers_eve:boss/harbinger/main

#Nameless Sorcerer fight changes.
execute as @e[tag=SorcererBoss] at @s run function explorers_eve:boss/sorcerer/main

#The Alchemist prevents use of the Frigid Gemstone.
execute as @a[gamemode=!spectator,predicate=explorers_eve:structure/everdawn_blinding_dungeon] at @s run function explorers_eve:boss/blinding/check_ice_accessory

#Arachnarch and Starlit Crusher changes.
execute as @e[type=#explorers_eve:population_boss,tag=!FinalBattle] at @s if entity @a[gamemode=!spectator,distance=..48] run function explorers_eve:boss/population/main

#Aether boss initialization.
execute as @e[type=aether:slider,tag=!SliderActive] if entity @s[nbt={BossFight:1b}] at @s run function explorers_eve:boss/slider/activate
execute as @e[type=aether:valkyrie_queen,tag=!ValkyrieQueenActive] if entity @s[nbt={BossFight:1b}] at @s run function explorers_eve:boss/valkyrie_queen/activate
execute as @e[type=aether:sun_spirit,tag=!SunSpiritActive] if entity @s[nbt={BossFight:1b}] at @s run function explorers_eve:boss/sun_spirit/activate
execute as @e[type=lost_aether_content:aerwhale_king,tag=!AerwhaleKingActive] if entity @s[nbt={BossFight:1b}] at @s run function explorers_eve:boss/aerwhale_king/activate

#Slider fight changes.
execute as @e[tag=SliderActive] at @s run function explorers_eve:boss/slider/main

#Valkyrie Queen fight changes.
execute as @e[tag=ValkyrieQueenActive] at @s run function explorers_eve:boss/valkyrie_queen/main

#Sun Spirit fight changes.
execute as @e[tag=SunSpiritActive,tag=!FinalBattle] at @s run function explorers_eve:boss/sun_spirit/main

#Aerwhale King fight changes.
execute as @e[tag=AerwhaleKingActive] at @s run function explorers_eve:boss/aerwhale_king/main

#Corpse effects.
execute as @e[type=corpse:corpse,tag=!CorpseChecked] at @s run function explorers_eve:world/corpse_check

#If the Formidibomb is near a phase 6+ Storm, it waits to be targetted.
execute as @e[type=witherstormmod:formidibomb,tag=AngerFocusActive] at @s run function explorers_eve:item/formidibomb/anger_track

#Command Block wither skulls.
execute as @e[tag=CommandSkullSource] at @s run function explorers_eve:command_block/skull_burst

#Command Block Symbiont spawning.
execute as @e[type=witherstormmod:command_block,tag=SymbiontSpawning] at @s run function explorers_eve:command_block/symbiont/summon_timer

#Bowels head particles.
execute as @e[tag=HeadParticles] at @s run particle witherstormmod:command_block ~ ~3 ~ 0.5 1 0.5 0.2 3 force
execute as @e[tag=HeadParticles2] at @s run particle witherstormmod:command_block ~ ~3 ~ 0.5 1 0.5 0.3 5 force

#Command Blocks and Tentacles can't be moved.
execute as @e[type=#explorers_eve:pull_immune] run data modify entity @s Motion set value [0d,0d,0d]

#Tentacles can't fly.
execute as @e[type=witherstormmod:tentacle] at @s if block ~ ~-1 ~ air unless entity @e[type=witherstormmod:command_block,distance=..8] run tp @s ~ ~-1 ~

#Spiders in the Everdawn are Nested Spiders.
execute as @e[type=minecraft:spider,tag=!SpiderChecked] at @s run function explorers_eve:world/spider_everdawn_check

#Activates when a player tries to use a Sickly Teratoma.
execute as @a[scores={TeratomaUsed=1..}] at @s run function explorers_eve:item/teratoma/check

#Activates when a player tries to use a Resonator.
execute as @a[scores={BrightResonatorUsed=1..}] at @s run function explorers_eve:item/resonator/check
execute as @a[scores={DawnResonatorUsed=1..}] at @s run function explorers_eve:item/resonator/check

#Keep Resonators active.
execute as @e[tag=BlueSkiesResonator] at @s run function explorers_eve:item/resonator/active

#Activates when a player tries to use a Redstone Beacon.
execute as @a[scores={RedstoneBeaconUsed=1..}] at @s run function explorers_eve:item/redstone_beacon/check

#Used for changing challenge options.
execute as @a[scores={Challenge=1..}] at @s run function explorers_eve:world/challenge/pick

#Soul Cannon fireballs distract the Storm.
execute as @a[scores={SoulCannonUsed=1..}] at @s run function explorers_eve:item/soul_cannon/mark
execute as @e[tag=SoulDistractMark] at @s unless entity @e[type=dungeons_plus:soul_fireball,distance=..2] run function explorers_eve:item/soul_cannon/distract
execute as @e[tag=SoulEmpowerMark] at @s unless entity @e[tag=SoulEmpowered,distance=..2] run function explorers_eve:item/soul_cannon/split

#Empowered Lich's Scepter effects. DEBUG, currently only need to tick down a timer.
#execute as @a[tag=LichScepterActive] run function explorers_eve:item/lich_scepter/active
execute as @a[tag=LichScepterActive] run scoreboard players remove @s LichBoltCooldown 1

#Breaking a Fortification Scepter triggers some checks.
execute as @a[scores={FortificationBroken=1..}] at @s run function explorers_eve:item/lich_scepter/shield_broken

#The Lamp of Cinders sets mobs on fire for much longer.
execute as @a[tag=UsingLamp] run function explorers_eve:item/lamp_of_cinders/tick_check

#The Alchemy Scroll's spikes are strong.
execute as @a[scores={AlchemyScrollUsed=1..}] at @s run function explorers_eve:item/alchemy_scroll/use

#The Crushing Hammer is way better.
execute as @a[tag=UsingHammer] run function explorers_eve:item/crushing_hammer/tick_check

#Void Howitzer buff.
execute as @e[type=cataclysm:void_howitzer,tag=!VoidMarked] at @s run function explorers_eve:item/void_howitzer/mark
execute as @e[tag=VoidHowitzerTrack] at @s unless entity @e[tag=VoidMarked,distance=..4] run function explorers_eve:item/void_howitzer/explode

#Eye of the Storm cooldown.
execute as @a[tag=StormEyeCooldown] run function explorers_eve:item/eye_of_the_storm/cooldown

#Empowered Cloud Staff effects.
execute as @e[type=aether:cloud_crystal,tag=!CloudCrystalChecked] at @s run function explorers_eve:item/cloud_staff/check
execute as @e[tag=CloudEmpowerMark] at @s unless entity @e[tag=CloudEmpowered,distance=..1] run function explorers_eve:item/cloud_staff/hit

#Punisher effects.
execute as @a[scores={FishingRodUsed=1..}] run function explorers_eve:item/punisher/check
execute as @e[type=fishing_bobber,tag=PunisherBobber] if entity @s[nbt={Motion:[0d,0d,0d]}] at @s run function explorers_eve:item/punisher/explode

#Prototype Zeta effects.
execute as @a[predicate=explorers_eve:prototype_zeta] run function explorers_eve:item/prototype_zeta/hold
execute as @a[tag=ZetaHolding,predicate=!explorers_eve:prototype_zeta] run function explorers_eve:item/prototype_zeta/hold_end
execute as @a[tag=ZetaCooldown] run function explorers_eve:item/prototype_zeta/cooldown
execute as @e[tag=ZetaShotTracker] at @s run function explorers_eve:item/prototype_zeta/track

#Track players that use custom items.
execute as @a[scores={CarrotStickUsed=1..}] at @s run function explorers_eve:item/identify

#When a Charm of Life is used, trigger nice things.
execute as @a[scores={LifeCharmUsed=1..}] run function explorers_eve:world/revival_protection

#Activates when the marker to give unbreakable armor appears.
execute as @e[tag=ArmorUnbreakableMark] at @s run function explorers_eve:item/unbreakable_armor

#Activates when the marker to empower treasures appears.
execute as @e[tag=BeaconUpgradeMark] at @s positioned ~ ~-2.5 ~ run function explorers_eve:item/empower/wait

#Replace Cataclysm's melty netherrack with unstable obsidian.
execute as @a at @s if block ~ ~-1 ~ cataclysm:melting_netherrack run fill ~5 ~-2 ~5 ~-5 ~1 ~-5 aether:unstable_obsidian replace cataclysm:melting_netherrack

#Withering Apocalypse effects.
execute if data storage world WitheringApocalypse as @e[type=#explorers_eve:can_be_sickened,tag=!ApocalypseIgnore] at @s run function explorers_eve:world/sicken_mob

#Progression-based music is lower priority than anything else.
execute as @a[tag=ProgressMusic] at @s run function explorers_eve:music/progress/main

#General music effects.
execute as @a[tag=MusicPlaying] at @s run function explorers_eve:music/main