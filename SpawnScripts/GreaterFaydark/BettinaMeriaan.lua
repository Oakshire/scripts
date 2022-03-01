--[[
	Script Name	: SpawnScripts/GreaterFaydark/BettinaMeriaan.lua
	Script Purpose	: Bettina Meriaan <Barmaid>
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
		PlayFlavor(NPC, "", "I absolutely LOVE my job!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Whoops! I think you've got my backpack confused with your own. That's okay, I've made that mistake sometimes too!", "", 1689589577, 4560189, Spawn)
	else
	end

end

