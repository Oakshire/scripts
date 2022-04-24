--[[
	Script Name		:	malefic_arachnid7.lua
	Script Purpose	:	Waypoint Path for malefic_arachnid7.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:14:29 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
          local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -121.38, -0.08, -175.1, 2, 0)
	MovementLoopAddLocation(NPC, -120.75, -0.05, -168.57, 2, 0)
	MovementLoopAddLocation(NPC, -121.65, -0.04, -161.68, 2, 0)
	MovementLoopAddLocation(NPC, -118.32, -0.12, -161.47, 2, 0)
	MovementLoopAddLocation(NPC, -119.16, -0.11, -167.72, 2, 0)
	MovementLoopAddLocation(NPC, -108.21, -0.04, -168.02, 2, 0)
	MovementLoopAddLocation(NPC, -104.66, -0.08, -172.21, 2, 0)
	MovementLoopAddLocation(NPC, -105.1, -0.11, -176.8, 2, 0)
	MovementLoopAddLocation(NPC, -109.96, -0.03, -182.21, 2, 0)
	MovementLoopAddLocation(NPC, -109.81, 0.13, -186.23, 2, 0)
	MovementLoopAddLocation(NPC, -109.61, 0, -191.93, 2, 0)
	MovementLoopAddLocation(NPC, -116.61, 0, -191.65, 2, 0)
	MovementLoopAddLocation(NPC, -105.08, 0, -193.99, 2, 0)
	MovementLoopAddLocation(NPC, -109.11, 0, -191.88, 2, 0)
	MovementLoopAddLocation(NPC, -109.45, -0.05, -185.69, 2, 0)
	MovementLoopAddLocation(NPC, -108.12, -0.1, -181.02, 2, 0)
	MovementLoopAddLocation(NPC, -104.01, -0.09, -172.29, 2, 0)
	MovementLoopAddLocation(NPC, -112.52, 0.36, -166.46, 2, 0)
	MovementLoopAddLocation(NPC, -120.2, -0.09, -166.9, 2, 0)
	MovementLoopAddLocation(NPC, -119.98, 0.43, -151.79, 2, 0)
	MovementLoopAddLocation(NPC, -116.96, -0.08, -157.47, 2, 0)
	MovementLoopAddLocation(NPC, -122.34, -0.04, -158.13, 2, 0)
	MovementLoopAddLocation(NPC, -120.91, 0.09, -153.69, 2, 0)
	MovementLoopAddLocation(NPC, -121.26, -0.05, -161.63, 2, 0)
	MovementLoopAddLocation(NPC, -122.45, -0.08, -166.77, 2, 0)
	MovementLoopAddLocation(NPC, -117, 0.02, -172.84, 2, 0)
	MovementLoopAddLocation(NPC, -120.4, 0.46, -180.73, 2, 0)
	MovementLoopAddLocation(NPC, -127.32, -0.08, -182.81, 2, 0)
	MovementLoopAddLocation(NPC, -129.42, -0.07, -179.64, 2, 0)
	MovementLoopAddLocation(NPC, -125.26, -0.07, -183.96, 2, 0)
	MovementLoopAddLocation(NPC, -126.01, -0.09, -179.03, 2, 0)
	MovementLoopAddLocation(NPC, -121.64, 0.54, -180.61, 2, 0)
	MovementLoopAddLocation(NPC, -116.76, -0.08, -169.11, 2, 0)
	MovementLoopAddLocation(NPC, -106.6, -0.03, -167.39, 2, 0)
	MovementLoopAddLocation(NPC, -109.74, -0.07, -171.74, 2, 0)
	MovementLoopAddLocation(NPC, -106.98, -0.06, -169.39, 2, 0)
	MovementLoopAddLocation(NPC, -103.48, -0.06, -174.56, 2, 0)
	MovementLoopAddLocation(NPC, -108.21, -0.09, -176.57, 2, 0)
	MovementLoopAddLocation(NPC, -105.49, -0.05, -180.54, 2, 0)
	MovementLoopAddLocation(NPC, -104.14, -0.09, -172.29, 2, 0)
	MovementLoopAddLocation(NPC, -111.89, 0.34, -167.88, 2, 0)
	MovementLoopAddLocation(NPC, -120.51, -0.06, -168.28, 2, 0)
	MovementLoopAddLocation(NPC, -111.89, 0.34, -167.88, 2, 0)
	MovementLoopAddLocation(NPC, -104.14, -0.09, -172.29, 2, 0)
	MovementLoopAddLocation(NPC, -105.49, -0.05, -180.54, 2, 0)
	MovementLoopAddLocation(NPC, -108.21, -0.09, -176.57, 2, 0)
	MovementLoopAddLocation(NPC, -103.48, -0.06, -174.56, 2, 0)
	MovementLoopAddLocation(NPC, -106.98, -0.06, -169.39, 2, 0)
	MovementLoopAddLocation(NPC, -109.74, -0.07, -171.74, 2, 0)
	MovementLoopAddLocation(NPC, -106.6, -0.03, -167.39, 2, 0)
	MovementLoopAddLocation(NPC, -116.76, -0.08, -169.11, 2, 0)
	MovementLoopAddLocation(NPC, -121.64, 0.54, -180.61, 2, 0)
	MovementLoopAddLocation(NPC, -126.01, -0.09, -179.03, 2, 0)
	MovementLoopAddLocation(NPC, -125.26, -0.07, -183.96, 2, 0)
	MovementLoopAddLocation(NPC, -129.42, -0.07, -179.64, 2, 0)
	MovementLoopAddLocation(NPC, -127.32, -0.08, -182.81, 2, 0)
	MovementLoopAddLocation(NPC, -120.4, 0.46, -180.73, 2, 0)
	MovementLoopAddLocation(NPC, -117, 0.02, -172.84, 2, 0)
	MovementLoopAddLocation(NPC, -122.45, -0.08, -166.77, 2, 0)
	MovementLoopAddLocation(NPC, -121.26, -0.05, -161.63, 2, 0)
	MovementLoopAddLocation(NPC, -120.91, 0.09, -153.69, 2, 0)
	MovementLoopAddLocation(NPC, -122.34, -0.04, -158.13, 2, 0)
	MovementLoopAddLocation(NPC, -116.96, -0.08, -157.47, 2, 0)
	MovementLoopAddLocation(NPC, -119.98, 0.43, -151.79, 2, 0)
	MovementLoopAddLocation(NPC, -120.2, -0.09, -166.9, 2, 0)
	MovementLoopAddLocation(NPC, -112.52, 0.36, -166.46, 2, 0)
	MovementLoopAddLocation(NPC, -104.01, -0.09, -172.29, 2, 0)
	MovementLoopAddLocation(NPC, -108.12, -0.1, -181.02, 2, 0)
	MovementLoopAddLocation(NPC, -109.45, -0.05, -185.69, 2, 0)
	MovementLoopAddLocation(NPC, -109.11, 0, -191.88, 2, 0)
	MovementLoopAddLocation(NPC, -105.08, 0, -193.99, 2, 0)
	MovementLoopAddLocation(NPC, -116.61, 0, -191.65, 2, 0)
	MovementLoopAddLocation(NPC, -109.61, 0, -191.93, 2, 0)
	MovementLoopAddLocation(NPC, -109.81, 0.13, -186.23, 2, 0)
	MovementLoopAddLocation(NPC, -109.96, -0.03, -182.21, 2, 0)
	MovementLoopAddLocation(NPC, -105.1, -0.11, -176.8, 2, 0)
	MovementLoopAddLocation(NPC, -104.66, -0.08, -172.21, 2, 0)
	MovementLoopAddLocation(NPC, -108.21, -0.04, -168.02, 2, 0)
	MovementLoopAddLocation(NPC, -119.16, -0.11, -167.72, 2, 0)
	MovementLoopAddLocation(NPC, -118.32, -0.12, -161.47, 2, 0)
	MovementLoopAddLocation(NPC, -121.65, -0.04, -161.68, 2, 0)
	MovementLoopAddLocation(NPC, -120.75, -0.05, -168.57, 2, 0)
	MovementLoopAddLocation(NPC, -121.38, -0.08, -175.1, 2, 0)
end


