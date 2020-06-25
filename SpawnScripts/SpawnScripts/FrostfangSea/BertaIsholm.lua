--[[
	Script Name	: SpawnScripts/FrostfangSea/BertaIsholm.lua
	Script Purpose	: Berta Isholm <Provisioner>
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

	local choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "I've got some fine viddles to warm your belly!", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "You're no good out there hungry.", "", 1689589577, 4560189, Spawn)
	end
end