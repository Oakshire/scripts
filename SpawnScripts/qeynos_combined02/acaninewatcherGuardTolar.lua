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

function death(NPC)
    AddTimer(NPC, 300000, "ResetCanineWatcher", 1, Spawn)
end

function ResetCanineWatcher(NPC)
    local zone = GetZone(NPC)
    local caninewatcher = SpawnMob(zone, 6600687, false, 515.441, -20.8647, -2293.35, 240)
end