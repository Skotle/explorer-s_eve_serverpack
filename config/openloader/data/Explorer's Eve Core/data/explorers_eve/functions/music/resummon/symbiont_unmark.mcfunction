#Switch between Symbiont and Storm music.
stopsound @s record explorers_eve:resummon_theme_6
stopsound @s record explorers_eve:resummon_theme_7_intro
stopsound @s record explorers_eve:resummon_theme_7
stopsound @s record explorers_eve:resummon_theme_7_end
playsound explorers_eve:resummon_theme_7_end record @s ~ ~ ~ 1 1 1
scoreboard players set @s MusicTime 20
tag @s remove ResummonedSymbiont