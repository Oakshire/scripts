--[[
    Script Name    : SpawnScripts/Baubbleshire/TergonTobokog.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.23 02:08:05
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    waypoints(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "listen", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
    end
end   


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 850.99, -18.62, -457.93, 2, 1)
	MovementLoopAddLocation(NPC, 850.99, -18.62, -457.93, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 851.85, -18.9, -456.38, 2, 0)
	MovementLoopAddLocation(NPC, 849.24, -18.29, -458.79, 2, 0)
	MovementLoopAddLocation(NPC, 846, -17.64, -462.76, 2, 0)
	MovementLoopAddLocation(NPC, 844.11, -17.2, -462.92, 2, 0)
	MovementLoopAddLocation(NPC, 837.8, -13.58, -471.05, 2, 0)
	MovementLoopAddLocation(NPC, 835.6, -13.87, -473.68, 2, 0)
	MovementLoopAddLocation(NPC, 831.31, -13.77, -478.13, 2, 0)
	MovementLoopAddLocation(NPC, 828.75, -14.02, -479.27, 2, 0)
	MovementLoopAddLocation(NPC, 828.75, -14.02, -479.27, 2, 1)
	MovementLoopAddLocation(NPC, 828.75, -14.02, -479.27, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 828.46, -14.15, -480.4, 2, 0)
	MovementLoopAddLocation(NPC, 830.24, -13.89, -479.03, 2, 0)
	MovementLoopAddLocation(NPC, 833.35, -13.83, -476.67, 2, 0)
	MovementLoopAddLocation(NPC, 838.22, -13.98, -472.71, 2, 0)
	MovementLoopAddLocation(NPC, 841.36, -14.42, -467.37, 2, 0)
	MovementLoopAddLocation(NPC, 842.52, -15.7, -466.13, 2, 0)
	MovementLoopAddLocation(NPC, 850.51, -18.52, -458.39, 2, 1)
	MovementLoopAddLocation(NPC, 850.51, -18.52, -458.39, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 851.55, -18.65, -457.15, 2, 0)
	MovementLoopAddLocation(NPC, 852.48, -19.04, -456.25, 2, 0)
	MovementLoopAddLocation(NPC, 852.93, -18.88, -457.02, 2, 0)
	MovementLoopAddLocation(NPC, 852.59, -18.45, -462.1, 2, 0)
	MovementLoopAddLocation(NPC, 850.61, -18.23, -464.54, 2, 0)
	MovementLoopAddLocation(NPC, 847.25, -18.1, -466.85, 2, 0)
	MovementLoopAddLocation(NPC, 844.75, -17.9, -472.04, 2, 0)
	MovementLoopAddLocation(NPC, 843.99, -17.93, -474.07, 2, 0)
    MovementLoopAddLocation(NPC, 840.22, -17.70, -480.41, 2, 0)
	MovementLoopAddLocation(NPC, 835.49, -17.69, -483.7, 2, 0)
	MovementLoopAddLocation(NPC, 833.95, -17.86, -488.95, 2, 0)
	MovementLoopAddLocation(NPC, 834.42, -18.22, -494.35, 2, 0)
	MovementLoopAddLocation(NPC, 834.42, -18.22, -494.35, 2, 1)
	MovementLoopAddLocation(NPC, 834.42, -18.22, -494.35, 2, 16,"Action")
	MovementLoopAddLocation(NPC, 834.78, -18.36, -495.81, 2, 0)
	MovementLoopAddLocation(NPC, 833.75, -17.82, -487.89, 2, 0)
	MovementLoopAddLocation(NPC, 835.94, -17.69, -483.59, 2, 0)
	MovementLoopAddLocation(NPC, 841.37, -17.79, -480.57, 2, 0)
	MovementLoopAddLocation(NPC, 845.6, -17.93, -469.61, 2, 0)
	MovementLoopAddLocation(NPC, 851.35, -18.38, -465.13, 2, 0)
	MovementLoopAddLocation(NPC, 851.98, -18.53, -460.63, 2, 0)
end


