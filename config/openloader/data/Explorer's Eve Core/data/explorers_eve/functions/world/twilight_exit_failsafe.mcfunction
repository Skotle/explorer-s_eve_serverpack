#Just in case of a failed portal spawn.
advancement revoke @s only explorers_eve:left_twilight_protect
tag @s add TwilightLeft
tag @s[tag=TwilightStuck] add FirstTwilightLeft
tag @s remove TwilightStuck
schedule function explorers_eve:world/twilight_exit_failsafe_check 1s