--[[
    Script Name    : SpawnScripts/IsleRefuge1/Anikra.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.03 07:09:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
                	local choice = math.random(1,4)

	                    if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/anikra/boat_06p_tutorial02_fvo_002.mp3", "I really miss my husband. Why did those smugglers have to throw him overboard?", "sigh", 1493499523, 2767493059)
	                    elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/anikra/boat_06p_tutorial02_fvo_001.mp3", "Thanks for saving me", "thanks", 3802219844, 3242323771)
                	    elseif choice == 3 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_5b0f480.mp3", "I'm tired of waiting!  I want to make something of myself!", "pout", 3723196832, 16921270, Spawn)
	                    elseif choice == 4 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_94429fcb.mp3", "As soon as I get my own boat, I'm outta here!", "nod", 314587977, 2229036874, Spawn)
                	    end
end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, -27.09, -4.86, 183.72, 2, 22)
	MovementLoopAddLocation(NPC, -26.78, -4.92, 179.1, 2, 0)
	MovementLoopAddLocation(NPC, -28.38, -5.08, 173.94, 2, 0)
	MovementLoopAddLocation(NPC, -36.24, -5.07, 168.16, 2, 0)
	MovementLoopAddLocation(NPC, -46.85, -5.03, 159.76, 2, 0)
	MovementLoopAddLocation(NPC, -49.04, -5.02, 152.98, 2, 0)
	MovementLoopAddLocation(NPC, -53.57, -5.01, 142.69, 2, 0)
	MovementLoopAddLocation(NPC, -58.03, -4.99, 133.61, 2, 0)
	MovementLoopAddLocation(NPC, -55.73, -4.95, 120.93, 2, 0)
	MovementLoopAddLocation(NPC, -55.23, -5.55, 114.55, 2, 0)
	MovementLoopAddLocation(NPC, -55.7, -5.85, 111.25, 2, 0)
	MovementLoopAddLocation(NPC, -57.29, -5.66, 109.08, 2, 0)
	MovementLoopAddLocation(NPC, -58.71, -5.58, 107.46, 2, 0)
	MovementLoopAddLocation(NPC, -65.72, -6.7, 101.71, 2, 0)
	MovementLoopAddLocation(NPC, -72.71, -8.5, 95.97, 2, 0)
	MovementLoopAddLocation(NPC, -78.97, -7.74, 89.55, 2, 0)
	MovementLoopAddLocation(NPC, -82.68, -7.24, 85.74, 2, 0)
	MovementLoopAddLocation(NPC, -88.71, -7.41, 85.88, 2, 22)
	MovementLoopAddLocation(NPC, -89.6, -7.4, 85.94, 2, 0)
	MovementLoopAddLocation(NPC, -88.55, -7.41, 84.29, 2, 0)
	MovementLoopAddLocation(NPC, -85.52, -7.42, 80.1, 2, 0)
	MovementLoopAddLocation(NPC, -81.68, -7.18, 78.96, 2, 0)
	MovementLoopAddLocation(NPC, -75.03, -8.05, 78.1, 2, 0)
	MovementLoopAddLocation(NPC, -71.48, -7.9, 90.36, 2, 0)
	MovementLoopAddLocation(NPC, -70.06, -8.61, 94.98, 2, 0)
	MovementLoopAddLocation(NPC, -59.9, -5.58, 103.31, 2, 0)
	MovementLoopAddLocation(NPC, -52.01, -5.43, 109.89, 2, 0)
	MovementLoopAddLocation(NPC, -51.46, -4.99, 112.41, 2, 0)
	MovementLoopAddLocation(NPC, -54.06, -5, 120.14, 2, 0)
	MovementLoopAddLocation(NPC, -56.46, -4.99, 132.49, 2, 0)
	MovementLoopAddLocation(NPC, -54.13, -5, 139.2, 2, 0)
	MovementLoopAddLocation(NPC, -49.64, -5.02, 146.41, 2, 0)
	MovementLoopAddLocation(NPC, -47.72, -5.03, 156.21, 2, 0)
	MovementLoopAddLocation(NPC, -40.15, -5.06, 163.56, 2, 0)
	MovementLoopAddLocation(NPC, -31.62, -5.1, 170.09, 2, 0)
	MovementLoopAddLocation(NPC, -22.11, -5.13, 177.12, 2, 0)
	MovementLoopAddLocation(NPC, -14.16, -5.16, 184.86, 2, 0)
	MovementLoopAddLocation(NPC, -9.89, -5.22, 188.44, 2, 0)
	MovementLoopAddLocation(NPC, -9.89, -5.22, 188.44, 2, 0)
	MovementLoopAddLocation(NPC, -3.05, -5.2, 183.52, 2, 0)
	MovementLoopAddLocation(NPC, 4.28, -5.23, 177.87, 2, 0)
	MovementLoopAddLocation(NPC, 10.74, -5.06, 180.22, 2, 0)
	MovementLoopAddLocation(NPC, 20.08, -6.86, 183.67, 2, 0)
	MovementLoopAddLocation(NPC, 23.74, -6.86, 187.07, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 20.06, -6.88, 192.26, 2, 0)
	MovementLoopAddLocation(NPC, 20.69, -6.86, 199.29, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 24.24, -6.86, 192.73, 2, 0)
	MovementLoopAddLocation(NPC, 28.21, -6.86, 190.32, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 22.37, -6.86, 194.32, 2, 0)
	MovementLoopAddLocation(NPC, 11.12, -6.9, 205.21, 2, 15,"InitialPause")
	MovementLoopAddLocation(NPC, 12.8, -6.9, 200.16, 2, 0)
	MovementLoopAddLocation(NPC, 5.85, -5.45, 189.64, 2, 0)
	MovementLoopAddLocation(NPC, -0.07, -5.22, 183.06, 2, 0)
	MovementLoopAddLocation(NPC, -7.59, -5.19, 186.27, 2, 0)
	MovementLoopAddLocation(NPC, -17.2, -5.1, 185.98, 2, 0)
	MovementLoopAddLocation(NPC, -24.89, -4.87, 187.27, 2, 0)
end

function InitialPause(NPC)
    local GatherSpawn = GetSpawn(NPC, 3250033)	-- Get Greenlock

    math.randomseed(os.time())
    local pause = math.random (1, 4)

            if pause == 1 then
                    AddTimer(NPC, 100, "stop_gathering")  
            else
                    AddTimer(NPC, 1000, "Gather")
            end 
end


function Gather(NPC)
    local GatherSpawn = GetSpawn(NPC, 3250033)	-- Get Anikra
    SpawnSet(NPC, "visual_state", "2809")	-- Start gathering
    AddTimer(NPC, 8000, "Collect")	        -- for 5 seconds, then stop
end

function Collect(NPC)
    local GatherSpawn = GetSpawn(NPC, 3250033)	-- Get Anikra
    SpawnSet(NPC, "visual_state", "2810")	-- Start gathering
    AddTimer(NPC, 2000, "stop_gathering")	-- for 5 seconds, then stop
end

function stop_gathering(NPC)
    local GatherSpawn = GetSpawn(NPC, 3250033)	-- get Anikra
    SpawnSet(NPC, "visual_state", "0") 	        -- Stop her from gathering
end


