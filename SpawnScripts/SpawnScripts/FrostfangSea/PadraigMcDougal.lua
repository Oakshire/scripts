--[[
	Script Name	: SpawnScripts/FrostfangSea/PadraigMcDougal.lua
	Script Purpose	: Padraig McDougal <Tradeskill Career Counsellor>
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
	PlayFlavor(NPC, "", "I'm sorry, my services are only available to those more advanced in the arts.", "", 1689589577, 4560189, Spawn)
end