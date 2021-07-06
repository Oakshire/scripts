--[[
    Script Name    : SpawnScripts/Edgewater/BrotherLasca.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 06:07:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Hello there!", "wave", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end