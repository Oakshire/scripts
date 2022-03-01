--[[
    Script Name    : SpawnScripts/antonica/BulvarRakgam.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 06:06:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "",  "There is not much in this land that can surprise a well prepared adventurer.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end