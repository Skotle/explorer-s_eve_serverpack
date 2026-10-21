#Run this function every second.
schedule function explorers_eve:world/progress_sync 60s

#Syncronize key advancements based on world data. For multiplayer and edge-case bugs.
execute if data storage world WitherStormSpawned run advancement grant @a only witherstormmod:main/root
execute if data storage world WitherStormSplit run advancement grant @a until explorers_eve:book/phase_6
execute if data storage world WitherStormDefeated run advancement grant @a until explorers_eve:book/star
execute if data storage world WitheritePossible run advancement grant @a only explorers_eve:witherite_possible