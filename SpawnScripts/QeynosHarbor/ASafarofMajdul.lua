--[[
	Script Name	: SpawnScripts/QeynosHarbor/ASafarofMajdul.lua
	Script Purpose	: A Safar of Maj'dul 
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
		PlayFlavor(NPC, "", "Please ride the carpet out to the boat that will take you to the Isle of Ro. Others are waiting there to make your journey comfortable.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Come see and feel the wonders of the Isle of Ro. It's only a short carpet ride to the boat.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "It is an honor to assist you in your travels to the Isle of Ro. Please just take the carpet out to the boat that will take you to the Isle of Ro.", "fullcurtsey", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "It is an honor to assist you in your travels to the Isle of Ro. Please just take one of our carpets out to the boat that will take you to the Isle of Ro.", "fullcurtsey", 1689589577, 4560189, Spawn)
	else
	end

end

