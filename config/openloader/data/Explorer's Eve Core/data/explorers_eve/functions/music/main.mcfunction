#This function hooks into like a billion others. Joy of joys.
scoreboard players remove @s MusicTime 1
stopsound @s[tag=!NullMusic] music

execute if entity @s[tag=BowelsMusic] run function explorers_eve:music/bowels/main
execute if entity @s[tag=CommandMusic] run function explorers_eve:music/command_block/main

execute if entity @s[tag=GlitchMusic] run function explorers_eve:music/glitch/main
execute if entity @s[tag=FinalMusic] run function explorers_eve:music/final/main
execute if entity @s[tag=EmpowerMusic] run function explorers_eve:music/empower/main

execute if entity @s[tag=ResummonMusic] run function explorers_eve:music/resummon/main

execute if entity @s[tag=DragonMusic] run function explorers_eve:music/dragon/main
execute if entity @s[tag=WitherMusic] run function explorers_eve:music/wither/main

execute if entity @s[tag=NagaMusic] run function explorers_eve:music/naga/main
execute if entity @s[tag=LichMusic] run function explorers_eve:music/lich/main
execute if entity @s[tag=MinoshroomMusic] run function explorers_eve:music/minoshroom/main
execute if entity @s[tag=HydraMusic] run function explorers_eve:music/hydra/main
execute if entity @s[tag=UrGhastMusic] run function explorers_eve:music/ur_ghast/main
execute if entity @s[tag=AlphaYetiMusic] run function explorers_eve:music/alpha_yeti/main
execute if entity @s[tag=SnowQueenMusic] run function explorers_eve:music/snow_queen/main
execute if entity @s[tag=KnightPhantomMusic] run function explorers_eve:music/knight_phantom/main
execute if entity @s[tag=DragonsbaneMusic] run function explorers_eve:music/dragonsbane/main

execute if entity @s[tag=EnderGuardianMusic] run function explorers_eve:music/ender_guardian/main
execute if entity @s[tag=NetheriteMonstrosityMusic] run function explorers_eve:music/netherite_monstrosity/main
execute if entity @s[tag=HarbingerMusic] run function explorers_eve:music/harbinger/main
execute if entity @s[tag=IgnisMusic] run function explorers_eve:music/ignis/main
execute if entity @s[tag=SorcererMusic] run function explorers_eve:music/sorcerer/main

execute if entity @s[tag=BlindingMusic] run function explorers_eve:music/blinding/main
execute if entity @s[tag=PopulationMusic] run function explorers_eve:music/population/main

execute if entity @s[tag=SliderMusic] run function explorers_eve:music/slider/main
execute if entity @s[tag=ValkyrieMusic] run function explorers_eve:music/valkyrie_queen/main
execute if entity @s[tag=SunSpiritMusic] run function explorers_eve:music/sun_spirit/main
execute if entity @s[tag=AerwhaleMusic] run function explorers_eve:music/aerwhale_king/main

#This one is triggered when there should be no music.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/null/main