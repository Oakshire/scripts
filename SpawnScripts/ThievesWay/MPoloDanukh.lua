--[[
    Script Name    : SpawnScripts/ThievesWay/MPoloDanukh.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 09:07:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Don't fret, the smell can be easily washed out of anything you buy from me.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end