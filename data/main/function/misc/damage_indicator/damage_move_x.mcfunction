execute store result score %move_negpos random run random value 0..1

$execute facing entity @p eyes if score %move_negpos random matches 0 at @s run tp @s ^-0.$(movex) ^ ^
$execute facing entity @p eyes if score %move_negpos random matches 1 at @s run tp @s ^0.$(movex) ^ ^