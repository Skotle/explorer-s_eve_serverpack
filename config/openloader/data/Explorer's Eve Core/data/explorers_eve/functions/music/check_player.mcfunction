#Boss music! This function marks all players, spectator or otherwise, when music should play. If multiple conditions are met in the same tick, higher ones get priority.
#First, Bowels and Command Block fight. This one has an extra check based on the CommandBattling tag.
execute if dimension witherstormmod:bowels if biome ~ ~ ~ witherstormmod:bowels unless entity @s[tag=MusicPlaying] run function explorers_eve:music/bowels/mark
execute if dimension witherstormmod:bowels if entity @e[type=witherstormmod:command_block,distance=..160] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/command_block/mark

#Final boss dimension.
execute if predicate explorers_eve:glitch unless entity @s[tag=MusicPlaying] run function explorers_eve:music/glitch/mark

#Then, final boss gets priority.
execute if entity @w[tag=FinalBoss,distance=..300] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/final/mark
execute if entity @e[tag=CommandRematch,tag=!CommandRematchIdle,distance=..128] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/empower/mark

#Next up is the resummoned Wither Storm.
execute if entity @w[tag=Resummoned,distance=..300] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/resummon/mark

#Vanilla bosses.
execute if entity @e[tag=DragonTracker,distance=..200] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/dragon/mark
execute if entity @e[type=wither,distance=..32] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/wither/mark

#Twilight Forest bosses. The Lich gets a tag because of his shadow clones, which share the same ID.
execute if entity @e[type=twilightforest:naga,scores={Health=1..},distance=..24] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/naga/mark
execute if entity @e[tag=LichBoss,distance=..20] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/lich/mark
execute if entity @e[type=twilightforest:minoshroom,distance=..24] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/minoshroom/mark
execute if entity @e[type=twilightforest:hydra,scores={Health=1..},distance=..30] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/hydra/mark
execute if entity @e[type=twilightforest:ur_ghast,distance=..48] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/ur_ghast/mark
execute if entity @e[type=twilightforest:alpha_yeti,distance=..24] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/alpha_yeti/mark
execute if entity @e[type=twilightforest:snow_queen,distance=..20] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/snow_queen/mark
execute if entity @e[type=twilightforest:knight_phantom,distance=..16] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/knight_phantom/mark
execute if entity @e[type=twilightforest:pinch_beetle,tag=DragonsbaneBoss,distance=..16] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/dragonsbane/mark

#Cataclysm bosses.
execute if entity @e[type=cataclysm:ender_guardian,distance=..32] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/ender_guardian/mark
execute if entity @e[type=cataclysm:netherite_monstrosity,scores={Health=1..},distance=..24] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/netherite_monstrosity/mark
execute if entity @e[type=cataclysm:the_harbinger,distance=..40] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/harbinger/mark
execute if entity @e[type=cataclysm:ignis,distance=..40] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/ignis/mark
execute if entity @e[tag=SorcererBoss,distance=..64] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/sorcerer/mark

#Blue Skies bosses. They share themes.
execute if entity @e[type=#explorers_eve:blinding_boss,distance=..16] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/blinding/mark
execute if entity @e[type=#explorers_eve:population_boss,distance=..24] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/population/mark

#Aether bosses. The Sun Spirit always has music, other bosses wait until they're activated.
execute if entity @e[tag=SliderActive,distance=..16] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/slider/mark
execute if entity @e[tag=ValkyrieQueenActive,distance=..24] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/valkyrie_queen/mark
execute if entity @e[type=aether:sun_spirit,distance=..12] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/sun_spirit/mark
execute if entity @e[tag=AerwhaleKingActive,distance=..30] unless entity @s[tag=MusicPlaying] run function explorers_eve:music/aerwhale_king/mark