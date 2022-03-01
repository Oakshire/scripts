--[[
	Script Name		:	SpawnScripts/BeggarsCourt/a_rat_a.lua
	Script Purpose	:	Waypoint Path for arat_a.lua
	Script Author	:	Cynnar
	Script Date		:	7/8/2018 08:07:43 AM
	Script Notes	:	<special-instructions>
--]]

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
	MovementLoopAddLocation(NPC, 24.95, 5.25, -13.04, 2, 0)
	MovementLoopAddLocation(NPC, 29.51, 4.49, -4.96, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 34.27, 3.5, 3.44, 2, 0)
	MovementLoopAddLocation(NPC, 37.97, 2.18, 9.85, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 37.97, 2.18, 9.85, 2, 0)
	MovementLoopAddLocation(NPC, 48.17, 3, 1.59, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 51.3, 4.75, -11.23, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 45.74, 5.25, -15.61, 2, 0)
	MovementLoopAddLocation(NPC, 41.37, 5.25, -16.54, 2, 0)
	MovementLoopAddLocation(NPC, 37.65, 5.25, -15.89, 2, 0)
	MovementLoopAddLocation(NPC, 34.17, 5.25, -12.55, 2, 0)
	MovementLoopAddLocation(NPC, 28.42, 5.25, -9.08, 2, 0)
	MovementLoopAddLocation(NPC, 17.41, 3.5, -6.64, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 12.45, 3.88, -14.56, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 16.36, 4.75, -23.02, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 3.95, 4.25, -23.47, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, -4.72, 3.24, -29.14, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, -7.65, 4, -43.74, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, -8.79, 4, -49.24, 5, 0)
	MovementLoopAddLocation(NPC, -14.78, 4.18, -60.38, 2, 0)
	MovementLoopAddLocation(NPC, -20.49, 4.18, -70.93, 2, 0)
	MovementLoopAddLocation(NPC, -21.05, 4.18, -74.31, 2, 0)
	MovementLoopAddLocation(NPC, -24.93, 4.18, -77.84, 2, 0)
	MovementLoopAddLocation(NPC, -26.03, 4.18, -81.13, 2, 0)
	MovementLoopAddLocation(NPC, -28.21, 4.18, -84.56, 2, 0)
	MovementLoopAddLocation(NPC, -29.13, 4.18, -88.63, 2, 0)
	MovementLoopAddLocation(NPC, -29.06, 4.16, -84.84, 2, 0)
	MovementLoopAddLocation(NPC, -27.09, 4.17, -80.11, 2, 0)
	MovementLoopAddLocation(NPC, -25.69, 4.17, -76.01, 2, 0)
	MovementLoopAddLocation(NPC, -21.33, 4.18, -75.09, 2, 0)
	MovementLoopAddLocation(NPC, -19.07, 4.18, -70.85, 5, 0)
	MovementLoopAddLocation(NPC, -13.68, 4.34, -59, 2, 0)
	MovementLoopAddLocation(NPC, -9.89, 4, -51.21, 2, 0)
	MovementLoopAddLocation(NPC, -13.96, 4, -47.39, 2, 0)
	MovementLoopAddLocation(NPC, -18.03, 4, -45.48, 2, 0)
	MovementLoopAddLocation(NPC, -19.44, 4, -40.95, 2, 0)
	MovementLoopAddLocation(NPC, -21.04, 4, -38.5, 2, 0)
	MovementLoopAddLocation(NPC, -21.16, 4, -36.67, 2, 0)
	MovementLoopAddLocation(NPC, -18.25, 3.46, -28.66, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, -13.49, 3, -16.79, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, -1.69, 3.5, -5.6, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 9.23, 3.25, 6.03, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 19.22, 3.5, 8.17, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 33.96, 2.75, 8.04, 2, 5, 0)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
	MovementLoopAddLocation(NPC, 49.46, 2, 18.51, 2, 0)
	MovementLoopAddLocation(NPC, 49.84, 2, 22.47, 2, 0, "depop")
end


function RouteOne(NPC)
	local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function RouteTwo(NPC)
	local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(20,45))
end

function RouteThree(NPC)
	local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function RouteFour(NPC)
	local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function depop(NPC)
	Despawn(NPC)
end
