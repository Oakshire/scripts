--[[
    Script Name    : SpawnScripts/Nektulos/JaetaHarn.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.20 08:06:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "You must prove yourself to Bruhn and Torq, then I will decide if I wish to speak with you.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end