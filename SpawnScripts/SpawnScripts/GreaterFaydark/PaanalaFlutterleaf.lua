--[[
	Script Name	: SpawnScripts/GreaterFaydark/PaanalaFlutterleaf.lua
	Script Purpose	: Paanala Flutterleaf 
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
		PlayFlavor(NPC, "", "I hear that things are less expensive now that more trade is happening with the Outside.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "We Fae need to welcome newcomers.  They could turn out to be valuable friends.", "", 1689589577, 4560189, Spawn)
	else
	end

end

