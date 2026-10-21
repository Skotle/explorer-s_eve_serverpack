#Things that should only happen after the Wither Storm finishes dying, namely music.
execute at @e[tag=VictoryMusicMark] as @a[distance=..600,advancements={explorers_eve:witherite_possible=false},tag=!MusicPlaying] at @s run function explorers_eve:music/progress/wither_storm_victory
execute at @e[tag=VictoryMusicMark] as @a[distance=..600,advancements={explorers_eve:witherite_possible=true},tag=!MusicPlaying] at @s run function explorers_eve:music/progress/resummon_victory
kill @e[tag=VictoryMusicMark]