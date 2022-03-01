--[[
	Script Name	: SpawnScripts/FrostfangSea/GrokkaHopson.lua
	Script Purpose	: Grokka Hopson 
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
	PlayFlavor(NPC, "", "Froak!", "hello", 1689589577, 4560189, Spawn)
end

