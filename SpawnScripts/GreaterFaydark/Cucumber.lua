--[[
	Script Name		:	SpawnScripts/GreaterFaydark/Cucumber.lua
	Script Purpose	:	None, just me screwing around
	Script Author	:	Jabantiz
	Script Date		:	5/31/2018
	Script Notes	:	
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
	KillSpawn(Spawn, NPC)
end