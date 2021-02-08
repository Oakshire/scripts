--[[
    Script Name    : SpawnScripts/qeynos_combined02/SeniorInitiateDelvin.lua
    Script Author  : Rylec
    Script Date    : 2021.02.01 05:02:19
    Script Purpose : 
                   : 

This script is quite complex and allows for all the behaviours of Delvin on Live: He can move left or right
around the building and at each of the four corners he will either make a short or long pause, or he will step
around a bit (intiaited by one of several emotes). He can also make between 1 and 3 rounds before going back 
inside, where upon returning he may bow.

Not implemented yet: proximity for his conversation (it is using hail for now) and he also sometimes runs back 
which is not included at it looks a bit odd.
--]]

--  Flags used for checking how many rounds he is making and for which of the 14 different special choices he can make along his way

    local NumberOfTrips = 0
    local SpecialEventTrigger = 0

function spawn(NPC)
    AddTimer(NPC, 3000, "move_start")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    local Conversation = math.random(1,2)  

        if Conversation == 1 then
            PlayFlavor(NPC, "", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 0, 0, Spawn)
        else
            PlayFlavor(NPC, "", "Almost time to stop and have an ale, isn't it?", "wink", 0, 0, Spawn)
        end     
end

function respawn(NPC)
    spawn(NPC)
end

function move_start(NPC)
--  walks to a location in mid room and calls the function that triggers the door widget
    MoveToLocation(NPC, 767.33, -19.36, -378.62, 2, "open_door")
    go_outside(NPC)
end

function go_outside(NPC)
--  Live has several location outside the door before Delvin starts to walk around the building
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
--  First trip is initiated. Delvin alays does something special on first round (sometimes nothing)
    NumberOfTrips = 1

    math.randomseed(os.time())
    local SpecialEvent = math.random(1,14)

        if SpecialEvent == 1 then
            left_no_pause(NPC)
        elseif SpecialEvent == 2 then
--          left_short_pause_first_corner
            SpecialEventTrigger = 2
            MoveToLocation(NPC, 757.84, -19.63, -363.12, 2, "special_event")
        elseif SpecialEvent == 3 then
--          left_short_pause_second_corner
            SpecialEventTrigger = 3  
            MoveToLocation(NPC, 758.68, -19.63, -364.16, 2)
            MoveToLocation(NPC, 783.59, -19.63, -364.16, 2, "special_event")
        elseif SpecialEvent == 4 then
--          left_long_pause_first_corner
            SpecialEventTrigger = 4
            MoveToLocation(NPC, 757.84, -19.63, -363.12, 2, "special_event")
        elseif SpecialEvent == 5 then
--          left_long_pause_second_corner
            SpecialEventTrigger = 5
            MoveToLocation(NPC, 758.68, -19.63, -364.16, 2)
            MoveToLocation(NPC, 783.59, -19.63, -364.16, 2, "special_event")
        elseif SpecialEvent == 6 then
            left_restless_first_corner(NPC)
        elseif SpecialEvent == 7 then
          MoveToLocation(NPC, 758.05, -19.63, -363.92, 2, "left_restless_second_corner")
        elseif SpecialEvent == 8 then
            right_no_pause(NPC)
        elseif SpecialEvent == 9 then
--          right_short_pause_first_corner
            SpecialEventTrigger = 9
            MoveToLocation(NPC, 758.29, -19.63, -394.06, 2, "special_event")
        elseif SpecialEvent == 10 then
--          right_short_pause_second_corner
            SpecialEventTrigger = 10
            MoveToLocation(NPC, 758.29, -19.63, -393.24, 2)
            MoveToLocation(NPC, 783.44, -19.63, -394.01, 2, "special_event")
        elseif SpecialEvent == 11 then
--          right_long_pause_first_corner
            SpecialEventTrigger = 11
            MoveToLocation(NPC, 758.29, -19.63, -394.06, 2, "special_event")
        elseif SpecialEvent == 12 then
--          right_long_pause_second_corner
            SpecialEventTrigger = 12
            MoveToLocation(NPC, 758.29, -19.63, -393.24, 2)
            MoveToLocation(NPC, 783.44, -19.63, -394.01, 2, "special_event")
        elseif SpecialEvent == 13 then
            right_restless_first_corner(NPC)
        else
            MoveToLocation(NPC, 758.29, -19.63, -394.06, 2, "right_restless_second_corner")
        end
end

function left_no_pause(NPC)
--  Delvin does nothing on his first round
    MoveToLocation(NPC, 758.68, -19.63, -363.33, 2)
    MoveToLocation(NPC, 783.59, -19.63, -364.16, 2)
    MoveToLocation(NPC, 783.42, -19.63, -394.05, 2)
    MoveToLocation(NPC, 757.29, -19.63, -394.07, 2, "return_to_start_left")
end

function left_restless_first_corner(NPC)
--  Delvis makes some shuffling around on first corner going left
    SpecialEventTrigger = 6
    MoveToLocation(NPC, 757.84, -19.63, -363.12, 2, "left_restless_first_corner_first_pause")
end

function left_restless_first_corner_first_pause(NPC)
--  This timer is added else the emote will not execute (probably triggered before he reaches location)
    AddTimer(NPC, math.random(1000,1500), "left_restless_first_corner_animation") 
end

function left_restless_first_corner_animation(NPC)
--  Emote pick
    math.randomseed(os.time())
    local PauseAnimation = math.random(1,4)  

        if PauseAnimation == 1 then
            PlayAnimation(NPC, 12030)
        elseif PauseAnimation == 2 then
            PlayAnimation(NPC, 12246)
        elseif PauseAnimation == 3 then
            PlayAnimation(NPC, 12329)
        else
            PlayAnimation(NPC, 323)
        end

    AddTimer(NPC, math.random(15000,60000), "left_restless_first_corner_second_pause") 
end

function left_restless_first_corner_second_pause(NPC)
--  These following functions are added since there is no delay in the current MoveToLocation function
    MoveToLocation(NPC, 756.50, -19.63, -364.08, 2)
    AddTimer(NPC, math.random(15000,60000), "left_restless_first_corner_third_pause") 
end

function left_restless_first_corner_third_pause(NPC)
    MoveToLocation(NPC, 758.87, -19.63, -364.19, 2)
    AddTimer(NPC, math.random(15000,60000), "left_restless_first_corner_fourth_pause") 
end

function left_restless_first_corner_fourth_pause(NPC)
--  Continues his first round after a brief final pause
    MoveToLocation(NPC, 756.50, -19.63, -364.08, 2)
    AddTimer(NPC, math.random(7000,10000), "left_first_corner_continue") 
end    

function left_restless_second_corner(NPC)
--  Delvis makes some shuffling around on second corner going left
    SpecialEventTrigger = 7
    MoveToLocation(NPC, 784.36, -19.63, -362.99, 2, "left_restless_second_corner_second_pause")
end

function left_restless_second_corner_second_pause(NPC)
--  This timer is added else the emote will not execute (probably triggered before he reaches location)
    AddTimer(NPC, math.random(1000,1500), "left_restless_second_corner_animation") 
end

function left_restless_second_corner_animation(NPC)
--  Emote pick
    math.randomseed(os.time())
    local PauseAnimation = math.random(1,4)  

        if PauseAnimation == 1 then
            PlayAnimation(NPC, 12030)
        elseif PauseAnimation == 2 then
            PlayAnimation(NPC, 12246)
        elseif PauseAnimation == 3 then
            PlayAnimation(NPC, 12329)
        else
            PlayAnimation(NPC, 323)
        end

    AddTimer(NPC, math.random(15000,60000), "left_restless_second_corner_second_pause") 
end

function left_restless_second_corner_second_pause(NPC)
--  These following functions are added since there is no delay in the current MoveToLocation function
    MoveToLocation(NPC, 783.53, -19.63, -362.90, 2)
    AddTimer(NPC, math.random(15000,60000), "left_restless_second_corner_third_pause") 
end

function left_restless_second_corner_third_pause(NPC)
    MoveToLocation(NPC, 784.43, -19.63, -363.03, 2)
    AddTimer(NPC, math.random(15000,60000), "left_restless_second_corner_fourth_pause") 
end

function left_restless_second_corner_fourth_pause(NPC)
--  Continues his first round after a brief final pause
    MoveToLocation(NPC, 783.35, -19.63, -394.01, 2)
    AddTimer(NPC, math.random(7000,10000), "left_second_corner_continue") 
end

function right_no_pause(NPC)
    MoveToLocation(NPC, 756.64, -19.65, -393.05, 2)
    MoveToLocation(NPC, 783.47, -19.63, -393.09, 2)
    MoveToLocation(NPC, 783.93, -19.63, -363.73, 2)
    MoveToLocation(NPC, 757.48, -19.63, -364.03, 2, "return_to_start_right")
end

function right_restless_first_corner(NPC)
--  Delvis makes some shuffling around on first corner going right
    SpecialEventTrigger = 13
    MoveToLocation(NPC, 758.12, -19.63, -394.04, 2, "right_restless_first_corner_first_pause")
end

function right_restless_first_corner_first_pause(NPC)
--  This timer is added else the emote will not execute (probably triggered before he reaches location)
    AddTimer(NPC, math.random(1000,1500), "right_restless_first_corner_animation") 
end

function right_restless_first_corner_animation(NPC)
    math.randomseed(os.time())
    local PauseAnimation = math.random(1,4)  

        if PauseAnimation == 1 then
            PlayAnimation(NPC, 12030)
        elseif PauseAnimation == 2 then
            PlayAnimation(NPC, 12246)
        elseif PauseAnimation == 3 then
            PlayAnimation(NPC, 12329)
        else
            PlayAnimation(NPC, 323)
        end

    AddTimer(NPC, math.random(15000,60000), "right_restless_first_corner_second_pause") 
end

function right_restless_first_corner_second_pause(NPC)
--  These following functions are added since there is no delay in the current MoveToLocation function
    MoveToLocation(NPC, 758.38, -19.63, -393.02, 2)
    AddTimer(NPC, math.random(15000,60000), "right_restless_first_corner_third_pause") 
end

function right_restless_first_corner_third_pause(NPC)
    MoveToLocation(NPC, 756.02, -19.64, -394.27, 2)
    AddTimer(NPC, math.random(15000,60000), "right_restless_first_corner_fourth_pause") 
end

function right_restless_first_corner_fourth_pause(NPC)
--  Continues his first round after a brief final pause
    MoveToLocation(NPC, 758.74, -19.63, -393.89, 2)
    AddTimer(NPC, math.random(7000,10000), "right_first_corner_continue") 
end    

function right_restless_second_corner(NPC)
--  Delvis makes some shuffling around on second corner going right
    SpecialEventTrigger = 14
    MoveToLocation(NPC, 783.46, -19.63, -393.08, 2, "right_restless_second_corner_first_pause")
end

function right_restless_second_corner_first_pause(NPC)
--  This timer is added else the emote will not execute (probably triggered before he reaches location)
    AddTimer(NPC, math.random(1000,1500), "right_restless_second_corner_animation") 
end

function right_restless_second_corner_animation(NPC)
    math.randomseed(os.time())
    local PauseAnimation = math.random(1,4)  

        if PauseAnimation == 1 then
            PlayAnimation(NPC, 12030)
        elseif PauseAnimation == 2 then
            PlayAnimation(NPC, 12246)
        elseif PauseAnimation == 3 then
            PlayAnimation(NPC, 12329)
        else
            PlayAnimation(NPC, 323)
        end

    AddTimer(NPC, math.random(15000,60000), "right_restless_second_corner_second_pause") 
end

function right_restless_second_corner_second_pause(NPC)
--  These following functions are added since there is no delay in the current MoveToLocation function
    MoveToLocation(NPC, 783.37, -19.63, -394.12, 2)
    AddTimer(NPC, math.random(15000,60000), "right_restless_second_corner_third_pause") 
end

function right_restless_second_corner_third_pause(NPC)
    MoveToLocation(NPC, 783.37, -19.63, -393.01, 2)
    AddTimer(NPC, math.random(15000,60000), "right_restless_second_corner_fourth_pause") 
end

function right_restless_second_corner_fourth_pause(NPC)
--  Continues his first round after a brief final pause
    MoveToLocation(NPC, 783.39, -19.63, -394.08, 2)
    AddTimer(NPC, math.random(7000,10000), "right_second_corner_continue") 
end

function special_event(NPC)
--  Picks lenght of pause if that is the special event depending on which corner (using SpecialEventTrigger flag)
    if SpecialEventTrigger == 2 then
        AddTimer(NPC, math.random(2500,5000), "left_first_corner_continue")        
    elseif SpecialEventTrigger == 3 then
        AddTimer(NPC, math.random(2500,5000), "left_second_corner_continue")
    elseif SpecialEventTrigger == 4 then
        AddTimer(NPC, math.random(95000,120000), "left_first_corner_continue")    
    elseif SpecialEventTrigger == 5 then
        AddTimer(NPC, math.random(95000,120000), "left_second_corner_continue")  
    elseif SpecialEventTrigger == 9 then
        AddTimer(NPC, math.random(2500,5000), "right_first_corner_continue")  
    elseif SpecialEventTrigger == 10 then
        AddTimer(NPC, math.random(2500,5000), "right_second_corner_continue")  
    elseif SpecialEventTrigger == 11 then
        AddTimer(NPC, math.random(95000,120000), "right_first_corner_continue") 
    elseif SpecialEventTrigger == 12 then
        AddTimer(NPC, math.random(95000,120000), "right_second_corner_continue") 
    end
end

-- These functions continues the first round after a special event

function left_first_corner_continue(NPC)
    MoveToLocation(NPC, 783.46, -19.63, -363.05, 2)
    MoveToLocation(NPC, 783.31, -19.63, -393.26, 2)
    MoveToLocation(NPC, 758.15, -19.63, -394.00, 2, "return_to_start_left")
end

function left_second_corner_continue(NPC)
    MoveToLocation(NPC, 783.31, -19.63, -393.26, 2)
    MoveToLocation(NPC, 758.15, -19.63, -394.00, 2, "return_to_start_left")
end

function right_first_corner_continue(NPC)
    MoveToLocation(NPC, 783.31, -19.63, -393.26, 2)
    MoveToLocation(NPC, 783.46, -19.63, -363.05, 2)
    MoveToLocation(NPC, 757.48, -19.63, -364.03, 2, "return_to_start_right")
end

function right_second_corner_continue(NPC)
    MoveToLocation(NPC, 783.46, -19.63, -363.05, 2)
    MoveToLocation(NPC, 757.48, -19.63, -364.03, 2, "return_to_start_right")
end

function return_to_start_left(NPC)
--  Returns Delvin to one of three locations outside the door after completing a round going left
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
--  Delving makes either 0, 1 or 2 extra rounds (most often 1 extra round), without any special events going left
    if NumberOfTrips == 1 then
        math.randomseed(os.time())
        local SecondTripRandom = math.random(1,100)
        
            if SecondTripRandom <= 10 then
                open_door(NPC)
                and_back_again(NPC)
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
    elseif NumberOfTrips == 2 then
        math.randomseed(os.time())
        local ThirdTripRandom = math.random(1,100)                
        
            if ThirdTripRandom <= 10 then
                NumberOfTrips = 3
                math.randomseed(os.time())
                local PickLastTrip = math.random(1,3)

                    if PickLastTrip == 1 then
                        left_01(NPC)
                    elseif PickLastTrip == 2 then
                        left_02(NPC)
                    else
                        left_03(NPC)
                    end
            else
                return_to_base(NPC)
--                open_door(NPC)
--                and_back_again(NPC)           
            end
    else
        return_to_base(NPC)
--        open_door(NPC)
--        and_back_again(NPC)  
    end          
end

--  These functions make a tiny variation in the way Delvin walks around the hut going left

function left_01(NPC)
    MoveToLocation(NPC, 758.82, -19.63, -363.06, 2)
    MoveToLocation(NPC, 783.61, -19.63, -362.95, 2)
    MoveToLocation(NPC, 783.36, -19.63, -393.23, 2)
    MoveToLocation(NPC, 757.61, -19.64, -394.02, 2, "extra_trip_left")
end

function left_02(NPC)
    MoveToLocation(NPC, 758.04, -19.63, -363.98, 2)
    MoveToLocation(NPC, 783.89, -19.63, -363.04, 2)
    MoveToLocation(NPC, 783.35, -19.63, -394.04, 2)
    MoveToLocation(NPC, 756.70, -19.65, -392.53, 2, "extra_trip_left")
end

function left_03(NPC)
    MoveToLocation(NPC, 756.82, -19.63, -363.92, 2)
    MoveToLocation(NPC, 784.13, -19.63, -363.03, 2)
    MoveToLocation(NPC, 783.29, -19.63, -393.11, 2)
    MoveToLocation(NPC, 758.33, -19.63, -393.04, 2, "extra_trip_left")
end



function return_to_start_right(NPC)
--  Returns Delvin to one of three locations outside the door after completing a round going left
    math.randomseed(os.time())
    local ReturnStart = math.random(1,3)

        if ReturnStart == 1 then
            MoveToLocation(NPC, 756.65, -19.65, -378.86, 2, "extra_trip_right")
        elseif ReturnStart == 2 then
            MoveToLocation(NPC, 757.38, -19.64, -377.92, 2, "extra_trip_right")
        else
            MoveToLocation(NPC, 758.01, -19.64, -378.51, 2, "extra_trip_right")
        end
end

function extra_trip_right(NPC)
--  Delving makes either 0, 1 or 2 extra rounds (most often 1 extra round), without any special events going right
    if NumberOfTrips == 1 then
        math.randomseed(os.time())
        local SecondTripRandom = math.random(1,100)
        
            if SecondTripRandom <= 10 then
                  return_to_base(NPC)
--                open_door(NPC)
--                and_back_again(NPC)
            else
                NumberOfTrips = 2
                math.randomseed(os.time())
                local PickTrip = math.random(1,3)

                    if PickTrip == 1 then
                        right_01(NPC)
                    elseif PickTrip == 2 then
                        right_02(NPC)
                    else
                        right_03(NPC)
                    end
            end
    elseif NumberOfTrips == 2 then
        math.randomseed(os.time())
        local ThirdTripRandom = math.random(1,100)                
        
            if ThirdTripRandom <= 10 then
                NumberOfTrips = 3
                math.randomseed(os.time())
                local PickLastTrip = math.random(1,3)

                    if PickLastTrip == 1 then
                        right_01(NPC)
                    elseif PickLastTrip == 2 then
                        right_02(NPC)
                    else
                        right_03(NPC)
                    end
            else
                return_to_base(NPC)
--                open_door(NPC)
--                and_back_again(NPC)           
            end
    else
        return_to_base(NPC)
--        open_door(NPC)
--        and_back_again(NPC)  
    end          
end

--  These functions make a tiny variation in the way Delvin walks around the hut going left

function right_01(NPC)
    MoveToLocation(NPC, 757.61, -19.64, -394.02, 2)
    MoveToLocation(NPC, 783.36, -19.63, -393.23, 2)
    MoveToLocation(NPC, 783.61, -19.63, -362.95, 2)
    MoveToLocation(NPC, 758.82, -19.63, -363.06, 2, "extra_trip_right")
end

function right_02(NPC)
    MoveToLocation(NPC, 756.70, -19.65, -392.53, 2)
    MoveToLocation(NPC, 783.35, -19.63, -394.04, 2)
    MoveToLocation(NPC, 783.89, -19.63, -363.04, 2)
    MoveToLocation(NPC, 758.04, -19.63, -363.98, 2, "extra_trip_right")
end

function right_03(NPC)
    MoveToLocation(NPC, 758.33, -19.63, -393.04, 2)
    MoveToLocation(NPC, 783.29, -19.63, -393.11, 2)
    MoveToLocation(NPC, 784.13, -19.63, -363.03, 2)
    MoveToLocation(NPC, 756.82, -19.63, -363.92, 2, "extra_trip_right")
end

function return_to_base(NPC)
--  Delvin can return to 3 different locations outside the door when he is done with his rounds
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
    MoveToLocation(NPC, 774.207, -19.0057, -378.641, 2, "end_of_trip")
end

function end_of_trip(NPC)
--  This function is needed to give neough delay for the emote to trigger
    AddTimer(NPC, math.random(1000,1500), "extra_delay_for_bow")  
end

function extra_delay_for_bow(NPC)
--  On Live Delvin only bows sometimes when he returns from his rounds
    math.randomseed(os.time())
    local EndTrip = math.random(1,3)

        if EndTrip == 1 then
            PlayAnimation(NPC, 121)
            AddTimer(NPC, math.random(90000,120000), "move_start")
        else
            AddTimer(NPC, math.random(90000,120000), "move_start")  
        end
end

function open_door(NPC)
--  Triggers the door widget to open it for Delvin
    zone = GetZone(NPC)
    local widget = SpawnByLocationID(zone, 571400)
    OpenDoor(widget)
end