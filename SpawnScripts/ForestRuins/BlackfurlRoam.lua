--[[
    Script Name    : SpawnScripts/ForestRuins/BlackfurlRoam.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.27 12:02:49
    Script Purpose : roaming blackfurl npcs in Forest Ruins
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==423700 then
    MovementLoopAddLocation(NPC, 1007.01, -19, -656.22, 2, 0)
	MovementLoopAddLocation(NPC, 1021.25, -19.01, -653.19, 2, 0)
	MovementLoopAddLocation(NPC, 1037.16, -19.01, -642.32, 2, 0)
	MovementLoopAddLocation(NPC, 1047.28, -18.55, -632.31, 2, 0)
	MovementLoopAddLocation(NPC, 1059.49, -19, -638.33, 2, 0)
	MovementLoopAddLocation(NPC, 1051.96, -19.01, -646.91, 2, 0)
	MovementLoopAddLocation(NPC, 1034.9, -18.9, -647.19, 2, 0)
	MovementLoopAddLocation(NPC, 1026.67, -19.02, -649.3, 2, 0)
	MovementLoopAddLocation(NPC, 1018.72, -19, -661.81, 2, 0)
	MovementLoopAddLocation(NPC, 1004.19, -18.97, -664.32, 2, 0)
	
	elseif GetSpawnLocationID(NPC)==423724 then
	 MovementLoopAddLocation(NPC, 1034.15, -18.95, -646.41, 2, 0)
	MovementLoopAddLocation(NPC, 1042.21, -19.01, -650.2, 2, 0)
	MovementLoopAddLocation(NPC, 1054.71, -10.25, -671.63, 2, 0)
	MovementLoopAddLocation(NPC, 1066.26, -10.25, -692.56, 2, 0)
	MovementLoopAddLocation(NPC, 1090.33, -10.25, -683.35, 2, 0)
	MovementLoopAddLocation(NPC, 1092.43, -10.25, -678.41, 2, 0)
	MovementLoopAddLocation(NPC, 1084.4, -10.25, -662.09, 2, 0)
	MovementLoopAddLocation(NPC, 1057.18, -10.25, -674.16, 2, 0)
	MovementLoopAddLocation(NPC, 1029.43, -10.25, -689.97, 2, 0)
	MovementLoopAddLocation(NPC, 1029.99, -10.25, -703.85, 2, 0)
	MovementLoopAddLocation(NPC, 1033.64, -10.25, -697.44, 2, 0)
	MovementLoopAddLocation(NPC, 1033.71, -10.25, -690.65, 2, 0)
	MovementLoopAddLocation(NPC, 1056.91, -10.25, -680.58, 2, 0)
	MovementLoopAddLocation(NPC, 1047.65, -17.07, -657.43, 2, 0)
	MovementLoopAddLocation(NPC, 1033.3, -18.93, -647.57, 2, 0)
	MovementLoopAddLocation(NPC, 1027.5, -19.02, -647.85, 2, 0)
	MovementLoopAddLocation(NPC, 1029.83, -19, -661.88, 2, 0)
	MovementLoopAddLocation(NPC, 1025.92, -19, -663.42, 2, 0)
	MovementLoopAddLocation(NPC, 1027.17, -19.01, -661.32, 2, 0)
	MovementLoopAddLocation(NPC, 1030.92, -19.01, -655.46, 2, 0)
	    
	    elseif GetSpawnLocationID(NPC)==423845 then
	MovementLoopAddLocation(NPC, 1009.77, -19, -660.23, 2, 0)
	MovementLoopAddLocation(NPC, 1023.85, -10.25, -691.87, 2, 0)
	MovementLoopAddLocation(NPC, 1021.66, -10.24, -698.6, 2, 0)
	MovementLoopAddLocation(NPC, 1053.16, -10.25, -679.63, 2, 0)
	MovementLoopAddLocation(NPC, 1060.81, -10.25, -698.85, 2, 0)
	MovementLoopAddLocation(NPC, 1053.88, -10.25, -710.22, 2, 0)
	MovementLoopAddLocation(NPC, 1040.28, -10.28, -708.39, 2, 0)
	MovementLoopAddLocation(NPC, 1028.44, -10.25, -695.62, 2, 0)
	MovementLoopAddLocation(NPC, 1003.94, -19, -651.56, 2, 0)
	
	else if GetSpawnLocationID(NPC)==423873 then
	MovementLoopAddLocation(NPC, 1052.64, -10.25, -673.64, 2, 0)
	MovementLoopAddLocation(NPC, 1061.87, -10.25, -669.74, 2, 0)
	MovementLoopAddLocation(NPC, 1081.62, -10.25, -660.69, 2, 0)
	MovementLoopAddLocation(NPC, 1083.14, -10.25, -663.31, 2, 0)
	MovementLoopAddLocation(NPC, 1072.52, -10.25, -665.4, 2, 0)
	MovementLoopAddLocation(NPC, 1042.76, -10.25, -683.97, 2, 0)
	MovementLoopAddLocation(NPC, 1028.47, -10.25, -688.37, 2, 0)
	MovementLoopAddLocation(NPC, 1014.19, -19, -665.39, 2, 0)
	MovementLoopAddLocation(NPC, 1028.2, -10.25, -692.94, 2, 0)
	MovementLoopAddLocation(NPC, 1053.2, -10.25, -682.33, 2, 0)

elseif GetSpawnLocationID(NPC)==423914 then
MovementLoopAddLocation(NPC, 1088.47, -10.25, -740.25, 2, 0)
	MovementLoopAddLocation(NPC, 1087.22, -6.78, -750.7, 2, 0)
	MovementLoopAddLocation(NPC, 1082.43, -4.3, -757.92, 2, 0)
	MovementLoopAddLocation(NPC, 1076.1, -4.31, -764.16, 2, 0)
	MovementLoopAddLocation(NPC, 1060.63, -7.81, -761.64, 2, 0)
	MovementLoopAddLocation(NPC, 1051.87, -10.25, -756.02, 2, 0)
	MovementLoopAddLocation(NPC, 1035.87, -10.25, -766.81, 2, 0)
	MovementLoopAddLocation(NPC, 1035.2, -10.25, -769.2, 2, 0)
	MovementLoopAddLocation(NPC, 1044.42, -10.25, -766.64, 2, 0)
	MovementLoopAddLocation(NPC, 1055.52, -10.25, -771.04, 2, 0)
	MovementLoopAddLocation(NPC, 1061.71, -10.25, -789.18, 2, 0)
	MovementLoopAddLocation(NPC, 1055.6, -10.25, -773.24, 2, 0)
	MovementLoopAddLocation(NPC, 1048.88, -10.25, -762.74, 2, 0)
	MovementLoopAddLocation(NPC, 1056.74, -10.25, -749.31, 2, 0)
	MovementLoopAddLocation(NPC, 1067.93, -10.25, -756.21, 2, 0)
	MovementLoopAddLocation(NPC, 1076.74, -10.25, -753.96, 2, 0)
	MovementLoopAddLocation(NPC, 1081.52, -10.25, -739.86, 2, 0)
	MovementLoopAddLocation(NPC, 1092.52, -10.25, -733.38, 2, 0)
	MovementLoopAddLocation(NPC, 1096.72, -10.25, -741.8, 2, 0)
	MovementLoopAddLocation(NPC, 1090.46, -10.25, -738.39, 2, 0)
	
elseif GetSpawnLocationID(NPC)==133772853 then
	MovementLoopAddLocation(NPC, 1048.08, -10.25, -754.25, 2, 0)
	MovementLoopAddLocation(NPC, 1055.14, -10.25, -746.44, 2, 0)
	MovementLoopAddLocation(NPC, 1062.2, -10.25, -732.9, 2, 0)
	MovementLoopAddLocation(NPC, 1054.33, -10.25, -713.42, 2, 0)
	MovementLoopAddLocation(NPC, 1062.46, -10.25, -701.68, 2, 0)
	MovementLoopAddLocation(NPC, 1059.10, -10.25, -699.37, 2, 0)
	MovementLoopAddLocation(NPC, 1060.84, -10.25, -683.03, 2, 0)
	MovementLoopAddLocation(NPC, 1058.09, -10.25, -693.17, 2, 0)
	MovementLoopAddLocation(NPC, 1054.35, -10.25, -708.27, 2, 0)
	MovementLoopAddLocation(NPC, 1062.99, -10.25, -732.37, 2, 0)
	MovementLoopAddLocation(NPC, 1069.88, -10.25, -730.86, 2, 0)
	MovementLoopAddLocation(NPC, 1078.19, -10.25, -735.35, 2, 0)
	MovementLoopAddLocation(NPC, 1080.33, -10.25, -749.76, 2, 0)
	MovementLoopAddLocation(NPC, 1074.08, -10.25, -756.78, 2, 0)
	MovementLoopAddLocation(NPC, 1062.37, -10.25, -755.42, 2, 0)
	MovementLoopAddLocation(NPC, 1057.24, -10.25, -751.94, 2, 0)
	MovementLoopAddLocation(NPC, 1051.2, -10.25, -760.96, 2, 0)

end

end
end

