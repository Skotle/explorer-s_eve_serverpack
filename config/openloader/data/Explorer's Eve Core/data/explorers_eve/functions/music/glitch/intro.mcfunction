#Need unique functions for the intros because they change so much at once.
playsound explorers_eve:glitch_theme_intro record @s ~ ~ ~ 1 1 1
scoreboard players set @s MusicTime 831
tag @s add GlitchIntro
tellraw @s [{"text":"Now playing: ","color":"gray","italic":true},{"text":"Father of All Glitches","italic":true,"underlined":true},{"text":", by Quillver","italic":true}]