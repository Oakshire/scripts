--[[
    Script Name    : SpawnScripts/Classic_forest/aforgottensentinel.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.14 03:10:21
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

function spawn(NPC)
AddTimer(NPC,4000,"ResetAnimation",1)
AddTimer(NPC,4100,"waypoints",1)
end

function ResetAnimation(NPC)
 SpawnSet(NPC,"mood_state",0)
end   

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
    if GetSpawnLocationID(NPC)==133778192 then
	MovementLoopAddLocation(NPC, 1038.42, -10.25, -767.9, 1, 15)
	MovementLoopAddLocation(NPC, 1036.4, -10.25, -767.6, 1, 0)
	MovementLoopAddLocation(NPC, 1039.28, -10.25, -766.08, 1, 0)
	MovementLoopAddLocation(NPC, 1043.12, -10.25, -760.34, 1, 0)
	MovementLoopAddLocation(NPC, 1049.57, -10.25, -750.99, 1, 0)
	MovementLoopAddLocation(NPC, 1055.75, -10.25, -747.26, 1, 0)
	MovementLoopAddLocation(NPC, 1056.49, -10.25, -740.6, 1, 0)
	MovementLoopAddLocation(NPC, 1060.34, -10.25, -734.85, 1, 0)
	MovementLoopAddLocation(NPC, 1062.27, -10.25, -733.29, 1, 0)
	MovementLoopAddLocation(NPC, 1067.29, -10.25, -731.55, 1, 0)
	MovementLoopAddLocation(NPC, 1072.95, -10.25, -732.82, 1, 0)
	MovementLoopAddLocation(NPC, 1078.24, -10.25, -735.16, 1, 0)
	MovementLoopAddLocation(NPC, 1080.46, -10.25, -742.61, 1, 0)
	MovementLoopAddLocation(NPC, 1081.42, -10.25, -746.13, 1, 0)
	MovementLoopAddLocation(NPC, 1077.5, -10.25, -752.41, 1, 0)
	MovementLoopAddLocation(NPC, 1071.22, -10.25, -756.17, 1, 0)
	MovementLoopAddLocation(NPC, 1062.28, -10.25, -753.94, 1, 0)
    MovementLoopAddLocation(NPC, 1057.32, -10.25, -751.3, 1, 0)
	MovementLoopAddLocation(NPC, 1053.64, -10.25, -756.54, 1, 0)
	MovementLoopAddLocation(NPC, 1049.08, -10.25, -759.92, 1, 0)
	MovementLoopAddLocation(NPC, 1043.26, -10.25, -765.08, 1, 0)
	MovementLoopAddLocation(NPC, 1038.53, -10.25, -767.31, 1, 0)
	MovementLoopAddLocation(NPC, 1036.32, -10.25, -767.83, 1, 0)
	MovementLoopAddLocation(NPC, 1038.53, -10.25, -767.31, 1, 15)
	MovementLoopAddLocation(NPC, 1043.26, -10.25, -765.08, 1, 0)
	MovementLoopAddLocation(NPC, 1049.08, -10.25, -759.92, 1, 0)
	MovementLoopAddLocation(NPC, 1053.64, -10.25, -756.54, 1, 0)
	MovementLoopAddLocation(NPC, 1054.24, -10.25, -753.06, 1, 0)
	MovementLoopAddLocation(NPC, 1057.32, -10.25, -751.3, 1, 0)
	MovementLoopAddLocation(NPC, 1062.28, -10.25, -753.94, 1, 0)
	MovementLoopAddLocation(NPC, 1071.22, -10.25, -756.17, 1, 0)
	MovementLoopAddLocation(NPC, 1077.5, -10.25, -752.41, 1, 0)
	MovementLoopAddLocation(NPC, 1081.42, -10.25, -746.13, 1, 0)
	MovementLoopAddLocation(NPC, 1080.46, -10.25, -742.61, 1, 0)
	MovementLoopAddLocation(NPC, 1078.24, -10.25, -735.16, 1, 0)
	MovementLoopAddLocation(NPC, 1072.95, -10.25, -732.82, 1, 0)
	MovementLoopAddLocation(NPC, 1067.29, -10.25, -731.55, 1, 0)
	MovementLoopAddLocation(NPC, 1062.27, -10.25, -733.29, 1, 0)
	MovementLoopAddLocation(NPC, 1060.34, -10.25, -734.85, 1, 0)
	MovementLoopAddLocation(NPC, 1056.49, -10.25, -740.6, 1, 0)
	MovementLoopAddLocation(NPC, 1055.75, -10.25, -747.26, 1, 0)
	MovementLoopAddLocation(NPC, 1049.57, -10.25, -750.99, 1, 0)
	MovementLoopAddLocation(NPC, 1043.12, -10.25, -760.34, 1, 0)
	MovementLoopAddLocation(NPC, 1039.28, -10.25, -766.08, 1, 0)
	MovementLoopAddLocation(NPC, 1036.4, -10.25, -767.6, 1, 0)
	MovementLoopAddLocation(NPC, 1038.42, -10.25, -767.9, 1, 15)
	
    elseif GetSpawnLocationID(NPC)==133778183 then
	
	MovementLoopAddLocation(NPC, 1089.45, -10.25, -731.85, 1, 0)
	MovementLoopAddLocation(NPC, 1092.95, -10.25, -737.84, 1, 0)
	MovementLoopAddLocation(NPC, 1097.66, -10.25, -745.04, 1, 0)
	MovementLoopAddLocation(NPC, 1099.67, -10.25, -754.15, 1, 0)
	MovementLoopAddLocation(NPC, 1103.12, -10.25, -762.77, 1, 0)
	MovementLoopAddLocation(NPC, 1106.87, -10.25, -771.57, 1, 0)
	MovementLoopAddLocation(NPC, 1105.73, -10.25, -773.7, 1, 6)
	MovementLoopAddLocation(NPC, 1104.95, -10.25, -769.81, 1, 0)
	MovementLoopAddLocation(NPC, 1102.39, -10.25, -762.45, 1, 0)
	MovementLoopAddLocation(NPC, 1099.58, -10.25, -751.98, 1, 0)
	MovementLoopAddLocation(NPC, 1096.26, -10.25, -742.38, 1, 0)
	MovementLoopAddLocation(NPC, 1088.9, -10.25, -731.06, 1, 15)

    elseif GetSpawnLocationID(NPC)==133778326 then
	
	MovementLoopAddLocation(NPC, 1062.81, -10.25, -790.19, 1, 15)
	MovementLoopAddLocation(NPC, 1057.83, -10.25, -781.93, 1, 0)
	MovementLoopAddLocation(NPC, 1056.38, -10.25, -777.3, 1, 0)
	MovementLoopAddLocation(NPC, 1056.2, -10.25, -773.97, 1, 0)
	MovementLoopAddLocation(NPC, 1056.07, -10.25, -772.4, 1, 0)
	MovementLoopAddLocation(NPC, 1056.07, -10.25, -772.4, 1, 15)
	MovementLoopAddLocation(NPC, 1056.03, -10.25, -775.59, 1, 0)
	MovementLoopAddLocation(NPC, 1056.61, -10.25, -779.35, 1, 0)
	MovementLoopAddLocation(NPC, 1057.36, -10.25, -781.34, 1, 0)
	MovementLoopAddLocation(NPC, 1060.12, -10.25, -786.08, 1, 0)	
end
end

