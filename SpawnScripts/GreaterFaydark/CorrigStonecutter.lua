--[[
	Script Name	: SpawnScripts/GreaterFaydark/CorrigStonecutter.lua
	Script Purpose	: Corrig Stonecutter <Broker>
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
		PlayFlavor(NPC, "", "There's nothing wrong with looking, is there?", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "All right here's all the goods listed.  If you find anything you want, let me know.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I've got the goods if you've got the time.", "beckon", 1689589577, 4560189, Spawn)
	else
	end

end

