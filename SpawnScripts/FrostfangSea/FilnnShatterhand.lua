--[[
	Script Name	: SpawnScripts/FrostfangSea/FilnnShatterhand.lua
	Script Purpose	: Filnn Shatterhand <Historian>
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
	PlayFlavor(NPC, "", "Compiling the short history of our city may seem easy, but there is much work to be done.", "", 1689589577, 4560189, Spawn)
end