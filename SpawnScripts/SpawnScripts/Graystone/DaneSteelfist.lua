--[[
	Script Name	: SpawnScripts/Graystone/DaneSteelfist.lua
	Script Purpose	: Dane Steelfist 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/barbarian/ft/barbarian/barbarian_eco_garble_garbled_gm_1d4e2601.mp3", "garbled text hail not to be translated", "", 4202912889, 538477897, Spawn)
end