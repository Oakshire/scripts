--[[
    Script Name    : SpawnScripts/Freeport/PaniliaLUn.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:41
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, 65.64, -20.26, 4.92, 2, 5)
MovementLoopAddLocation(NPC, 189.23, -3.92, -78.29, 2, 5) 
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end
