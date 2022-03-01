--[[
	Script Name		:	stupidrat1.lua
	Script Purpose	:	Waypoint Path for stupidrat1.lua
	Script Author	:	Devn00b
	Script Date		:	04/29/2020 12:08:29 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	while true do
	local option = math.random(1,25)
	if option == 1 then
	MovementLoopAddLocation(NPC, -75.2, -0.13, -130.53, 2, 0)
	elseif option == 2 then
	MovementLoopAddLocation(NPC, -76.79, -0.05, -129.05, 2, 0)
	elseif option == 3 then
	MovementLoopAddLocation(NPC, -77.83, -0.03, -130.19, 2, 0)
	elseif option == 4 then
	MovementLoopAddLocation(NPC, -75.33, -0.07, -127.47, 2, 0)
	elseif option == 5 then
	MovementLoopAddLocation(NPC, -78.28, -0.08, -124.76, 2, 0)
	elseif option == 6 then
	MovementLoopAddLocation(NPC, -80.27, -0.08, -126.91, 2, 0)
	elseif option == 7 then
	MovementLoopAddLocation(NPC, -80.34, -0.1, -123.84, 2, 0)
	elseif option == 8 then
	MovementLoopAddLocation(NPC, -81.61, -0.12, -124.99, 2, 0)
	elseif option == 9 then
	MovementLoopAddLocation(NPC, -79.11, -0.09, -124.08, 2, 0)
	elseif option == 10 then
	MovementLoopAddLocation(NPC, -80.03, -0.08, -128.17, 2, 0)
	elseif option == 11 then
	MovementLoopAddLocation(NPC, -78.71, -0.08, -127.77, 2, 0)
	elseif option == 12 then
	MovementLoopAddLocation(NPC, -76.78, -0.05, -129.42, 2, 0)
	elseif option == 13 then
	MovementLoopAddLocation(NPC, -77.59, -0.04, -130.51, 2, 0)
	elseif option == 14 then
	MovementLoopAddLocation(NPC, -76.29, -0.13, -131.25, 2, 0)
	elseif option == 15 then
	MovementLoopAddLocation(NPC, -74.74, -0.09, -128.05, 2, 0)
	elseif option == 16 then
	MovementLoopAddLocation(NPC, -77.95, -0.08, -127.65, 2, 0)
	elseif option == 17 then
	MovementLoopAddLocation(NPC, -78.63, -0.08, -126.94, 2, 0)
	elseif option == 18 then
	MovementLoopAddLocation(NPC, -79.78, -0.08, -127.73, 2, 0)
	elseif option == 19 then
	MovementLoopAddLocation(NPC, -81.37, -0.14, -124.69, 2, 0)
	elseif option == 20 then
	MovementLoopAddLocation(NPC, -81.74, -0.11, -125.2, 2, 0)
	elseif option == 21 then
	MovementLoopAddLocation(NPC, -81.94, -0.09, -125.42, 2, 0)
	elseif option == 22 then
	MovementLoopAddLocation(NPC, -81.77, -0.1, -122.52, 2, 0)
	elseif option == 23 then
	MovementLoopAddLocation(NPC, -83.17, -0.09, -122.21, 2, 0)
	elseif option == 24 then
	MovementLoopAddLocation(NPC, -84.5, -0.08, -123.42, 2, 0)
	elseif option == 25 then
	MovementLoopAddLocation(NPC, -78.57, -0.08, -127.2, 2, 0)
	end
end


end