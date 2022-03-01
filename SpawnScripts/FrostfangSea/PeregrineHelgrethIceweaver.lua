--[[
	Script Name	: SpawnScripts/FrostfangSea/PeregrineHelgrethIceweaver.lua
	Script Purpose	: Padraig McDougal <Ravens of the North Merchant>
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
	PlayFlavor(NPC, "", "", "hello",0, 0, Spawn)
end

