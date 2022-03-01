--[[
	Script Name	: SpawnScripts/GreaterFaydark/NixiaCogsworth.lua
	Script Purpose	: Nixia Cogsworth <Tinkering Supplies>
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

	PlayFlavor(NPC, "", "We've all the basic supplies that you'll ever need.  Are you looking for anything specific?", "", 1689589577, 4560189, Spawn)
end

