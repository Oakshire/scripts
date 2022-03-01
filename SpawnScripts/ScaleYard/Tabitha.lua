--[[
	Script Name	: Tabitha.lua
	Script Purpose	: Tabitha the cat in Scale Yard
	Script Author	: Xanibunib	
	Script Date	: 2009.3.26
	Script Notes	: Meow!
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 22.85, -4.38, 25.22, 3, 0)
	MovementLoopAddLocation(NPC, 25.51, -4.38, 21.16, 3, 0)
	MovementLoopAddLocation(NPC, 29.79, 0.00, 4.83, 3, 0)
	MovementLoopAddLocation(NPC, 24.49, 0.00, -3.24, 3, 0)
	MovementLoopAddLocation(NPC, 44.45, -0.07, -3.01, 3, 0)
	MovementLoopAddLocation(NPC, 45.35, 0.00, 8.43, 3, 0)
	MovementLoopAddLocation(NPC, 42.63, 0.00, 5.77, 3, 0)
	MovementLoopAddLocation(NPC, 42.81, 0.00, 2.56, 3, 0)
	MovementLoopAddLocation(NPC, 33.90, 0.00, -6.19, 3, 5)
	MovementLoopAddLocation(NPC, 36.05, -2.25, -14.10, 3, 0)
	MovementLoopAddLocation(NPC, 42.99, -4.35, -12.33, 3, 0)
	MovementLoopAddLocation(NPC, 45.40, -4.35, -8.54, 3, 0)
	MovementLoopAddLocation(NPC, 51.86, -4.35, -9.80, 3, 0)
	MovementLoopAddLocation(NPC, 60.66, -2.25, -7.54, 3, 0)
	MovementLoopAddLocation(NPC, 70.23, 0.00, -5.06, 3, 0)
	MovementLoopAddLocation(NPC, 72.11, 0.00, -12.64, 3, 0)
	MovementLoopAddLocation(NPC, 82.25, 0.00, -13.85, 3, 0)
	MovementLoopAddLocation(NPC, 84.51, 0.00, -10.39, 3, 0)
	MovementLoopAddLocation(NPC, 81.27, 0.00, -1.76, 3, 0)
	MovementLoopAddLocation(NPC, 71.55, 0.00, -4.19, 3, 0)
	MovementLoopAddLocation(NPC, 68.14, -2.25, 3.73, 3, 10)
	MovementLoopAddLocation(NPC, 76.60, -4.37, 5.26, 3, 0)
	MovementLoopAddLocation(NPC, 70.70, -4.37, 14.77, 3, 0)
	MovementLoopAddLocation(NPC, 80.96, -4.37, 19.31, 3, 0)
	MovementLoopAddLocation(NPC, 90.38, -4.37, 14.80, 3, 0)
	MovementLoopAddLocation(NPC, 97.43, -4.37, 19.84, 3, 5)
	MovementLoopAddLocation(NPC, 86.07, -4.37, 18.75, 3, 0)
	MovementLoopAddLocation(NPC, 77.76, -4.37, 14.64, 3, 0)
	MovementLoopAddLocation(NPC, 74.31, -4.31, 6.34, 3, 0)
	MovementLoopAddLocation(NPC, 68.96, -2.25, 3.38, 3, 0)
	MovementLoopAddLocation(NPC, 69.42, 0.00, -5.39, 3, 0)
	MovementLoopAddLocation(NPC, 61.52, -2.25, -7.07, 3, 0)
	MovementLoopAddLocation(NPC, 65.45, -4.35, -15.87, 3, 0)
	MovementLoopAddLocation(NPC, 61.40, -4.35, -23.16, 3, 8)
	MovementLoopAddLocation(NPC, 62.89, -4.35, -27.52, 3, 0)
	MovementLoopAddLocation(NPC, 69.62, -4.35, -30.93, 3, 0)
	MovementLoopAddLocation(NPC, 75.80, -4.35, -33.60, 3, 0)
	MovementLoopAddLocation(NPC, 74.25, -4.35, -36.47, 3, 3)
	MovementLoopAddLocation(NPC, 67.77, -4.35, -38.80, 3, 0)
	MovementLoopAddLocation(NPC, 59.59, -4.35, -36.54, 3, 0)
	MovementLoopAddLocation(NPC, 52.13, -4.35, -40.36, 3, 0)
	MovementLoopAddLocation(NPC, 45.21, -4.35, -41.20, 3, 0)
	MovementLoopAddLocation(NPC, 40.05, -4.35, -37.90, 3, 10)
	MovementLoopAddLocation(NPC, 39.43, -4.35, -31.20, 3, 0)
	MovementLoopAddLocation(NPC, 41.45, -4.35, -27.87, 3, 0)
	MovementLoopAddLocation(NPC, 41.68, -4.35, -24.00, 3, 0)
	MovementLoopAddLocation(NPC, 37.64, -4.03, -20.38, 3, 0)
	MovementLoopAddLocation(NPC, 36.48, -2.25, -16.13, 3, 0)
	MovementLoopAddLocation(NPC, 34.68, -0.57, -10.39, 3, 0)
	MovementLoopAddLocation(NPC, 30.53, 0.00, 5.42, 3, 0)
	MovementLoopAddLocation(NPC, 24.92, -4.14, 20.32, 3, 0)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	Say(NPC, "Meow.")
end

function respawn(NPC)
	spawn(NPC)
end

function CheckForRats(NPC)
end