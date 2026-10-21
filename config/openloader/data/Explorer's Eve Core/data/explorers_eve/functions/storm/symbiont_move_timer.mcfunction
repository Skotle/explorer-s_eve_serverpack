#Wait for a bit, then refocus.
scoreboard players add @s SymbiontMoveTime 1
execute if score @s SymbiontMoveTime matches 60.. run function explorers_eve:storm/symbiont_move_end