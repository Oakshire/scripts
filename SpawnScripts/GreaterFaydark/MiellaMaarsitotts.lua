--[[
	Script Name	: SpawnScripts/GreaterFaydark/MiellaMaarsitotts.lua
	Script Purpose	: Miella Maarsitotts <Fae Language Instructor>
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I love paying my respects at Tunare's Sapling.  It's a lovely reminder of where we are!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "This is a beautiful place to live!", "", 1689589577, 4560189, Spawn)
	else
	end

end

