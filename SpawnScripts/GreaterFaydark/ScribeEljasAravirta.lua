--[[
	Script Name	: SpawnScripts/GreaterFaydark/ScribeEljasAravirta.lua
	Script Purpose	: Scribe Eljas Aravirta 
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
		PlayFlavor(NPC, "", "Why hello there!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Oh, hello! I'm sorry I didn't see you, how can I help you, friend?", "", 1689589577, 4560189, Spawn)
	else
	end

end

