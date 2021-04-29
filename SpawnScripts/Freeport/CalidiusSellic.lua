--[[
    Script Name    : SpawnScripts/Freeport/CalidiusSellic.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 09:07:15
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, 145.17, -26.15, 128.27, 2)
MoveToLocation(NPC, 143.22, -26.15, 130.12, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 132.62)
AddTimer(NPC, 6000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, 145.17, -26.15, 128.27, 2)
MoveToLocation(NPC, 172.32, -26.15, 155.78, 2)
MoveToLocation(NPC, 69.74, -26.15, 158.45, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 134.47)
AddTimer(NPC, 6000, "movement_loop_start, 1")
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