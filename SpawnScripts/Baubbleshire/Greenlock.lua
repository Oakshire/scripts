--[[
    Script Name    : SpawnScripts/Baubbleshire/Greenlock.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.23 02:08:30
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
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end


function InitialPause(NPC)
    local GatherSpawn = GetSpawn(NPC, 2380178)	-- Get Greenlock

    math.randomseed(os.time())
    local pause = math.random (1, 4)

            if pause == 1 then
                    AddTimer(NPC, 100, "stop_gathering")  
            else
                    AddTimer(NPC, 1000, "Gather")
            end 
end


function Gather(NPC)
    local GatherSpawn = GetSpawn(NPC, 2380178)	-- Get Greenlock
    SpawnSet(NPC, "visual_state", "2809")	-- Start gathering
    AddTimer(NPC, 8000, "Collect")	        -- for 5 seconds, then stop
end

function Collect(NPC)
    local GatherSpawn = GetSpawn(NPC, 2380178)	-- Get Greenlock
    SpawnSet(NPC, "visual_state", "2810")	-- Start gathering
    AddTimer(NPC, 2000, "stop_gathering")	-- for 5 seconds, then stop
end

function stop_gathering(NPC)
    local GatherSpawn = GetSpawn(NPC, 2380178)	-- get Greenlock
    SpawnSet(NPC, "visual_state", "0") 	        -- Stop her from gathering
end



function waypoints(NPC)
	MovementLoopAddLocation(NPC, 863.3, -18.07, -489.69, 2, 1)
	MovementLoopAddLocation(NPC, 863.3, -18.07, -489.69, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 863.3, -18.07, -489.69, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 861.48, -18.18, -488.55, 2, 0)
	MovementLoopAddLocation(NPC, 858.6, -18.31, -487.27, 2, 0)
	MovementLoopAddLocation(NPC, 856.72, -18.31, -489.12, 2, 1)
	MovementLoopAddLocation(NPC, 856.72, -18.31, -489.12, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 855.96, -18.35, -489.87, 2, 0)
	MovementLoopAddLocation(NPC, 855.54, -18.36, -489.34, 2, 0)
	MovementLoopAddLocation(NPC, 858.39, -18.3, -487.55, 2, 0)
	MovementLoopAddLocation(NPC, 860.47, -18.25, -487.33, 2, 0)
	MovementLoopAddLocation(NPC, 865.95, -17.97, -490.66, 2, 0)
	MovementLoopAddLocation(NPC, 869.76, -17.84, -493.08, 2, 0)
	MovementLoopAddLocation(NPC, 873.95, -17.21, -501.88, 2, 0)
	MovementLoopAddLocation(NPC, 876.84, -17.47, -508.33, 2, 0)
	MovementLoopAddLocation(NPC, 872.82, -16.74, -516.3, 2, 0)
	MovementLoopAddLocation(NPC, 875.35, -15.75, -525.65, 2, 1)
	MovementLoopAddLocation(NPC, 875.35, -15.75, -525.65, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 875.35, -15.75, -525.65, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 875.98, -15.7, -525.97, 2, 0)
	MovementLoopAddLocation(NPC, 888.59, -15.75, -522.64, 2, 0)
	MovementLoopAddLocation(NPC, 898.17, -16.97, -517.9, 2, 1)
	MovementLoopAddLocation(NPC, 898.17, -16.97, -517.9, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 898.17, -16.97, -517.9, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 901.17, -17.11, -514.09, 2, 0)
	MovementLoopAddLocation(NPC, 901.13, -17.33, -511.68, 2, 0)
	MovementLoopAddLocation(NPC, 898.64, -17.8, -501.92, 2, 1)
	MovementLoopAddLocation(NPC, 898.64, -17.8, -501.92, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 897.25, -17.5, -503.68, 2, 0)
	MovementLoopAddLocation(NPC, 890.77, -16.82, -507.95, 2, 0)
	MovementLoopAddLocation(NPC, 887.64, -16.55, -509.98, 2, 0)
	MovementLoopAddLocation(NPC, 885.21, -16.57, -511.26, 2, 0)
	MovementLoopAddLocation(NPC, 879.02, -17.27, -507.94, 2, 0)
	MovementLoopAddLocation(NPC, 875.57, -17.19, -503.07, 2, 0)
	MovementLoopAddLocation(NPC, 874.43, -17.84, -499.01, 2, 0)
    MovementLoopAddLocation(NPC, 874.95, -17.87, -495.51, 2, 1)
	MovementLoopAddLocation(NPC, 874.95, -17.87, -495.51, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 874.95, -17.87, -495.51, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 873.22, -17.86, -493.1, 2, 0)
	MovementLoopAddLocation(NPC, 865.57, -17.98, -487.95, 2, 0)
	MovementLoopAddLocation(NPC, 863.79, -18.3, -484.5, 2, 0)
	MovementLoopAddLocation(NPC, 865.49, -18.92, -478.71, 2, 0)
	MovementLoopAddLocation(NPC, 864.26, -18.25, -473.42, 2, 0)
	MovementLoopAddLocation(NPC, 861.88, -19.12, -469.21, 2, 0)
	MovementLoopAddLocation(NPC, 857.81, -18.95, -469.46, 2, 1)
	MovementLoopAddLocation(NPC, 857.81, -18.95, -469.46, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 857.81, -18.95, -469.46, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 856.81, -19.09, -470.84, 2, 0)
	MovementLoopAddLocation(NPC, 860.35, -18.99, -467.29, 2, 0)
	MovementLoopAddLocation(NPC, 862.39, -18.21, -472.86, 2, 0)
	MovementLoopAddLocation(NPC, 864.93, -19.12, -477.59, 2, 0)
	MovementLoopAddLocation(NPC, 862.96, -18.91, -479.51, 2, 0)
	MovementLoopAddLocation(NPC, 859.01, -18.73, -480.24, 2, 1)
	MovementLoopAddLocation(NPC, 859.01, -18.73, -480.24, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 858.02, -18.76, -480.42, 2, 0)
	MovementLoopAddLocation(NPC, 857.69, -18.68, -482.16, 2, 0)
	MovementLoopAddLocation(NPC, 860.08, -18.37, -485.71, 2, 0)
end


