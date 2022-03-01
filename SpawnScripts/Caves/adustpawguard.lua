--[[
	Script Name		:	SpawnScripts/Caves/adustpawguard.lua
	Script Purpose	:	
	Script Author	:	Jabantiz
	Script Date		:	2/23/2019
	Script Notes	:	
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 48.04, 2.68, -92.89, 2)
	MovementLoopAddLocation(NPC, 38.91, 2.60, -90.71, 2)
	MovementLoopAddLocation(NPC, 30.94, 3.32, -87.40, 2)
	MovementLoopAddLocation(NPC, 28.13, 3.36, -83.55, 2)
	MovementLoopAddLocation(NPC, 24.03, 5.10, -76.07, 2)
	MovementLoopAddLocation(NPC, 21.20, 4.93, -71.53, 2)
	MovementLoopAddLocation(NPC, 24.03, 5.10, -76.07, 2)
	MovementLoopAddLocation(NPC, 28.13, 3.36, -83.55, 2)
	MovementLoopAddLocation(NPC, 30.94, 3.32, -87.40, 2)
	MovementLoopAddLocation(NPC, 38.91, 2.60, -90.71, 2)
end

function respawn(NPC)
	spawn(NPC)
end

--Moved these from the old script

--[[
PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_death_9c1f07cb.mp3", "Another member of the pack down!", "", 3426629421, 3660282518, Spawn)
PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 2385604574, 3717589402, Spawn)
PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 1531034367, 952662328, Spawn)
PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr jahht ttekkkman", "", 1674950709, 3936377565, Spawn)
--]]