# Death-Swap-Multi
A Minecraft Datapack to play Death Swap with many players !

# Credits
Death Swap:
SethBling
https://youtu.be/r5rEaHPt6mw

Random generator: (for timeout)
Minecraft Zephirr
https://youtu.be/TfoZTQ9sU3Y?t=1323

Datapack:
Jiogo18

Translate:
Jiogo18


# How to ?
Reset the datapack:
- run /reload and click on the yellow text

Start the game (or resume):
- run /reload and click on "Start the game"
- or /function death_swap_multi:party/resume

Stop the game (or pause):
- /function death_swap_multi:party/pause

Join the game:
- click on "Join the game" text (at start)
- or run /function death_swap_multi:party/join

Leave the game:
- die
- run /function death_swap_multi:party/join

Entity:
Every entities can join the game with:
- /execute as entity_selector run function death_swap_multi:party/join

Swap:
- The swap is done every 10 to 300 seconds (5 minutes)
- Can be configurated with: (reseted)
	scoreboard players set time_min random_timeout 200
	scoreboard players set time_max random_timeout 6000
- Everybody will be swapped elsewhere (but with an odd number of players, one player can stay at the same place)


# Mega Death Swap
- start by running /function death_swap_multi:mega/start
- stop by running /function death_swap_multi:mega/stop
	every entites added by Mega Death Swap left the game but not others entities
	doesn't stop the game (/function death_swap_multi:party/pause)
- every entities of the world (except #death_swap_multi:mega_blacklist) join the game if there is a player at less than 128 blocks


# Errors
- Timeout: a timeout can append when every players aren't swapped
	- random isn't good (an infinitely rare case)
	- when an entity (mega death swap) is in an unloaded chunk
- Disappeared: an entity can disapear when:
	- she is in an unloaded chunk
	- she died during the swap (a rare case)

Errors generally don't affect the game


# Translate
A ressource pack is available for translations of:
- fr Français
- en English (ressource pack remove the download message)

Simply add the ressource pack and select your minecraft language
