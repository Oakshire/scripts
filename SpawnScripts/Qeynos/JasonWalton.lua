--[[
	Script Name	: SpawnScripts/SouthQeynos/JasonWalton.lua
	Script Purpose	: Jason Walton <Banker>
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

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Welcome to the South Qeynos branch of the Norrath Exchange!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Greetings, what can I help you with today?", "", 1689589577, 4560189, Spawn)
	else
	end

end

