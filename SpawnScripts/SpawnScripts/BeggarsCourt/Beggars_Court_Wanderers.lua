--[[
	Script Name		:	SpawnScripts/BeggarsCourt/Beggars_Court_Wanderers.luaBeggars_Court_Wanderers.lua
	Script Purpose	:	Waypoint Path for Beggars_Court_Wanderers.lua
	Script Author	:	Cynnar
	Script Date		:	7/8/2018 04:07:20 PM
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
	MovementLoopAddLocation(NPC, 76.51, -7.08, 101.84, 2, 0)
	MovementLoopAddLocation(NPC, 72.4, -7.08, 101.96, 2, 0)
	path = math.random(0, 1)
	
	if path == 1 then
		path_1(NPC)
	else
		path_2(NPC)
	end
	MovementLoopAddLocation(NPC, 62.84, -7.08, 94.95, 2, 0)
	MovementLoopAddLocation(NPC, 58.33, -7.05, 86.02, 2, 0)
	MovementLoopAddLocation(NPC, 57.45, -6.58, 83.55, 2, 0, "ChangeGrid_1")
	MovementLoopAddLocation(NPC, 55.85, -6.5, 79.19, 2, 0)
	MovementLoopAddLocation(NPC, 52.89, -6.99, 69.56, 2, 0, "ChangeGrid_2")
	MovementLoopAddLocation(NPC, 51.17, -6.95, 62.54, 2, 0)
	MovementLoopAddLocation(NPC, 45.78, -7, 55.28, 2,0)
	MovementLoopAddLocation(NPC, 41.8, -7, 51.68, 2, 3)
	path = math.random(0, 1)
	
	if path == 1 then
		path_1_A(NPC)
	end
	MovementLoopAddLocation(NPC, 42.64, -5, 40.87, 2, 3)
	MovementLoopAddLocation(NPC, 43.89, -5, 40.21, 2, 3)
	MovementLoopAddLocation(NPC, 27.27, -6, 40.12, 2, 3)
	MovementLoopAddLocation(NPC, 24.88, -6, 34.74, 2, 3)
	MovementLoopAddLocation(NPC, 16.71, -5.75, 34.48, 2, 3)
	MovementLoopAddLocation(NPC, 13.11, -6, 36.49, 2, 3)
	MovementLoopAddLocation(NPC, 14.42, -6, 40.24, 2, 3)
	MovementLoopAddLocation(NPC, 11.33, -6.25, 43.25, 2, 3)
	MovementLoopAddLocation(NPC, -6.66, -6, 35.16, 2, 3)
	MovementLoopAddLocation(NPC, -7.45, -6, 33.4, 2, 3)
	MovementLoopAddLocation(NPC, -7.41, -6, 33.09, 2, 3)
	MovementLoopAddLocation(NPC, -11.25, -6, 30.03, 2, 3)
	MovementLoopAddLocation(NPC, -13.45, -6, 23.67, 2, 3)
	MovementLoopAddLocation(NPC, -11.78, -5.1, 16.14, 2, 3)
	MovementLoopAddLocation(NPC, -16.93, -5, 12.21, 2, 3)
	MovementLoopAddLocation(NPC, -20.48, -3.96, 9.01, 2, 3)
	MovementLoopAddLocation(NPC, -28.12, -0.75, 5.29, 2, 3)
	MovementLoopAddLocation(NPC, -26.82, -0.76, 2.13, 2, 3)
	MovementLoopAddLocation(NPC, -19.68, 1.82, 4.93, 2, 3)
	MovementLoopAddLocation(NPC, -17.61, 2, 0.15, 2, 3)
	MovementLoopAddLocation(NPC, -19.44, 2, -2.54, 2, 3)
	MovementLoopAddLocation(NPC, -15.69, 2.09, -6.11, 2, 3)
	MovementLoopAddLocation(NPC, -15.05, 3.75, -28.85, 2, 3)
	MovementLoopAddLocation(NPC, -12.61, 4, -34.72, 2, 3)
	MovementLoopAddLocation(NPC, -14.26, 4, -37.55, 2, 3)
	MovementLoopAddLocation(NPC, -8.02, 3, -36.51, 2, 3)
	MovementLoopAddLocation(NPC, -5.93, 3.75, -37.63, 2, 3)
	MovementLoopAddLocation(NPC, -4.4, 4.44, -39.8, 2, 3)
	MovementLoopAddLocation(NPC, 0.06, 5, -38.61, 2, 3)
	MovementLoopAddLocation(NPC, -0.62, 5, -37.87, 2, 3)
	MovementLoopAddLocation(NPC, -1.49, 5, -34.88, 2, 3)
	MovementLoopAddLocation(NPC, 5.47, 4.75, -28.55, 2, 3)
	MovementLoopAddLocation(NPC, 12.6, 4.75, -27.41, 2, 3)
	MovementLoopAddLocation(NPC, 20.15, 5.25, -32.81, 2, 3)
	MovementLoopAddLocation(NPC, 21.55, 5.25, -31.33, 2, 3)
	MovementLoopAddLocation(NPC, 19.59, 5.03, -28.83, 2, 3)
	MovementLoopAddLocation(NPC, 19.96, 5, -23.39, 2, 3)
	MovementLoopAddLocation(NPC, 26.94, 5.25, -20.26, 2, 3)
	MovementLoopAddLocation(NPC, 23.5, 5.25, -14.64, 2, 3)
	MovementLoopAddLocation(NPC, 31.51, 5.25, -11.6, 2, 3)
	MovementLoopAddLocation(NPC, 42.69, 5.25, -15.26, 2, 3)
	MovementLoopAddLocation(NPC, 52.8, 5, -21.17, 2, 3)
	MovementLoopAddLocation(NPC, 58.2, 5.01, -23.22, 2, 3)
	MovementLoopAddLocation(NPC, 53.74, 5, -15.59, 2, 3)
	MovementLoopAddLocation(NPC, 45.41, 3.67, -8.05, 2, 3)
	MovementLoopAddLocation(NPC, 43.38, 3.5, -5.24, 2, 3)
	MovementLoopAddLocation(NPC, 30.73, 3.83, -2.81, 2, 3)
	MovementLoopAddLocation(NPC, 17.58, 3.5, -3.76, 2, 3)
	MovementLoopAddLocation(NPC, 10.47, 3.5, -5.34, 2, 3)
	MovementLoopAddLocation(NPC, 10.93, 3.5, -1.67, 2, 3)
	MovementLoopAddLocation(NPC, 20.03, 3.5, 6.08, 2, 3)
	MovementLoopAddLocation(NPC, 27.67, 2, 15.87, 2, 3)
	MovementLoopAddLocation(NPC, 20.5, 2.08, 17.41, 2, 3)
	MovementLoopAddLocation(NPC, 20.81, 2.98, 20.05, 2, 3)
	MovementLoopAddLocation(NPC, 20.64, 2, 19.12, 2, 3)
	MovementLoopAddLocation(NPC, 34, 2, 14.51, 2, 3)
	MovementLoopAddLocation(NPC, 43.07, 2, 16.15, 2, 3)
	MovementLoopAddLocation(NPC, 48.67, 2, 17.8, 2, 3)
	MovementLoopAddLocation(NPC, 49.89, 2, 22.67, 2, 3)
	MovementLoopAddLocation(NPC, 49.77, 1.9, 24.77, 2, 3)
	MovementLoopAddLocation(NPC, 46.84, 1.27, 25.5, 2, 3)
	MovementLoopAddLocation(NPC, 32.56, -5, 23.54, 2, 3)
	MovementLoopAddLocation(NPC, 31.55, -5, 27.34, 2, 3)
	MovementLoopAddLocation(NPC, 40.3, -5, 36.87, 2, 3)
	MovementLoopAddLocation(NPC, 41.7, -6, 45.4, 2, 3)
	MovementLoopAddLocation(NPC, 47.45, -7, 56.29, 2, 3)
	MovementLoopAddLocation(NPC, 57.56, -6.97, 62.99, 2, 3, "depop")
end

function depop(NPC)
	Despawn(NPC)
end

function ChangeGrid_1(NPC)
	SetGridID(NPC, 4022248764)
end

function ChangeGrid_2(NPC)
	SetGridID(NPC, 2799241780)
end

function path_1(NPC)
	MovementLoopAddLocation(NPC, 69.32, -7.08, 108.95, 2, 3)
	MovementLoopAddLocation(NPC, 64.66, -7.08, 109.92, 2, 3)
	MovementLoopAddLocation(NPC, 62.35, -7.08, 109.55, 2, 0)
	MovementLoopAddLocation(NPC, 59.48, -7.08, 109.09, 2, 0)
	MovementLoopAddLocation(NPC, 58.84, -7.08, 107.72, 2, 0)
	MovementLoopAddLocation(NPC, 57.73, -7.08, 105.35, 2, 0)
	MovementLoopAddLocation(NPC, 57.57, -7.08, 101.5, 2, 0)
	MovementLoopAddLocation(NPC, 58.9, -7.08, 98.79, 2, 0)
end

function path_2(NPC)
	MovementLoopAddLocation(NPC, 68.09, -7.08, 97.75, 2, 0)
end

function path_1_A(NPC)
	MovementLoopAddLocation(NPC, 25, -7, 56.25, 2, 0)
	MovementLoopAddLocation(NPC, 17.17, -7, 58.82, 2, 0)
	MovementLoopAddLocation(NPC, 16.53, -0.75, 72.89, 2, 0)
	MovementLoopAddLocation(NPC, 13.47, -0.12, 75.39, 2, 0)
	MovementLoopAddLocation(NPC, 10.45, -0.05, 76.46, 2, 0)
	MovementLoopAddLocation(NPC, 10.46, 0.01, 77.78, 2, 0)
	MovementLoopAddLocation(NPC, 10.55, -0.05, 76.39, 2, 0)
	MovementLoopAddLocation(NPC, 6.8, -1.93, 70.46, 2, 0)
	MovementLoopAddLocation(NPC, 7.41, -7, 59.23, 2, 0)
	MovementLoopAddLocation(NPC, 2.35, -7, 59.67, 2, 0)
	MovementLoopAddLocation(NPC, -6.62, -7, 58.65, 2, 0)
	MovementLoopAddLocation(NPC, -15.4, -7, 58.49, 2, 0)
	MovementLoopAddLocation(NPC, -20.39, -7, 59.96, 2, 0)
	MovementLoopAddLocation(NPC, -23.43, -7, 58.81, 2, 0)
	MovementLoopAddLocation(NPC, -23.03, -7, 60.95, 2, 0)
	MovementLoopAddLocation(NPC, -23.37, -7, 63.33, 2, 0)
	MovementLoopAddLocation(NPC, -21.73, -7, 66.38, 2, 0)
	MovementLoopAddLocation(NPC, -20.28, -7, 64.77, 2, 0)
	MovementLoopAddLocation(NPC, -15.87, -7, 56.06, 2, 0)
	MovementLoopAddLocation(NPC, -11.31, -7, 57.61, 2, 0)
	MovementLoopAddLocation(NPC, -9.91, -7, 46.9, 2, 0)
	MovementLoopAddLocation(NPC, -10.81, -7, 40.38, 2, 0)
	MovementLoopAddLocation(NPC, -27.28, -6.5, 30.38, 2, 0)
	MovementLoopAddLocation(NPC, -31.12, -5.75, 25.53, 2, 0)
	MovementLoopAddLocation(NPC, -34.9, -5.75, 25, 2, 0)
end