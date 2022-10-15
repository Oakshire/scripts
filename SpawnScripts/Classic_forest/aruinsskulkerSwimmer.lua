--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulkerSwimmer.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.15 03:10:33
    Script Purpose : 
                   : 
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
	MovementLoopAddLocation(NPC, 1037.24, -24.83, -733.79, 2, 0)
	MovementLoopAddLocation(NPC, 1035.23, -25.26, -727.73, 2, 0)
	MovementLoopAddLocation(NPC, 1035.55, -25.47, -724.39, 2, 15)
	MovementLoopAddLocation(NPC, 1036.12, -25.52, -723.5, 2, 0)
	MovementLoopAddLocation(NPC, 1036.4, -25.46, -724.52, 2, 0)
	MovementLoopAddLocation(NPC, 1035.65, -25.01, -731.6, 2, 0)
	MovementLoopAddLocation(NPC, 1037.01, -24.77, -735.03, 2, 0)
	MovementLoopAddLocation(NPC, 1043.98, -24.6, -734.9, 2, 15)
	MovementLoopAddLocation(NPC, 1049.38, -24.62, -730.51, 2, 0)
	MovementLoopAddLocation(NPC, 1057.37, -24.84, -724.94, 2, 0)
	MovementLoopAddLocation(NPC, 1066.82, -25.08, -722.17, 2, 0)
	MovementLoopAddLocation(NPC, 1075.97, -25.11, -724.01, 2, 15)
	MovementLoopAddLocation(NPC, 1080.54, -24.88, -717.87, 2, 0)
	MovementLoopAddLocation(NPC, 1083.76, -24.83, -710.87, 2, 0)
	MovementLoopAddLocation(NPC, 1091.62, -24.51, -704.87, 2, 0)
	MovementLoopAddLocation(NPC, 1093.98, -24.07, -703.38, 2, 0)
	MovementLoopAddLocation(NPC, 1099.49, -22.64, -706.91, 2, 0)
	MovementLoopAddLocation(NPC, 1100.57, -21.48, -714.32, 2, 0)
	MovementLoopAddLocation(NPC, 1101.52, -20.9, -713.68, 2, 15)
	MovementLoopAddLocation(NPC, 1105.31, -18.83, -711.79, 2, 0)
	MovementLoopAddLocation(NPC, 1105.31, -18.83, -711.79, 2, 15)
	MovementLoopAddLocation(NPC, 1106.07, -18.64, -710.4, 2, 0)
	MovementLoopAddLocation(NPC, 1102.01, -21.49, -706.23, 2, 0)
	MovementLoopAddLocation(NPC, 1096.89, -23.73, -707.18, 2, 0)
	MovementLoopAddLocation(NPC, 1095.16, -24.03, -707.91, 2, 0)
	MovementLoopAddLocation(NPC, 1085.14, -24.7, -711.23, 2, 0)
	MovementLoopAddLocation(NPC, 1082.19, -24.77, -715.79, 2, 0)
	MovementLoopAddLocation(NPC, 1072.61, -25.28, -718.29, 2, 0)
	MovementLoopAddLocation(NPC, 1067.44, -25.26, -719.92, 2, 15)
	MovementLoopAddLocation(NPC, 1061.51, -24.85, -723.46, 2, 0)
	MovementLoopAddLocation(NPC, 1055.78, -25.4, -720.66, 2, 0)
	MovementLoopAddLocation(NPC, 1048.99, -25.43, -722.11, 2, 0)
	MovementLoopAddLocation(NPC, 1043.25, -25.36, -720.85, 2, 0)
	MovementLoopAddLocation(NPC, 1036.89, -25.23, -719.75, 2, 0)
	MovementLoopAddLocation(NPC, 1031.45, -25.23, -729.75, 2, 15)
end


