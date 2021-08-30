--[[
    Script Name    : SpawnScripts/Antonica/CantileDigglefiz.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.29 07:08:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Chopping, chopping, chopping! This is an excellent way to take ones mind off of things!", "smile", 1689589577, 4560189, Spawn)
end
	

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end