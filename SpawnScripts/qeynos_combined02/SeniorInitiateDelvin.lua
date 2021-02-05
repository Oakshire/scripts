--[[
    Script Name    : SpawnScripts/qeynos_combined02/SeniorInitiateDelvin.lua
    Script Author  : Rylec
    Script Date    : 2021.02.01 05:02:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 3000, "MoveStart")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function MoveStart(NPC)
    MoveToLocation(NPC, 767.33, -19.36, -378.62, 2, "OpenDoorInside")
    MoveToLocation(NPC, 758.01, -19.64, -378.51, 2, "GoOutside")
end

function GoOutside(NPC)
    MoveLeft1(NPC)
--[[
    math.randomseed(os.time())
    local choiceOutsideDoor = math.random(1,6)
    local choiceDirection = math.random(1,3)

        if choiceOutsideDoor == 1 then
            AddTimer(NPC, math.random(3000,7000), "MoveRight"..choiceDirection.."")
        elseif choiceOutsideDoor == 2 then
            AddTimer(NPC, math.random(3000,7000), "MoveLeft"..choiceDirection.."")
        elseif choiceOutsideDoor == 3 or choiceOutsideDoor == 4 then
            MoveRight"..choiceDirection.."(NPC)     
        else
            MoveLeft"..choiceDirection.."(NPC)
        end
--]]
end

function MoveLeft1(NPC)
    MoveToLocation(NPC, 758.01, -19.63, -363.77, 2, "MoveLeft1Continue")
end

function MoveLeft1Continue(NPC)
--    MoveToLocation(NPC, 758.01, -19.63, -363.77, 2)
    math.randomseed(os.time())
    AddTimer(NPC, math.random(0,14000), "MoveLeft1Continue2")
end

function MoveLeft1Continue2(NPC)
    MoveToLocation(NPC, 783.49, -19.63, -363.37, 2)
    MoveToLocation(NPC, 783.39, -19.63, -393.25, 2)
    MoveToLocation(NPC, 757.87, -19.63, -393.97, 2)
    MoveToLocation(NPC, 757.40, -19.65, -378.78, 2)
end


function OpenDoorInside(NPC)
    zone = GetZone(NPC)
    local widget = SpawnByLocationID(zone, 571400)
    OpenDoor(widget)
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