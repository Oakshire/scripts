--[[
	Script Name	: SpawnScripts/SouthQeynos/Eraanus.lua
	Script Purpose	: Eraanus <Guard>
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
		PlayFlavor(NPC, "", "I hate the night shift!  If the gnolls don't attack now I may die of boredom.", "grumble", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Good day to you citizen, all preserve Queen Antonia.", "salute", 1689589577, 4560189, Spawn)
	else
	end

end

