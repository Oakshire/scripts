--[[
	Script Name	: SpawnScripts/Graystone/arat2.lua
	Script Purpose	: a rat
	Script Author	: Scatman
	Script Date	: 2009.05.30
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 838.9, -20.94, -128.54, 10, 0)
	MovementLoopAddLocation(NPC, 832.97, -20.97, -123.02, 10, 0)
	MovementLoopAddLocation(NPC, 836.77, -20.93, -114.48, 10, 0)
	MovementLoopAddLocation(NPC, 845.27, -22.6, -114.46, 10, 0)
	MovementLoopAddLocation(NPC, 845.59, -23.27, -108.35, 10, 0)
	MovementLoopAddLocation(NPC, 853.13, -24.96, -105.98, 10, 0)
	MovementLoopAddLocation(NPC, 878.94, -24.96, -100.83, 10, 0)
	MovementLoopAddLocation(NPC, 886.81, -22.26, -99.01, 10, 0)
	MovementLoopAddLocation(NPC, 894.37, -22.3, -107.7, 10, 0)
	MovementLoopAddLocation(NPC, 896.61, -22.4, -105.39, 10, 0)
	MovementLoopAddLocation(NPC, 892, -22.61, -88.72, 10, 0)
	MovementLoopAddLocation(NPC, 899.3, -22.4, -84.33, 10, 0)
	MovementLoopAddLocation(NPC, 895.67, -22.61, -97.41, 10, 0)
	MovementLoopAddLocation(NPC, 900.95, -22.3, -112.46, 10, 0)
	MovementLoopAddLocation(NPC, 894.14, -22.45, -129.32, 10, 0)
	MovementLoopAddLocation(NPC, 894.41, -22.58, -136.36, 10, 0)
	MovementLoopAddLocation(NPC, 901.64, -24.98, -141.93, 10, 0)
	MovementLoopAddLocation(NPC, 905.65, -24.95, -146.85, 10, 0)
	MovementLoopAddLocation(NPC, 893.38, -24.92, -152.98, 10, 0)
	MovementLoopAddLocation(NPC, 881.49, -24.86, -150.12, 10, 0)
	MovementLoopAddLocation(NPC, 866.23, -22.49, -152.28, 10, 0)
	MovementLoopAddLocation(NPC, 854.64, -24.25, -152.47, 10, 0)
	MovementLoopAddLocation(NPC, 853.7, -24.19, -147.92, 10, 0)
	MovementLoopAddLocation(NPC, 847.94, -22.35, -147.01, 10, 0)
	MovementLoopAddLocation(NPC, 844.83, -22.51, -143.63, 10, 0)
	MovementLoopAddLocation(NPC, 836.61, -20.93, -139.23, 10, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end