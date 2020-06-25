--[[
	Script Name	: SpawnScripts/GreaterFaydark/ProfessorEbenezerCogsworthVI.lua
	Script Purpose	: Professor Ebenezer Cogsworth VI <Tinkering Trainer>
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

	PlayFlavor(NPC, "", "You look like you need help.  Can I help you find something?", "", 1689589577, 4560189, Spawn)
end

