--[[
	Script Name	: SpawnScripts/QeynosHarbor/aQeynoscitizen.lua
	Script Purpose	: a Qeynos citizen 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Are they here as spies?  Are they planning an attack?", "ponder", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Have you seen them?  I've heard that ratonga have been spotted in the city!", "agree", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Argh, it's not enough that they filthy up Freeport, now they've come here to spread their disease and muck around our city?  PAH!", "angry", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "The Council hasn't said anything about the ratonga yet.  I wonder what's going on?", "ponder", 1689589577, 4560189, Spawn)
	else
	end

end