--[[
	Script Name	: SpawnScripts/Darklight/ReverendValac.lua
	Script Purpose	: Reverend Valac <Disciples of Innoruuk>
	Script Author	: John Adams
	Script Date	: 2009.02.01
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

	Say(NPC, "Innoruuk is the true leader of Neriak.", Spawn)
end

