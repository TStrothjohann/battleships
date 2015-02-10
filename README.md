#Battleships

MVP
4x4 Grid, a one-field-boat, Players can shoot, make a hit, wind and loose.

Later on:
each player has a board upon which they can place a number of ships. The boards are 10x10 two dimensional grid A-j*1-10

place ships
take turn


#CRC

|Board |
|----------------|:-----------:|
| marker_location | Markers |
| ship_location | Player |


Ships
-----------------
|@length||
|@hitcount||
|floating?||


Player
-----------------
|place_ships|Board|
|place_marker|Board|
|@floatingships_count|Ships|

Game
-----------------
|play!|Players|
|floating_ships?|Player|
|win|self|