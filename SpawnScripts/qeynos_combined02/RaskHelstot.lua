--[[
    Script Name    : SpawnScripts/qeynos_combined02/RaskHelstot.lua
    Script Author  : Rylec
    Script Date    : 2021.02.19 10:02:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 20, "InRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function InRange(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Welcome to the Elddar grove, young one.  Enjoy the shelter which the trees provide.", "", 0, 0, Spawn)
end