--[[
	Script Name	: SpawnScripts/FrostfangSea/AssistantWardenBjerne.lua
	Script Purpose	: Assistant Warden Bjerne <Housing>
	Script Author	: theFoof
	Script Date	: 2013.09.26
	Script Notes	: 
--]]

require"SpawnScripts/FrostfangSea/halas_proximity_cheer"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "ProxCheer")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "We've got the most spacious housing in all of Norrath!", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Step up and take a tour of our accommodations.", "hello", 1689589577, 4560189, Spawn)
	end
end

