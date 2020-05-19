--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)

	MovementLoopAddLocation(NPC, 43.95, -4.35, -41.08, 3, 0)
	MovementLoopAddLocation(NPC, 40.05, -4.35, -35.78, 3, 0)
	MovementLoopAddLocation(NPC, 40.75, -4.35, -27.02, 3, 5)
	MovementLoopAddLocation(NPC, 36.73, -2.25, -16.54, 3, 0)
	MovementLoopAddLocation(NPC, 32.99, 0.00, -6.86, 3, 0)
	MovementLoopAddLocation(NPC, 28.07, 0.00, -4.92, 1, 0)
	MovementLoopAddLocation(NPC, 24.02, 0.00, -0.44, 2, 0)
	MovementLoopAddLocation(NPC, 24.74, 0.00, 2.14, 5, 0)
	MovementLoopAddLocation(NPC, 24.74, 0.00, 2.14, 8, 10)
	MovementLoopAddLocation(NPC, 29.57, 0.00, 6.29, 10, 0)
	MovementLoopAddLocation(NPC, 22.91, -4.38, 30.12, 3, 0)
	MovementLoopAddLocation(NPC, 13.48, -4.38, 37.56, 3, 0)
	MovementLoopAddLocation(NPC, 12.52, -4.38, 45.02, 3, 5)
	MovementLoopAddLocation(NPC, 12.05, -4.35, 48.01, 3, 0)
	MovementLoopAddLocation(NPC, 10.74, -4.34, 48.41, 3, 0)
	MovementLoopAddLocation(NPC, 8.51, -4.38, 52.61, 3, 8)
	MovementLoopAddLocation(NPC, 8.19, -4.38, 56.11, 3, 0)
	MovementLoopAddLocation(NPC, 7.29, -4.38, 60.63, 3, 0)
	MovementLoopAddLocation(NPC, 7.44, -4.38, 63.46, 3, 0)
	MovementLoopAddLocation(NPC, 7.87, -4.38, 65.93, 3, 20)
	MovementLoopAddLocation(NPC, 5.61, -4.38, 68.96, 3, 0)
	MovementLoopAddLocation(NPC, 8.74, -4.38, 71.53, 3, 0)
	MovementLoopAddLocation(NPC, 12.21, -4.38, 66.99, 3, 0)
	MovementLoopAddLocation(NPC, 13.23, -4.38, 60.50, 1, 0)
	MovementLoopAddLocation(NPC, 14.89, -4.38, 56.62, 2, 5)
	MovementLoopAddLocation(NPC, 20.03, -3.14, 55.73, 1, 0)
	MovementLoopAddLocation(NPC, 23.61, -1.11, 57.96, 1, 0)
	MovementLoopAddLocation(NPC, 27.39, 0.00, 58.86, 5, 0)
	MovementLoopAddLocation(NPC, 29.09, 0.00, 56.21, 10, 0)
	MovementLoopAddLocation(NPC, 29.15, 0.00, 51.97, 15, 0)
	MovementLoopAddLocation(NPC, 19.48, -4.30, 48.70, 10, 0)
	MovementLoopAddLocation(NPC, 19.05, -4.38, 46.23, 5, 0)
	MovementLoopAddLocation(NPC, 22.49, -4.38, 40.63, 3, 15)
	MovementLoopAddLocation(NPC, 23.50, -4.38, 36.70, 3, 0)
	MovementLoopAddLocation(NPC, 24.90, -4.38, 22.87, 3, 0)
	MovementLoopAddLocation(NPC, 30.37, 0.00, 6.61, 3, 0)
	MovementLoopAddLocation(NPC, 34.92, -0.03, 1.41, 3, 0)
	MovementLoopAddLocation(NPC, 33.94, -0.02, -1.59, 3, 0)
	MovementLoopAddLocation(NPC, 32.43, 0.00, -5.57, 3, 0)
	MovementLoopAddLocation(NPC, 36.08, -1.57, -12.09, 3, 0)
	MovementLoopAddLocation(NPC, 41.05, -3.76, -13.02, 3, 0)
	MovementLoopAddLocation(NPC, 50.54, -4.35, -9.39, 3, 0)
	MovementLoopAddLocation(NPC, 54.94, -4.35, -11.56, 3, 0)
	MovementLoopAddLocation(NPC, 61.76, -4.33, -13.50, 3, 0)
	MovementLoopAddLocation(NPC, 65.59, -4.35, -14.77, 5, 8)
	MovementLoopAddLocation(NPC, 65.62, -4.35, -19.44, 3, 0)
	MovementLoopAddLocation(NPC, 62.13, -4.35, -21.45, 10, 0)
	MovementLoopAddLocation(NPC, 63.16, -4.35, -26.67, 3, 0)
	MovementLoopAddLocation(NPC, 67.66, -4.35, -29.31, 3, 5)
	MovementLoopAddLocation(NPC, 71.88, -4.35, -30.57, 3, 0)
	MovementLoopAddLocation(NPC, 74.03, -4.35, -33.32, 3, 0)
	MovementLoopAddLocation(NPC, 71.09, -4.09, -36.99, 3, 0)
	MovementLoopAddLocation(NPC, 68.45, -4.35, -37.16, 3, 10)
	MovementLoopAddLocation(NPC, 56.62, -4.35, -40.81, 3, 0)
	MovementLoopAddLocation(NPC, 56.62, -4.35, -40.81, 3, 0)
end


function hailed(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end