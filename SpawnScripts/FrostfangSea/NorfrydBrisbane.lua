--[[
	Script Name	: SpawnScripts/FrostfangSea/NorfrydBrisbane.lua
	Script Purpose	: Norfryd Brisbane <Banker>
	Script Author	: John Adams
	Script Date	: 2013.03.16
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
		PlayFlavor(NPC, "", "You'll be able to access this bank account all across Norrath!", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Your items and coin will be safe with us!", "", 1689589577, 4560189, Spawn)
	else
	end

end

