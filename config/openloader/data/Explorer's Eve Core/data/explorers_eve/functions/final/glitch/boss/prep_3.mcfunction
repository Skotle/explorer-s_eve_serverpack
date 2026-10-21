#Prepare boss choice markers.
tag @e[tag=GlitchBossChoice] add LowPriority
tag @s add Tier3Prep
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","UrGhast"]}
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","SunSpirit"]}
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","EnderGuardian"]}
summon marker ~ ~ ~ {Tags:["GlitchBossChoice","Harbinger"]}

tag @s add ForceBomb

tag @w[tag=FinalBoss] remove Phase8
tag @w[tag=FinalBoss] add Phase9