#Prepare boss choice markers.
tag @e[tag=GlitchBossChoice] add LowPriority
tag @s add Tier2Prep
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","Slider"]}
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","Netherite"]}
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","SnowQueen"]}
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","Hydra"]}

execute unless entity @e[tag=GlitchBossChoice,tag=Yeti] run tag @e[tag=GlitchBossChoice,tag=SnowQueen] add LowPriority

tag @s add ForceBomb