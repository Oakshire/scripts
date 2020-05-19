--[[
	Script Name	: SpawnScripts/Longshadow/OrianDRak.lua
	Script Purpose	: Orian D`Rak 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "How dare you barge into my house! Who do you think you are, fool?", "", 1689589577, 4560189, Spawn)
end