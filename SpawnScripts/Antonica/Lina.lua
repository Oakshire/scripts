--[[
    Script Name    : SpawnScripts/Antonica/Lina.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 08:08:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "If you see something you need just let me know.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end