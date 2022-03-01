--[[
	Script Name	: SpawnScripts/FrostfangSea/adisreputableboatman.lua
	Script Purpose	: a disreputable boatman 
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "I've no business with you today.", "", 1689589577, 4560189, Spawn)
end