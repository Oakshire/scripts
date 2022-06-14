--[[
	Script Name		:	captsalty.lua
	Script Purpose	:	Waypoint Path for captsalty.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 03:52:17 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function Sleep(NPC)
local choice = math.random(1,2)
if choice == 1 then
    SpawnSet(NPC, "action_state", 540)
    AddTimer(NPC, 22000, "Wake")
elseif choice ==2 then
end
end
function Wake(NPC)    
    SpawnSet(NPC, "action_state", 0)
end



function waypoints(NPC)
	MovementLoopAddLocation(NPC, 973.64, -25.47, 7.88, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 965.27, -25.47, 8.63, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 958.68, -25.48, 20.28, 1, 0)
	MovementLoopAddLocation(NPC, 957.02, -25.35, 22.85, 1, 0)
	MovementLoopAddLocation(NPC, 953.81, -25.5, 34.48, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 936.25, -25.55, 31.54, 1, 0)
	MovementLoopAddLocation(NPC, 929.53, -25.59, 29.89, 1, 0)
	MovementLoopAddLocation(NPC, 928.21, -25.55, 34.3, 1, 0)
	MovementLoopAddLocation(NPC, 927.81, -25.54, 35.43, 1, 0)
	MovementLoopAddLocation(NPC, 924.19, -25.5, 38.2, 1, 0)
	MovementLoopAddLocation(NPC, 923.03, -25.49, 39.06, 1, 0)
	MovementLoopAddLocation(NPC, 921.1, -25.44, 40.92, 1, 0)
	MovementLoopAddLocation(NPC, 919.8, -25.42, 43.22, 1, 0)
	MovementLoopAddLocation(NPC, 920.03, -25.49, 46.43, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 912.55, -25.4, 59.49, 1, 0)
	MovementLoopAddLocation(NPC, 911.62, -25.41, 61.07, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 911.16, -25.47, 67.42, 1, 0)
	MovementLoopAddLocation(NPC, 924.31, -25.47, 76.29, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 919.74, -25.49, 65.28, 1, 0)
	MovementLoopAddLocation(NPC, 917.37, -25.49, 59.56, 1, 0)
	MovementLoopAddLocation(NPC, 914.21, -25.39, 54.36, 1, 0)
	MovementLoopAddLocation(NPC, 908.45, -25.33, 53.61, 1, 0)
	MovementLoopAddLocation(NPC, 904.09, -25.25, 57.38, 1, 0)
	MovementLoopAddLocation(NPC, 903.01, -25.31, 60.09, 1, 0)
	MovementLoopAddLocation(NPC, 901.83, -25.28, 59.38, 1, 0)
	MovementLoopAddLocation(NPC, 897.87, -25.42, 59.16, 1, 0)
	MovementLoopAddLocation(NPC, 895.09, -25.46, 57.82, 1, 0)
	MovementLoopAddLocation(NPC, 893.69, -25.47, 57.14, 1, 0)
	MovementLoopAddLocation(NPC, 892.86, -24.4, 59.71, 1, 0)
	MovementLoopAddLocation(NPC, 884.26, -24.47, 78.05, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 878.36, -24.47, 90.26, 1, 0)
	MovementLoopAddLocation(NPC, 872.55, -24.47, 102.29, 1, 0)
	MovementLoopAddLocation(NPC, 865.68, -24.47, 116.52, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 864.85, -24.47, 117.11, 1, 0)
	MovementLoopAddLocation(NPC, 860.03, -24.47, 117.73, 1, 0,"Sleep")
	MovementLoopAddLocation(NPC, 857.39, -24.47, 116.86, 1, 0)
	MovementLoopAddLocation(NPC, 850.65, -24.47, 113.12, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 843.78, -24.47, 106.79, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 842.4, -24.89, 107.08, 1, 0)
	MovementLoopAddLocation(NPC, 840.71, -25.47, 106.64, 1, 0)
	MovementLoopAddLocation(NPC, 840.07, -25.47, 106.28, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 836.03, -26.75, 102.02, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 839.68, -25.47, 104.55, 1, 0)
	MovementLoopAddLocation(NPC, 841.17, -25.54, 103.21, 1, 0)
	MovementLoopAddLocation(NPC, 842.52, -25.51, 102.06, 1, 0)
	MovementLoopAddLocation(NPC, 837.07, -25.5, 98.15, 1, 0)
	MovementLoopAddLocation(NPC, 836.29, -25.5, 93.52, 1, 0)
	MovementLoopAddLocation(NPC, 837.09, -25.5, 85.86, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 854.42, -25.6, 53.74, 1, 0)
	MovementLoopAddLocation(NPC, 855.68, -25.61, 51.41, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 857.46, -25.48, 48.12, 1, 0)
	MovementLoopAddLocation(NPC, 855.72, -25.6, 46.09, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 858.19, -25.51, 46.74, 1, 0)
	MovementLoopAddLocation(NPC, 879.02, -25.37, 64.54, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 892.64, -25.51, 56.82, 1, 0)
	MovementLoopAddLocation(NPC, 894.51, -25.49, 54.18, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 899.93, -25.46, 46.12, 1, 0)
	MovementLoopAddLocation(NPC, 915.28, -24.54, 38.8, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 915.1, -24.54, 37.8, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 911.67, -25.42, 35.64, 1, 0)
	MovementLoopAddLocation(NPC, 911.52, -25.52, 30.49, 1, 0)
	MovementLoopAddLocation(NPC, 914.3, -25.45, 6.76, 1, 0)
	MovementLoopAddLocation(NPC, 915, -25.44, 6.72, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 920.57, -25.35, 12.73, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 918.92, -25.41, 15.78, 1, 0)
	MovementLoopAddLocation(NPC, 923.91, -25.53, 29.37, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 932.92, -25.47, 8.14, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 929.99, -25.42, 18.66, 1, 0)
	MovementLoopAddLocation(NPC, 933.16, -25.47, 21.49, 1, 0)
	MovementLoopAddLocation(NPC, 946.49, -25.53, 25.84, 1, 0)
	MovementLoopAddLocation(NPC, 948.13, -25.5, 29.03, 1, 0)
	MovementLoopAddLocation(NPC, 949.77, -25.5, 28.31, 1, 0)
	MovementLoopAddLocation(NPC, 951.35, -25.5, 19.9, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 959.26, -25.47, 18.66, 1, 0)
	MovementLoopAddLocation(NPC, 976.31, -25.47, 8.64, 1, 0)
	MovementLoopAddLocation(NPC, 990.68, -25.47, -0.58, 1, 25,"Sleep")
end



--[[
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 972.47, -25.45, 10.02, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 961.84, -25.44, 9.71, 1, 0)
	MovementLoopAddLocation(NPC, 958.16, -25.44, 21.02, 1, 0)
	MovementLoopAddLocation(NPC, 949.01, -25.5, 30.17, 1, 0)
	MovementLoopAddLocation(NPC, 905.14, -25.38, 15.2, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 880.26, -25.43, 30.05, 1, 0)
	MovementLoopAddLocation(NPC, 857.26, -25.5, 52.54, 1, 0)
	MovementLoopAddLocation(NPC, 838.21, -25.48, 85.91, 1, 0)
	MovementLoopAddLocation(NPC, 838.68, -25.47, 94.87, 1, 0)
	MovementLoopAddLocation(NPC, 839.47, -25.39, 89.55, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 860.44, -25.44, 50.05, 1, 0)
	MovementLoopAddLocation(NPC, 892.88, -25.5, 52, 4, 0)
	MovementLoopAddLocation(NPC, 904.41, -25.37, -10.76, 1, 0)
	MovementLoopAddLocation(NPC, 891.99, -25.36, -56.95, 1, 0)
	MovementLoopAddLocation(NPC, 811.93, -20.4, -59.04, 1, 0)
	MovementLoopAddLocation(NPC, 780.24, -21.46, -57.02, 1, 0)
	MovementLoopAddLocation(NPC, 766.08, -20.64, 10.56, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 724.78, -20.11, -0.22, 1, 0)
	MovementLoopAddLocation(NPC, 706.73, -20.82, -62.94, 1, 0)
	MovementLoopAddLocation(NPC, 700.29, -20.65, -68.06, 1, 0)
	MovementLoopAddLocation(NPC, 706.73, -20.82, -62.94, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 724.78, -20.11, -0.22, 4, 0)
	MovementLoopAddLocation(NPC, 766.08, -20.64, 10.56, 4, 0)
	MovementLoopAddLocation(NPC, 780.24, -21.46, -57.02, 4, 0)
	MovementLoopAddLocation(NPC, 811.93, -20.4, -59.04, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 891.99, -25.36, -56.95, 1, 0)
	MovementLoopAddLocation(NPC, 904.41, -25.37, -10.76, 1, 0)
	MovementLoopAddLocation(NPC, 892.88, -25.5, 52, 1, 0)
	MovementLoopAddLocation(NPC, 860.44, -25.44, 50.05, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 839.47, -25.39, 89.55, 4, 0)
	MovementLoopAddLocation(NPC, 838.68, -25.47, 94.87, 4, 0)
	MovementLoopAddLocation(NPC, 838.21, -25.48, 85.91, 4, 0)
	MovementLoopAddLocation(NPC, 857.26, -25.5, 52.54, 4, 0)
	MovementLoopAddLocation(NPC, 880.26, -25.43, 30.05, 2, 0)
	MovementLoopAddLocation(NPC, 905.14, -25.38, 15.2, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 949.01, -25.5, 30.17, 1, 0)
	MovementLoopAddLocation(NPC, 958.16, -25.44, 21.02, 1, 0)
	MovementLoopAddLocation(NPC, 961.84, -25.44, 9.71, 1, 0)
	MovementLoopAddLocation(NPC, 972.47, -25.45, 10.02, 1, math.random(6,20))
end

]]--
