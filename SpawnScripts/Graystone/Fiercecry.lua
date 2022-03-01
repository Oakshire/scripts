--[[
	Script Name	: SpawnScripts/Graystone/Fiercecry.lua
	Script Purpose	: Fiercecry <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "We are the Graystone Watch. We're here to prevent trouble in our village.", "", 1689589577, 4560189, Spawn)
end