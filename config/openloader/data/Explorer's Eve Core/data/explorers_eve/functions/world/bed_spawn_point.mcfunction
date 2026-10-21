#It's a lot harder to reset a spawn point from a bed.
advancement revoke @s only explorers_eve:use_bed
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end unless dimension explorers_eve:glitch run spawnpoint @s ~ ~ ~
execute unless block ~ ~ ~ #explorers_eve:respawn_secure run tellraw @s {"text":"Your spawn point may be blocked! Make sure you're in an empty space."}