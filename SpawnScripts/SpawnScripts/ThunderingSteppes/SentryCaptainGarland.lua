--[[
    Script Name    : SpawnScripts/ThunderingSteppes/SentryCaptainGarland.lua
    Script Author  : Jabantiz
    Script Date    : 2015.07.12 06:07:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 249.94, 33.24, -1029.99, 2)
	MovementLoopAddLocation(NPC, 258.34, 32.76, -1023.70, 2)
	MovementLoopAddLocation(NPC, 271.59, 25.22, -1007.19, 2)
	MovementLoopAddLocation(NPC, 272.38, 22.43, -993.42, 2)
	MovementLoopAddLocation(NPC, 263.14, 16.30, -968.31, 2)
	MovementLoopAddLocation(NPC, 246.15, 13.15, -958.93, 2)
	MovementLoopAddLocation(NPC, 195.67, 13.63, -963.25, 2)
	MovementLoopAddLocation(NPC, 176.94, 11.48, -955.78, 2)
	MovementLoopAddLocation(NPC, 169.55, 9.64, -936.13, 2)
	MovementLoopAddLocation(NPC, 173.65, 5.79, -913.69, 2)
	MovementLoopAddLocation(NPC, 189.85, 3.46, -881.72, 2)
	MovementLoopAddLocation(NPC, 185.61, 2.89, -863.07, 2)
	MovementLoopAddLocation(NPC, 147.49, -2.60, -796.37, 2)
	MovementLoopAddLocation(NPC, 112.35, -1.82, -782.23, 2)
	MovementLoopAddLocation(NPC, 75.19, -2.13, -771.52, 2)
	MovementLoopAddLocation(NPC, 54.50, -1.69, -752.32, 2)
	MovementLoopAddLocation(NPC, 30.11, -1.58, -706.66, 2)
	MovementLoopAddLocation(NPC, 37.95, -1.48, -660.71, 2)
	MovementLoopAddLocation(NPC, 49.54, -1.45, -641.16, 2)
	MovementLoopAddLocation(NPC, 71.65, -1.06, -623.20, 2)
	MovementLoopAddLocation(NPC, 101.28, -2.10, -612.55, 2)
	MovementLoopAddLocation(NPC, 167.39, -2.70, -586.82, 2)
	MovementLoopAddLocation(NPC, 208.07, -1.82, -557.98, 2)
	MovementLoopAddLocation(NPC, 285.54, -1.21, -547.06, 2)
	MovementLoopAddLocation(NPC, 338.42, 10.54, -535.79, 2)
	MovementLoopAddLocation(NPC, 360.09, 11.65, -514.59, 2)
	
	MovementLoopAddLocation(NPC, 338.42, 10.54, -535.79, 2)
	MovementLoopAddLocation(NPC, 285.54, -1.21, -547.06, 2)
	MovementLoopAddLocation(NPC, 208.07, -1.82, -557.98, 2)
	MovementLoopAddLocation(NPC, 167.39, -2.70, -586.82, 2)
	MovementLoopAddLocation(NPC, 101.28, -2.10, -612.55, 2)
	MovementLoopAddLocation(NPC, 71.65, -1.06, -623.20, 2)
	MovementLoopAddLocation(NPC, 49.54, -1.45, -641.16, 2)
	MovementLoopAddLocation(NPC, 37.95, -1.48, -660.71, 2)
	MovementLoopAddLocation(NPC, 30.11, -1.58, -706.66, 2)
	MovementLoopAddLocation(NPC, 54.50, -1.69, -752.32, 2)
	MovementLoopAddLocation(NPC, 75.19, -2.13, -771.52, 2)
	MovementLoopAddLocation(NPC, 112.35, -1.82, -782.23, 2)
	MovementLoopAddLocation(NPC, 147.49, -2.60, -796.37, 2)
	MovementLoopAddLocation(NPC, 185.61, 2.89, -863.07, 2)
	MovementLoopAddLocation(NPC, 189.85, 3.46, -881.72, 2)
	MovementLoopAddLocation(NPC, 173.65, 5.79, -913.69, 2)
	MovementLoopAddLocation(NPC, 169.55, 9.64, -936.13, 2)
	MovementLoopAddLocation(NPC, 176.94, 11.48, -955.78, 2)
	MovementLoopAddLocation(NPC, 195.67, 13.63, -963.25, 2)
	MovementLoopAddLocation(NPC, 246.15, 13.15, -958.93, 2)
	MovementLoopAddLocation(NPC, 263.14, 16.30, -968.31, 2)
	MovementLoopAddLocation(NPC, 272.38, 22.43, -993.42, 2)
	MovementLoopAddLocation(NPC, 271.59, 25.22, -1007.19, 2)
	MovementLoopAddLocation(NPC, 258.34, 32.76, -1023.70, 2)
end

function hailed(NPC, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end

