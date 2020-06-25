--[[
	Script Name	: SpawnScripts/QeynosHarbor/Pottsby.lua
	Script Purpose	: Pottsby <City Merchant>
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Welcome! What can I help you with?", "bow", 1689589577, 4560189, Spawn)
	else
	end

end

