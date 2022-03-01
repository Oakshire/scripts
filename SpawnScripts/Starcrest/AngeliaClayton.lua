--[[
	Script Name	: SpawnScripts/Starcrest/AngeliaClayton.lua
	Script Purpose	: Angelia Clayton 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Hello to you!  If you enjoy my dancing please be sure to leave a tip on the counter!", "", 1689589577, 4560189, Spawn)
end