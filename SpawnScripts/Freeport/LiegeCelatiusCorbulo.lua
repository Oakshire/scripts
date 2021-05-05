--[[
    Script Name    : SpawnScripts/Freeport/LiegeCelatiusCorbulo.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:40
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -185.65, -56.65, -90.88, 2, 10)
MovementLoopAddLocation(NPC, -193.09, -56.42, -41.71, 2, 0)
MovementLoopAddLocation(NPC, -187.34, -57.30, 104.47, 2, 10)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end

