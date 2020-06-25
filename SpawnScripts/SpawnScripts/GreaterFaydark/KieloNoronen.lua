--[[
	Script Name	: SpawnScripts/GreaterFaydark/KieloNoronen.lua
	Script Purpose	: Kielo Noronen <Broker>
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
		PlayFlavor(NPC, "", "You won't be sorry when you buy here!", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "If you find anything you want, let me know!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Come on over and shop awhile!", "beckon", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Someone's bound to be selling exactly what you need!", "hello", 1689589577, 4560189, Spawn)
	else
	end

end

