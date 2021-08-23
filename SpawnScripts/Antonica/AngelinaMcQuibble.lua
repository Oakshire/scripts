--[[
    Script Name    : SpawnScripts/Antonica/AngelinaMcQuibble.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 08:08:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Hello there.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end