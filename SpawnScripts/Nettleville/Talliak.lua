--[[
    Script Name    : SpawnScripts/Nettleville/Talliak.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 11:06:17
    Script Purpose : 
                   : 
--]]

    local AttackTimer = false

    
function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC,3, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
if AttackTimer == false then
    AttackTimer = true    
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0)
    AddTimer(NPC,10000,"AttackTimerReset")
    end
end


function InRange(NPC,Spawn)
if AttackTimer == false then
if math.random(1,100) <=20 then
    AttackTimer = true    
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0)
    AddTimer(NPC,25000,"AttackTimerReset")
    end
end
end

function Sleep(NPC)
local choice = math.random(1,2)
if choice == 1 then
    SpawnSet(NPC, "action_state", 540)
    AddTimer(NPC, 22000, "Wake")
    AttackTimer = true
elseif choice ==2 then
end
end

function Wake(NPC)    
    SpawnSet(NPC, "action_state", 0)
AttackTimer = false
end

function AttackTimerReset(NPC,Spawn)
AttackTimer = false
end

function respawn(NPC)
	spawn(NPC)
end

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 678.78, -24.63, 353.04, 1, 2)
	MovementLoopAddLocation(NPC, 678.78, -24.63, 353.04, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 666.66, -24.76, 347.3, 1, 15)
	MovementLoopAddLocation(NPC, 668.49, -24.19, 344.69, 1, 0)
	MovementLoopAddLocation(NPC, 668.39, -23.53, 342.42, 1, 0)
	MovementLoopAddLocation(NPC, 657.13, -22.38, 334.51, 1, 0)
	MovementLoopAddLocation(NPC, 654.92, -22.34, 333.42, 1, 15)
	MovementLoopAddLocation(NPC, 658.29, -22.25, 324.47, 1, 0)
	MovementLoopAddLocation(NPC, 656.19, -22.25, 321.86, 1, 2)
	MovementLoopAddLocation(NPC, 656.19, -22.25, 321.86, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 658.02, -22.26, 325.11, 1, 0)
	MovementLoopAddLocation(NPC, 657.79, -22.26, 325.77, 1, 0)
	MovementLoopAddLocation(NPC, 649.37, -22.32, 333.87, 1, 0)
	MovementLoopAddLocation(NPC, 638.36, -22.33, 349.1, 1, 0)
	MovementLoopAddLocation(NPC, 639.09, -22.38, 353.51, 1, 2)
	MovementLoopAddLocation(NPC, 634.38, -22.43, 362.08, 1, 0)
	MovementLoopAddLocation(NPC, 634.55, -22.31, 370.15, 1, 0)
	MovementLoopAddLocation(NPC, 633.25, -22.35, 370.49, 1, 0)
	MovementLoopAddLocation(NPC, 625.99, -25.01, 369.51, 1, 0)
	MovementLoopAddLocation(NPC, 619.12, -25.85, 370.89, 1, 0)
	MovementLoopAddLocation(NPC, 616.52, -26.01, 368.42, 1, 0)
	MovementLoopAddLocation(NPC, 612.58, -26.08, 365.53, 1, 15)
	MovementLoopAddLocation(NPC, 619.57, -25.52, 366.73, 1, 1)
	MovementLoopAddLocation(NPC, 619.57, -25.52, 366.73, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 621.29, -25.41, 367.24, 1, 0)
	MovementLoopAddLocation(NPC, 621.67, -25.46, 368.99, 1, 0)
	MovementLoopAddLocation(NPC, 619.61, -25.82, 371.46, 1, 0)
	MovementLoopAddLocation(NPC, 612.44, -26.39, 373.62, 1, 0)
	MovementLoopAddLocation(NPC, 610, -25.64, 369.86, 1, 0)
	MovementLoopAddLocation(NPC, 608.25, -24.39, 367.18, 1, 0)
	MovementLoopAddLocation(NPC, 607.55, -23.61, 365.54, 1, 0)
	MovementLoopAddLocation(NPC, 606.89, -22.19, 362.37, 1, 0)
	MovementLoopAddLocation(NPC, 606.77, -20.8, 358.07, 1, 0)
	MovementLoopAddLocation(NPC, 607.97, -20.66, 353.75, 1, 1)
	MovementLoopAddLocation(NPC, 607.97, -20.66, 353.75, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 605.22, -20.55, 350.09, 1, 0)
	MovementLoopAddLocation(NPC, 610.51, -20.51, 334.1, 1, 0)
	MovementLoopAddLocation(NPC, 605, -20.39, 325.97, 1, 15)
	MovementLoopAddLocation(NPC, 609.42, -20.5, 323.84, 1, 0)
	MovementLoopAddLocation(NPC, 616.87, -20.54, 317.4, 1, 0)
	MovementLoopAddLocation(NPC, 632.11, -20.73, 305.72, 1, 0)
	MovementLoopAddLocation(NPC, 634.76, -20.64, 302.47, 1, 0)
	MovementLoopAddLocation(NPC, 647.18, -20.4, 293.54, 1, 1)
	MovementLoopAddLocation(NPC, 647.18, -20.4, 293.54, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 647.49, -20.44, 294.51, 1, 0)
	MovementLoopAddLocation(NPC, 649.16, -20.44, 297.4, 1, 0)
	MovementLoopAddLocation(NPC, 654.59, -20.42, 300.15, 1, 0)
	MovementLoopAddLocation(NPC, 656.18, -20.42, 302.71, 1, 0)
	MovementLoopAddLocation(NPC, 662.27, -20.44, 318.63, 1, 1)
	MovementLoopAddLocation(NPC, 662.27, -20.44, 318.63, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 664.71, -20.44, 319.95, 1, 0)
	MovementLoopAddLocation(NPC, 665.52, -20.44, 323.04, 1, 0)
	MovementLoopAddLocation(NPC, 665.3, -20.44, 325.1, 1, 0)
	MovementLoopAddLocation(NPC, 661.1, -21.27, 327.73, 1, 0)
	MovementLoopAddLocation(NPC, 658.4, -22.28, 328.12, 1, 0)
	MovementLoopAddLocation(NPC, 658.55, -22.35, 332.92, 1, 0)
	MovementLoopAddLocation(NPC, 661.48, -22.52, 337.13, 1, 0)
	MovementLoopAddLocation(NPC, 663.62, -22.65, 339.54, 1, 0)
	MovementLoopAddLocation(NPC, 667.69, -23.71, 343.16, 1, 0)
	MovementLoopAddLocation(NPC, 666.64, -24.67, 345.78, 1, 0)
	MovementLoopAddLocation(NPC, 664.43, -24.83, 350.49, 1, 15)
	MovementLoopAddLocation(NPC, 665.01, -24.83, 351.76, 1, 0)
	MovementLoopAddLocation(NPC, 667.05, -24.82, 352.25, 1, 0)
	MovementLoopAddLocation(NPC, 681.81, -24.81, 359.22, 1, 1)
	MovementLoopAddLocation(NPC, 681.81, -24.81, 359.22, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 679.13, -24.74, 356.64, 1, 0)
	MovementLoopAddLocation(NPC, 681.81, -24.81, 359.22, 1, 1)
	MovementLoopAddLocation(NPC, 681.81, -24.81, 359.22, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 667.05, -24.82, 352.25, 1, 0)
	MovementLoopAddLocation(NPC, 665.01, -24.83, 351.76, 1, 0)
	MovementLoopAddLocation(NPC, 664.43, -24.83, 350.49, 1, 15)
	MovementLoopAddLocation(NPC, 666.64, -24.67, 345.78, 1, 0)
	MovementLoopAddLocation(NPC, 667.69, -23.71, 343.16, 1, 0)
	MovementLoopAddLocation(NPC, 663.62, -22.65, 339.54, 1, 0)
	MovementLoopAddLocation(NPC, 661.48, -22.52, 337.13, 1, 0)
	MovementLoopAddLocation(NPC, 658.55, -22.35, 332.92, 1, 0)
	MovementLoopAddLocation(NPC, 658.4, -22.28, 328.12, 1, 0)
	MovementLoopAddLocation(NPC, 661.1, -21.27, 327.73, 1, 0)
	MovementLoopAddLocation(NPC, 665.3, -20.44, 325.1, 1, 0)
	MovementLoopAddLocation(NPC, 665.52, -20.44, 323.04, 1, 0)
	MovementLoopAddLocation(NPC, 664.71, -20.44, 319.95, 1, 0)
	MovementLoopAddLocation(NPC, 662.27, -20.44, 318.63, 1, 1)
	MovementLoopAddLocation(NPC, 662.27, -20.44, 318.63, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 656.18, -20.42, 302.71, 1, 0)
	MovementLoopAddLocation(NPC, 654.59, -20.42, 300.15, 1, 0)
	MovementLoopAddLocation(NPC, 649.16, -20.44, 297.4, 1, 0)
	MovementLoopAddLocation(NPC, 647.49, -20.44, 294.51, 1, 0)
	MovementLoopAddLocation(NPC, 647.18, -20.4, 293.54, 1, 1)
	MovementLoopAddLocation(NPC, 647.18, -20.4, 293.54, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 634.76, -20.64, 302.47, 1, 0)
	MovementLoopAddLocation(NPC, 632.11, -20.73, 305.72, 1, 0)
	MovementLoopAddLocation(NPC, 616.87, -20.54, 317.4, 1, 0)
	MovementLoopAddLocation(NPC, 609.42, -20.5, 323.84, 1, 0)
	MovementLoopAddLocation(NPC, 605, -20.39, 325.97, 1, 15)
	MovementLoopAddLocation(NPC, 610.51, -20.51, 334.1, 1, 0)
	MovementLoopAddLocation(NPC, 605.22, -20.55, 350.09, 1, 0)
	MovementLoopAddLocation(NPC, 607.97, -20.66, 353.75, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 606.77, -20.8, 358.07, 1, 0)
	MovementLoopAddLocation(NPC, 606.89, -22.19, 362.37, 1, 0)
	MovementLoopAddLocation(NPC, 607.55, -23.61, 365.54, 1, 0)
	MovementLoopAddLocation(NPC, 608.25, -24.39, 367.18, 1, 0)
	MovementLoopAddLocation(NPC, 610, -25.64, 369.86, 1, 0)
	MovementLoopAddLocation(NPC, 612.44, -26.39, 373.62, 1, 0)
	MovementLoopAddLocation(NPC, 619.61, -25.82, 371.46, 1, 0)
	MovementLoopAddLocation(NPC, 621.67, -25.46, 368.99, 1, 0)
	MovementLoopAddLocation(NPC, 621.29, -25.41, 367.24, 1, 0)
	MovementLoopAddLocation(NPC, 619.57, -25.52, 366.73, 1, 1)
	MovementLoopAddLocation(NPC, 619.57, -25.52, 366.73, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 612.58, -26.08, 365.53, 1, 15)
	MovementLoopAddLocation(NPC, 616.52, -26.01, 368.42, 1, 0)
	MovementLoopAddLocation(NPC, 619.12, -25.85, 370.89, 1, 0)
	MovementLoopAddLocation(NPC, 625.99, -25.01, 369.51, 1, 0)
	MovementLoopAddLocation(NPC, 633.25, -22.35, 370.49, 1, 0)
	MovementLoopAddLocation(NPC, 634.55, -22.31, 370.15, 1, 0)
	MovementLoopAddLocation(NPC, 634.38, -22.43, 362.08, 1, 0)
	MovementLoopAddLocation(NPC, 639.09, -22.38, 353.51, 1, 0)
	MovementLoopAddLocation(NPC, 638.36, -22.33, 349.1, 1, 0)
	MovementLoopAddLocation(NPC, 649.37, -22.32, 333.87, 1, 0)
	MovementLoopAddLocation(NPC, 657.79, -22.26, 325.77, 1, 0)
	MovementLoopAddLocation(NPC, 658.02, -22.26, 325.11, 1, 0)
	MovementLoopAddLocation(NPC, 656.19, -22.25, 321.86, 1, 1)
	MovementLoopAddLocation(NPC, 656.19, -22.25, 321.86, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 658.29, -22.25, 324.47, 1, 0)
	MovementLoopAddLocation(NPC, 654.92, -22.34, 333.42, 1, 15)
	MovementLoopAddLocation(NPC, 657.13, -22.38, 334.51, 1, 0)
	MovementLoopAddLocation(NPC, 668.39, -23.53, 342.42, 1, 0)
	MovementLoopAddLocation(NPC, 668.49, -24.19, 344.69, 1, 0)
	MovementLoopAddLocation(NPC, 666.66, -24.76, 347.3, 1, 15)
	MovementLoopAddLocation(NPC, 678.78, -24.63, 353.04, 1, 1)
	MovementLoopAddLocation(NPC, 678.78, -24.63, 353.04, 1, 25,"Sleep")
end


