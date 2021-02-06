--[[
    Script Name    : SpawnScripts/qeynos_combined02/SeniorInitiateDelvin.lua
    Script Author  : Rylec
    Script Date    : 2021.02.01 05:02:19
    Script Purpose : 
                   : 
--]]

    local NumberOfTrips = 0

function spawn(NPC)
    AddTimer(NPC, 3000, "move_start")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function move_start(NPC)
    MoveToLocation(NPC, 767.33, -19.36, -378.62, 2, "open_door")
    go_outside(NPC)
end

function go_outside(NPC)
    math.randomseed(os.time())
    local MoveOutside = math.random(1,3)

        if MoveOutside == 1 then
            MoveToLocation(NPC, 756.65, -19.65, -378.86, 2, "pick_special_event")
        elseif MoveOutside == 2 then
            MoveToLocation(NPC, 757.38, -19.64, -377.92, 2, "pick_special_event")
        else
            MoveToLocation(NPC, 758.01, -19.64, -378.51, 2, "pick_special_event")
        end
end

function pick_special_event(NPC)
    NumberOfTrips = 1
    left_no_pause(NPC)

--[[
    math.randomseed(os.time())
    local SpecialEvent = math.random(1,14)

        if SpecialEvent == 1 then
            left_no_pause(NPC)
        elseif SpecialEvent == 2 then
            left_short_pause_first_corner(NPC)
        elseif SpecialEvent == 3 then
            left_short_pause_second_corner(NPC)
        elseif SpecialEvent == 4 then
            left_long_pause_first_corner(NPC)
        elseif SpecialEvent == 5 then
            left_long_pause_second_corner(NPC)
        elseif SpecialEvent == 6 then
            left_restless_first_corner(NPC)
        elseif SpecialEvent == 7 then
            left_restless_second_corner(NPC)
        elseif SpecialEvent == 8 then
            right_no_pause(NPC)
        elseif SpecialEvent == 9 then
            right_short_pause_first_corner(NPC)
        elseif SpecialEvent == 10 then
            right_short_pause_second_corner(NPC)
        elseif SpecialEvent == 11 then
            right_long_pause_first_corner(NPC)
        elseif SpecialEvent == 12 then
            right_long_pause_second_corner(NPC)
        elseif SpecialEvent == 13 then
            right_restless_first_corner(NPC)
        else
            right_restless_second_corner(NPC)
        end
--]]
end

function left_no_pause(NPC)
    MoveToLocation(NPC, 758.68, -19.63, -363.33, 2)
    MoveToLocation(NPC, 783.59, -19.63, -364.16, 2)
    MoveToLocation(NPC, 783.42, -19.63, -394.05, 2)
    MoveToLocation(NPC, 757.29, -19.63, -394.07, 2, "return_to_start_left")
end






function return_to_start_left(NPC)
    math.randomseed(os.time())
    local ReturnStart = math.random(1,3)

        if ReturnStart == 1 then
            MoveToLocation(NPC, 756.65, -19.65, -378.86, 2, "extra_trip_left")
        elseif ReturnStart == 2 then
            MoveToLocation(NPC, 757.38, -19.64, -377.92, 2, "extra_trip_left")
        else
            MoveToLocation(NPC, 758.01, -19.64, -378.51, 2, "extra_trip_left")
        end
end

function extra_trip_left(NPC)
    if NumberOfTrips == 1 then
        math.randomseed(os.time())
        local ThirdTripRandom = math.random(1,100)
        
            if ThirdTripRandom <= 10 then
                return_to_base(NPC)
            else
                NumberOfTrips = 2
                math.randomseed(os.time())
                local PickTrip = math.random(1,3)
                    if PickTrip == 1 then
                        left_01(NPC)
                    elseif PickTrip == 2 then
                        left_02(NPC)
                    else
                        left_03(NPC)
                    end
            end
    else
        return_to_base(NPC)
    end          
end

function left_01(NPC)
    Say(NPC, "I picked 1")
    MoveToLocation(NPC, 758.82, -19.63, -363.06, 2)
    MoveToLocation(NPC, 783.61, -19.63, -362.95, 2)
    MoveToLocation(NPC, 783.36, -19.63, -393.23, 2)
    MoveToLocation(NPC, 757.61, -19.64, -394.02, 2, "extra_trip_left")
end

function left_02(NPC)
    Say(NPC, "I picked 2")
    MoveToLocation(NPC, 758.04, -19.63, -363.98, 2)
    MoveToLocation(NPC, 783.89, -19.63, -363.04, 2)
    MoveToLocation(NPC, 783.35, -19.63, -394.04, 2)
    MoveToLocation(NPC, 756.70, -19.65, -392.53, 2, "extra_trip_left")
end

function left_03(NPC)
    Say(NPC, "I picked 3")
    MoveToLocation(NPC, 756.82, -19.63, -363.92, 2)
    MoveToLocation(NPC, 784.13, -19.63, -363.03, 2)
    MoveToLocation(NPC, 783.29, -19.63, -393.11, 2)
    MoveToLocation(NPC, 758.33, -19.63, -393.04, 2, "extra_trip_left")
end

function return_to_base(NPC)
    math.randomseed(os.time())
    local ReturnBase = math.random(1,3)

        if ReturnBase == 1 then
            MoveToLocation(NPC, 756.65, -19.65, -378.86, 2, "open_door")
        elseif ReturnBase == 2 then
            MoveToLocation(NPC, 757.38, -19.64, -377.92, 2, "open_door")
        else
            MoveToLocation(NPC, 758.01, -19.64, -378.51, 2, "open_door")
        end
    and_back_again(NPC)
end

function and_back_again(NPC)
    Say(NPC, "I am back!")
end







function open_door(NPC)
    zone = GetZone(NPC)
    local widget = SpawnByLocationID(zone, 571400)
    OpenDoor(widget)
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