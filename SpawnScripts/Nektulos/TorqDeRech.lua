--[[
    Script Name    : SpawnScripts/Nektulos/TorqDeRech.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.20 08:06:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "It appears Bruhn is not finished with you yet.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end