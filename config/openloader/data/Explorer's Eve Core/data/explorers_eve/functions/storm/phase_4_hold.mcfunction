#Commence a chase upon evolution.
execute if entity @s[tag=Phase4ChasePrep] run function explorers_eve:storm/phase_4_chase

#When the player gets an Echo Shard, hold at 4.5.
execute unless entity @s[tag=Phase4Progress] if entity @a[advancements={explorers_eve:obtained_echo_shard=true}] run function explorers_eve:storm/phase_4_progress

#Before the player escapes the Twilight Forest, keep track of how long they've been there.
execute if entity @s[tag=Phase4EscapeTrack] run scoreboard players add @s EvolutionTime 1
execute if entity @s[tag=Phase4EscapeTrack] if entity @a[advancements={explorers_eve:left_twilight=true}] run function explorers_eve:storm/phase_4_evolve_delay

#Once the player escapes, wait a while before evolving.
execute if entity @s[tag=Phase4Evolving] run scoreboard players remove @s EvolutionTime 1
execute if entity @s[tag=Phase4Evolving,scores={EvolutionTime=..0}] run function explorers_eve:storm/phase_4_evolve