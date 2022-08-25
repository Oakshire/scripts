--[[
	Script Name	: SpawnScripts/Baubbleshire/aduck1.lua
	Script Purpose	: a duck
	Script Author	: Scatman
	Script Date	: 2009.05.11
	Script Notes	: 
--]]


--[[ OLD
function spawn(NPC)
	MovementLoopAddLocation(NPC, 884.95, -16.29, -517.31, 3, 0)
	MovementLoopAddLocation(NPC, 886.49, -16.56, -511.8, 3, 0)
	MovementLoopAddLocation(NPC, 893.66, -17.41, -500.2, 3, 0)
	MovementLoopAddLocation(NPC, 893.51, -17.7, -496.18, 3, 0)
	MovementLoopAddLocation(NPC, 883.13, -18.43, -483.9, 3, 0)
	MovementLoopAddLocation(NPC, 882.44, -19.07, -473.49, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 884.19, -19.25, -468.98, 3, 0)
	MovementLoopAddLocation(NPC, 890.28, -19.16, -463.74, 3, 0)
	MovementLoopAddLocation(NPC, 892.22, -18.87, -457.62, 3, 0)
	MovementLoopAddLocation(NPC, 870.25, -18.65, -443.54, 3, 0)
	MovementLoopAddLocation(NPC, 863.65, -18.82, -447.37, 3, 0)
	MovementLoopAddLocation(NPC, 856.23, -19.49, -457.42, 3, 0)
	MovementLoopAddLocation(NPC, 864.64, -19.07, -478.05, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 864.75, -18.1, -486.71, 3, 0)
	MovementLoopAddLocation(NPC, 870.82, -17.82, -493.26, 3, 0)
	MovementLoopAddLocation(NPC, 884.55, -15.57, -527.9, 3, 0)
	MovementLoopAddLocation(NPC, 889.13, -15.57, -526.2, 3, 0)
end
--]]

function spawn(NPC)
waypoints(NPC)
end

function waypoints(NPC)
        if GetSpawnLocationID(NPC)== 133774180 then
	MovementLoopAddLocation(NPC, 868.2, -20.45, -430.89, 1, 5)
	MovementLoopAddLocation(NPC, 865.86, -20.43, -430.42, 1, 0)
	MovementLoopAddLocation(NPC, 861.45, -20.43, -429.24, 1, 0)
	MovementLoopAddLocation(NPC, 858.47, -20.43, -425.89, 1, 0)
	MovementLoopAddLocation(NPC, 856.98, -20.43, -423.17, 1, 15)
	MovementLoopAddLocation(NPC, 849.54, -20.43, -425.78, 1, 15)
	MovementLoopAddLocation(NPC, 849.57, -20.43, -428.39, 1, 0)
	MovementLoopAddLocation(NPC, 854.67, -20.43, -433.65, 1, 15)
	MovementLoopAddLocation(NPC, 852.87, -20.43, -443.7, 1, 0)
	MovementLoopAddLocation(NPC, 853.93, -20.43, -448.05, 1, 15)
	MovementLoopAddLocation(NPC, 856.33, -20.43, -450.62, 1, 0)
	MovementLoopAddLocation(NPC, 861.19, -20.44, -455.52, 1, 0)
	MovementLoopAddLocation(NPC, 866.95, -20.44, -456.26, 1, 0)
	MovementLoopAddLocation(NPC, 870.48, -20.44, -455.68, 1, 0)
	MovementLoopAddLocation(NPC, 880.92, -20.44, -458.35, 1, 15)
	MovementLoopAddLocation(NPC, 873.16, -20.44, -462.93, 1, 15)
	MovementLoopAddLocation(NPC, 877.34, -20.44, -466.91, 1, 15)
	MovementLoopAddLocation(NPC, 879.54, -20.44, -459.06, 1, 15)
	MovementLoopAddLocation(NPC, 874.92, -20.44, -468.62, 1, 0)
	MovementLoopAddLocation(NPC, 874.89, -20.44, -473.5, 1, 0)
	MovementLoopAddLocation(NPC, 880.06, -20.44, -485.64, 1, 0)
	MovementLoopAddLocation(NPC, 886.21, -20.44, -495.94, 1, 15)
	MovementLoopAddLocation(NPC, 880.34, -20.44, -493.62, 1, 15)
	MovementLoopAddLocation(NPC, 885.88, -20.44, -501.03, 1, 15)
	MovementLoopAddLocation(NPC, 880.05, -20.44, -502.45, 1, 0)
	MovementLoopAddLocation(NPC, 869.87, -20.44, -503.23, 1, 0)
	MovementLoopAddLocation(NPC, 868.17, -20.44, -504.03, 1, 0)
	MovementLoopAddLocation(NPC, 865.87, -20.44, -501.01, 1, 0)
	MovementLoopAddLocation(NPC, 863.38, -20.44, -495.34, 1, 15)
	MovementLoopAddLocation(NPC, 853.42, -20.44, -498.8, 1, 15)
	MovementLoopAddLocation(NPC, 856.71, -20.44, -499.46, 1, 15)
	MovementLoopAddLocation(NPC, 850.05, -20.44, -495.61, 1, 0)
	MovementLoopAddLocation(NPC, 846.04, -20.44, -493.3, 1, 0)
	MovementLoopAddLocation(NPC, 841.12, -20.44, -497.31, 1, 15)
	MovementLoopAddLocation(NPC, 846.16, -20.44, -492.71, 1, 15)
	MovementLoopAddLocation(NPC, 843.86, -20.44, -488.2, 1, 0)
	MovementLoopAddLocation(NPC, 846.62, -20.44, -481.99, 1, 0)
	MovementLoopAddLocation(NPC, 850.85, -20.44, -480.63, 1, 15)
	MovementLoopAddLocation(NPC, 851.28, -20.44, -475.23, 1, 15)
	MovementLoopAddLocation(NPC, 859.07, -20.44, -474.98, 1, 0)
	MovementLoopAddLocation(NPC, 868.37, -20.43, -470.49, 1, 0)
	MovementLoopAddLocation(NPC, 876.95, -20.43, -470.1, 1, 15)
	MovementLoopAddLocation(NPC, 873.74, -20.43, -465.66, 1, 15)
	MovementLoopAddLocation(NPC, 874.33, -20.43, -456.86, 1, 0)
	MovementLoopAddLocation(NPC, 870.53, -20.43, -454.82, 1, 0)
	MovementLoopAddLocation(NPC, 862.51, -20.43, -455.57, 1, 0)
	MovementLoopAddLocation(NPC, 855.04, -20.43, -450.03, 1, 0)
	MovementLoopAddLocation(NPC, 851.29, -20.43, -447, 1, 0)
	MovementLoopAddLocation(NPC, 850.66, -20.43, -442.74, 1, 0)
	MovementLoopAddLocation(NPC, 850.18, -20.43, -437.29, 1, 15)
	MovementLoopAddLocation(NPC, 849.34, -20.43, -439.02, 1, 0)
	MovementLoopAddLocation(NPC, 853.09, -20.43, -442.85, 1, 0)
	MovementLoopAddLocation(NPC, 854.44, -20.43, -440.24, 1, 15)
	MovementLoopAddLocation(NPC, 856.93, -20.43, -436.07, 1, 0)
	MovementLoopAddLocation(NPC, 860.37, -20.43, -433.53, 1, 0)
	MovementLoopAddLocation(NPC, 862.39, -20.43, -432.03, 1, 0)
	MovementLoopAddLocation(NPC, 869.13, -20.25, -431.37, 1, 15)
end
end



function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end