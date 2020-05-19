--[[
	Script Name	: SpawnScripts/FrostfangSea/MoragMcMarrin.lua
	Script Purpose	: Morag McMarrin <Fuel Merchant>
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
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'll be happy to supply all your fuel needs.", "happy", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Please let me know if there's anything I can supply for you.", "nod", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	end
end

