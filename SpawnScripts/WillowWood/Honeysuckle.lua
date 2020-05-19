--[[
	Script Name	: SpawnScripts/WillowWood/Honeysuckle.lua
	Script Purpose	: Honeysuckle <Bartender>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "What can I get for ya?", "nod", 1689589577, 4560189, Spawn)
end