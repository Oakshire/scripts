--[[
	Script Name	: SpawnScripts/FrostfangSea/TrainerLillgardThunderrider.lua
	Script Purpose	: Trainer Lillgard Thunderrider <Horse Merchant>
	Script Author	: theFoof
	Script Date	: 2013.10.30
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
	PlayFlavor(NPC, "", "I have many types of mounts.  One is bound to suit your style!", "", 1689589577, 4560189, Spawn)
end