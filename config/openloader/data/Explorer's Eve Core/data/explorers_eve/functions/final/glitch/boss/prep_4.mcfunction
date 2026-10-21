#Prepare boss choice markers.
kill @e[tag=GlitchBossChoice]
kill @e[tag=FinalBattle]
tag @s add Tier4Prep
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","Ignis"]}

tag @s add ForceBomb
scoreboard players add @s GlitchBombDelay 8

tag @w[tag=FinalBoss] remove Phase9
tag @w[tag=FinalBoss] add Phase10