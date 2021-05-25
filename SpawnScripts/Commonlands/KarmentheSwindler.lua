--[[
    Script Name    : SpawnScripts/Commonlands/KarmentheSwindler.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 06:05:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Hey you! I got something you might be interested in...", "", 1689589577, 4560189, Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end