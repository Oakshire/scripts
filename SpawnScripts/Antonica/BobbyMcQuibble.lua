--[[
    Script Name    : SpawnScripts/Antonica/BobbyMcQuibble.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 07:08:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Yes?", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end