--[[
	Script Name	: SpawnScripts/Graystone/Takk.lua
	Script Purpose	: Takk 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "This is a good spot for meditation, and for listening to the spirits speak.", "", 1689589577, 4560189, Spawn)
end