--[[
    Script Name    : SpawnScripts/qeynos_combined02/acaninewatcher750523.lua
    Script Author  : Rylec
    Script Date    : 2021.10.04 07:10:01
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