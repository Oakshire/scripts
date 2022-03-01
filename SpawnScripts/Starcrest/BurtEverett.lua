--[[
	Script Name	: SpawnScripts/Starcrest/BurtEverett.lua
	Script Purpose	: Burt Everett <Human Mentor Assistant>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "I would give you something to do, but I have nothing to do myself!", "shrug", 1689589577, 4560189, Spawn)
end