--[[
	Script Name	: SpawnScripts/GreaterFaydark/AlmillaSumac.lua
	Script Purpose	: Almilla Sumac <Broker>
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

	choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "Come on over! You won't find better deals elsewhere!", "beckon", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'm sure we have something that will please even you!", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "All right!  I'll see what we have on the market now.", "thanks", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Let's check what's available, shall we?", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "All right here's all the goods listed.  If you find anything you want, let me know.", "", 1689589577, 4560189, Spawn)
	else
	end

end

