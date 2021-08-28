--[[
    Script Name    : SpawnScripts/Antonica/Lanice.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 07:08:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "",  "What can I get for you today?", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end