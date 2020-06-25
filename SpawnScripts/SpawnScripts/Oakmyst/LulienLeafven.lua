--[[
	Script Name	: SpawnScripts/Oakmyst/LulienLeafven.lua
	Script Purpose	: Lulien Leafven 
	Script Author	: John Adams
	Script Date	: 2009.05.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "", "Practice makes perfect!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Another day, another bullseye!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I've been here so long, that I don't even have to look at the target to hit it!", "", 1689589577, 4560189, Spawn)
	end
end