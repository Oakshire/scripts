--[[
    Script Name    : SpawnScripts/Antonica/LordKylar.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 08:06:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Perhaps we will speak later... perhaps.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end