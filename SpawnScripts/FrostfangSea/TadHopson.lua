--[[
	Script Name	: SpawnScripts/FrostfangSea/TadHopson.lua
	Script Purpose	: Tad Hopson 
	Script Author	: theFoof
	Script Date	: 2013.09.13
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "My parents say I'm not supposed to talk to strangers.", "speaknoevil", 1689589577, 4560189, Spawn)
end

