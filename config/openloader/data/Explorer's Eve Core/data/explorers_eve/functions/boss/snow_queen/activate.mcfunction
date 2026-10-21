#Start the fight.
tag @s add Activated
scoreboard players set @s IceCubeTime 75
scoreboard players set @s IceFallTime 50
execute align xyz run summon marker ~0.5 ~-4.5 ~0.5 {Tags:["IceArenaCenter"]}

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true