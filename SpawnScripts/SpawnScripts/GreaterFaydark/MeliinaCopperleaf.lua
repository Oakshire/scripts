--[[
	Script Name	: SpawnScripts/GreaterFaydark/MeliinaCopperleaf.lua
	Script Purpose	: Meliina Copperleaf 
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

	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "I'd be careful in your home...if you get back to it.  I overheard someone talking about the little prank they're playing on you.", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I don't know what's going on, friend...but you're being followed!", "peer", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "You're excused!", "stinky", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "I'll bet HE'LL never eat triggerfish pie again!", "chuckle", 1689589577, 4560189, Spawn)
	else
	end

end

