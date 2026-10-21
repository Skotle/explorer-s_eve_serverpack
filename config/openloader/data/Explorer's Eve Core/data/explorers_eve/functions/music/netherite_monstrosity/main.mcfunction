#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/netherite_monstrosity/end
execute unless entity @e[type=cataclysm:netherite_monstrosity,scores={Health=1..},distance=..40] run function explorers_eve:music/netherite_monstrosity/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/netherite_monstrosity/loop_pick