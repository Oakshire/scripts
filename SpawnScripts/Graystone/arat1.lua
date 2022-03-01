--[[
	Script Name	: SpawnScripts/Graystone/arat1.lua
	Script Purpose	: a rat
	Script Author	: Scatman
	Script Date	: 2009.05.30
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 851.84, -23.63, -147.35, 10, 0)
	MovementLoopAddLocation(NPC, 854.74, -24.25, -152.51, 10, 0)
	MovementLoopAddLocation(NPC, 867.88, -22.45, -152.76, 10, 0)
	MovementLoopAddLocation(NPC, 877.81, -24.92, -152.7, 10, 0)
	MovementLoopAddLocation(NPC, 902.18, -24.94, -152.43, 10, 0)
	MovementLoopAddLocation(NPC, 926.53, -24.81, -157.48, 10, 0)
	MovementLoopAddLocation(NPC, 938.33, -25.28, -155.26, 10, 0)
	MovementLoopAddLocation(NPC, 958.71, -25.23, -157.01, 10, 0)
	MovementLoopAddLocation(NPC, 908.11, -24.96, -149.41, 10, 0)
	MovementLoopAddLocation(NPC, 901.11, -24.98, -140.98, 10, 0)
	MovementLoopAddLocation(NPC, 896.26, -22.67, -138.23, 10, 0)
	MovementLoopAddLocation(NPC, 894.8, -22.57, -134.95, 10, 0)
	MovementLoopAddLocation(NPC, 898.25, -22.32, -118.58, 10, 0)
	MovementLoopAddLocation(NPC, 899.61, -22.31, -115.71, 10, 0)
	MovementLoopAddLocation(NPC, 900.78, -22.31, -114.47, 10, 0)
	MovementLoopAddLocation(NPC, 902.31, -22.31, -115.1, 10, 0)
	MovementLoopAddLocation(NPC, 902.69, -21.77, -115.88, 10, 0)
	MovementLoopAddLocation(NPC, 904.79, -19.81, -120.12, 10, 0)
	MovementLoopAddLocation(NPC, 911.44, -19.98, -117.44, 10, 0)
	MovementLoopAddLocation(NPC, 918.57, -21.99, -114.49, 10, 0)
	MovementLoopAddLocation(NPC, 926.63, -22.4, -114.88, 10, 0)
	MovementLoopAddLocation(NPC, 927.8, -22.4, -109.95, 10, 0)
	MovementLoopAddLocation(NPC, 918.07, -22.4, -112.21, 10, 0)
	MovementLoopAddLocation(NPC, 891.52, -22.31, -106.56, 10, 0)
	MovementLoopAddLocation(NPC, 886.05, -22.09, -98.77, 10, 0)
	MovementLoopAddLocation(NPC, 879.57, -24.95, -100.37, 10, 0)
	MovementLoopAddLocation(NPC, 852.49, -24.93, -106.04, 10, 0)
	MovementLoopAddLocation(NPC, 847.36, -23.05, -107.78, 10, 0)
	MovementLoopAddLocation(NPC, 844.42, -22.61, -114.58, 10, 0)
	MovementLoopAddLocation(NPC, 838.19, -20.73, -114.14, 10, 0)
	MovementLoopAddLocation(NPC, 821.16, -20.97, -117.75, 10, 0)
	MovementLoopAddLocation(NPC, 839.54, -20.94, -128.94, 10, 0)
	MovementLoopAddLocation(NPC, 840.92, -20.86, -142.81, 10, 0)
	MovementLoopAddLocation(NPC, 846.25, -22.55, -147.46, 10, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end