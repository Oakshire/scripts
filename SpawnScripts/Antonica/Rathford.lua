--[[
    Script Name    : SpawnScripts/Antonica/Rathford.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 08:06:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Well met.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end