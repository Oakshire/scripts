--[[
	Script Name	: SpawnScripts/GreaterFaydark/GioiaGreenvale.lua
	Script Purpose	: Gioia Greenvale 
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
		PlayFlavor(NPC, "", "With so many new faces in town, it's hard to keep everyone's names straight!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "There are more goods for sale elsewhere in Kelethin, if you know where to look.", "", 1689589577, 4560189, Spawn)
	else
	end

end

