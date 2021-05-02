--[[
    Script Name    : SpawnScripts/Freeport/EmissaryMidia.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.01 07:05:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "", "Only those truly loyal to the Overlord need to speak to me!", "", 0, 0, Spawn)
end