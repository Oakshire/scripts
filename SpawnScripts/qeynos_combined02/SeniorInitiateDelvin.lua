--[[
    Script Name    : SpawnScripts/qeynos_combined02/SeniorInitiateDelvin.lua
    Script Author  : Rylec
    Script Date    : 2021.02.01 05:02:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    MoveStart(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function MoveStart(NPC)
    MoveToLocation(NPC, 767.33, -19.36, -378.62, 2, "OpenDoorInside")
    MoveToLocation(NPC, 758.09, -19.64, -379.09, 2, "OutsideDoor")
end

function OutsideDoor(NPC)
    math.randomseed(os.time())
    choiceOutsideDoor = math.random (1,6)

        if choiceOutsideDoor == 1 then
            AddTimer(NPC, math.random (3000,10000), "MoveRight")
        elseif choiceOutsideDoor == 2 then
            AddTimer(NPC, math.random (3000,10000), "MoveLeft")
        elseif choiceOutsideDoor == 3 or choiceOutsideDoor == 4 then
            MoveRight(NPC)     
        else
            MoveLeft(NPC)
        end
end

function MoveRight(NPC)
    math.randomseed(os.time())
    choiceMoveRight = math.random (1,3)

        if choiceOutsideDoor == 1 then
            AddTimer(NPC, math.random (3000,10000), "MoveRight")
        elseif choiceOutsideDoor == 2 then
            MoveRight(NPC)     
        else
            MoveLeft(NPC)
        end
end




function OpenDoorInside(NPC)
    zone = GetZone(NPC)
    local widget = SpawnByLocationID(zone, 571400)
    UseWidget(widget)    
end



--[[



MoveToLocation(NPC, 757.70, -19.63, -394.23, 2)

function waypoints(NPC)
    MovementLoopAddLocation(NPC, 774.33, -19.26, -378.61, 2, 4)
    MovementLoopAddLocation(NPC, 758.09, -19.64, -379.09, 2, 4)
    MovementLoopAddLocation(NPC, 757.22, -19.65, -388.55, 2, 0)
    MovementLoopAddLocation(NPC, 756.2, -19.64, -394.21, 2, 4)
    MovementLoopAddLocation(NPC, 783.41, -19.63, -394.48, 2, 0)
    MovementLoopAddLocation(NPC, 783.36, -19.63, -363.89, 2, 0)
    MovementLoopAddLocation(NPC, 757.1, -19.63, -364.23, 2, 0)
    MovementLoopAddLocation(NPC, 757.26, -19.65, -378.64, 2, 0)
    MovementLoopAddLocation(NPC, 756.54, -19.65, -393.07, 2, 0)
    MovementLoopAddLocation(NPC, 783.31, -19.63, -393.15, 2, 0)
    MovementLoopAddLocation(NPC, 783.41, -19.63, -363.8, 2, 0)
    MovementLoopAddLocation(NPC, 757.24, -19.63, -363.51, 2, 0)
    MovementLoopAddLocation(NPC, 758.25, -19.64, -378.57, 2, 0)
    MovementLoopAddLocation(NPC, 774.12, -19.26, -378.7, 2, 4)
end
--]]