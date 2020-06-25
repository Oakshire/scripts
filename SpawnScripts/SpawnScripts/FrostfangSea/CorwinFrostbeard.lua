--[[
	Script Name	: SpawnScripts/FrostfangSea/CorwinFrostbeard.lua
	Script Purpose	: Corwin Frostbeard <Fuel Merchant>
	Script Author	: theFoof
	Script Date	: 2013.09.26
	Script Notes	:
--]]

require"SpawnScripts/FrostfangSea/halas_proximity_cheer"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "ProxCheer")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "", "Welcome!", "hello", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'll be happy to supply all your fuel needs.", "nod", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	end
end