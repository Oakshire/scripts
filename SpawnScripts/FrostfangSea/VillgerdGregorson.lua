--[[
	Script Name	: SpawnScripts/FrostfangSea/VillgerdGregorson.lua
	Script Purpose	: Morag McMarrin <Tailor>
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
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
end