--[[
    Script Name    : SpawnScripts/Freeport/NormDUnnar.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:00
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
movement_loop_start(NPC)
end


function movement_loop_start(NPC)
MoveToLocation(NPC, 146.07, -9.21, 107.67, 2)
MoveToLocation(NPC, 152.40, -9.21, 101.21, 2)
MoveToLocation(NPC, 175.39, -7.52, 123.94, 2)
MoveToLocation(NPC, 163.34, -7.52, 136.86, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 135.48)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, 175.39, -7.52, 123.94, 2)
MoveToLocation(NPC, 152.40, -9.21, 101.21, 2)
MoveToLocation(NPC, 146.07, -9.21, 107.67, 2)
MoveToLocation(NPC, 144.61, -8.96, 106.11, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 40.66)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
     local choice = MakeRandomInt(1, 2)
    if choice == 1 then
    AddTimer(NPC, 7000, "movement_loop_continue", 1)
    else
    AddTimer(NPC, 7000, "movement_loop_start", 1)
end
   end

function respawn(NPC)
spawn(NPC)
end