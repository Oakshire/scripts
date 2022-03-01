--[[
    Script Name    : SpawnScripts/qeynos_combined02/acaninewatcherGuardTolar.lua
    Script Author  : Rylec
    Script Date    : 2021.10.03 12:10:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end