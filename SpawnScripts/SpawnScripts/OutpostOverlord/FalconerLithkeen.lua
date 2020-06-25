--[[
	Script Name	: SpawnScripts/OutpostoftheOverlord/FalconerLithkeen.lua
	Script Purpose	: Falconer Lithkeen 
	Script Author	: Cynnar
	Script Date	: 2018.10.14
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
		PlayFlavor(NPC, "", "Fly forth, my friends!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "To the sky!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Good boy, Dasher!", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Good girl, Swift!", "", 1689589577, 4560189, Spawn)
	else
	end

end

