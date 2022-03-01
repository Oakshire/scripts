--[[
	Script Name	: SpawnScripts/GreaterFaydark/AmyRecolo.lua
	Script Purpose	: Amy Recolo <Tradeskill Career Counsellor>
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

	PlayFlavor(NPC, "", "I'm sorry, my services are only available to those more advanced in the arts.", "", 1689589577, 4560189, Spawn)
end

