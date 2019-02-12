====================================
DYNAMIC SPAWNING SYSTEM
2/11/19
====================================

To Install

1. Extract the files into the Outbreak/DefaultMapInstances folder.

NOTE: The Spawndefs folder should be under DefaultMapInstances, not the City_00_01 folder.


To Use

1. Enter the game and go to Officer Parks using /moveto -85 0 1330
2. Speak with him and then observe the training area as it dynamically spawns. 
3. Move SW to observe the nearby contaminated area.
	--Four pairs of hostile contaminated should have dynamically spawned here.
	--A custom template may cause a victim to appear in some encounters.

To Modify

1. ES_Library_Object.lua
	--This contains the object_library information.
	--The ES_Contaminated_City_00_01 has been modified with a CanSpawn2.
2. /Spawndefs folder
	--The spawndefs have modifiable encounter tables and the CanSpawnX variants.
	--Templates accept direct entries or references to tables.
	--BaseType (such as CenteredAround) will direct animations and call outs later.

It's easy and fast to modify, and can accommodate more sophisticated setups
such as having Tsoo and Freaks carry out a shady deal in the same encounter. 
Everything is as close to the design and model that the original game used as I could figure out.

The next step is probably a scaling system of some sort. However, it is not yet built to handle
top-level containers with multiple sub-group layers (such as found in Atlas Park) so that should
be addressed.  