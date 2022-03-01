--[[
	Script Name	: SpawnScripts/GreaterFaydark/MissantratheStylist.lua
	Script Purpose	: Missantra the Stylist <Barber>
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

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Change is good! You should get one!", "beckon", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "A new look for a new town, that's what I always say!", "smile", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I can help! Come closer for a consultation!", "converse_female01", 1689589577, 4560189, Spawn)
	else
	end

end

