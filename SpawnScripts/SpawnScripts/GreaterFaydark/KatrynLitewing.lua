--[[
	Script Name	: SpawnScripts/GreaterFaydark/KatrynLitewing.lua
	Script Purpose	: Katryn Litewing <Guild Cloak Designer>
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Greetings friend.  I am sorry, but I can only assist members of more advanced guilds with their cloak design.", "", 1689589577, 4560189, Spawn)
end

