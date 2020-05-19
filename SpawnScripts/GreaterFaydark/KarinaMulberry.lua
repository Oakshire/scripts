--[[
	Script Name	: SpawnScripts/GreaterFaydark/KarinaMulberry.lua
	Script Purpose	: Karina Mulberry 
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

	Say(NPC, "I found this spawn 'unspawned', could not find her in Live, but we had her once, and have a script, so what's the deal? She valid or not?")

--[[
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Old Kelethin is closest to Tunare's Sapling.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'm glad to see so many Feir'Dal survived beyond Faydwer!", "", 1689589577, 4560189, Spawn)
	else
	end
--]]
end

