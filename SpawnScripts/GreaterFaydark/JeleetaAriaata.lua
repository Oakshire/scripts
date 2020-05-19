--[[
	Script Name	: SpawnScripts/GreaterFaydark/JeleetaAriaata.lua
	Script Purpose	: Jeleeta Ariaata 
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
		PlayFlavor(NPC, "", "There's nothing like sitting beside the waterfall and listening to the sounds.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Of course we measure time in Rings; who wouldn't?", "", 1689589577, 4560189, Spawn)
	else
	end

end

