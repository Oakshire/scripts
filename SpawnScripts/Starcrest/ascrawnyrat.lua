--[[
    Script Name    : SpawnScripts/Starcrest/ascrawnyrat.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.01 03:07:39
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==419849 then
	MovementLoopAddLocation(NPC, 821.93, -20.28, 268.92, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 822.98, -20.17, 273.08, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 823.25, -20.26, 276.55, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 824.58, -20.11, 272.89, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 818.8, -20.28, 277.25, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 824.18, -20.25, 276.6, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 824.92, -20.12, 271.2, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 821.8, -20.28, 277.36, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 823.04, -20.26, 271.3, 2,  math.random(0,3))
    elseif GetSpawnLocationID(NPC)==419844 then
	MovementLoopAddLocation(NPC, 780.3, -20.42, 245.33, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 783.82, -20.33, 242.65, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 779.18, -20.42, 241.3, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 770.68, -20.35, 242.67, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 768.99, -20.33, 243.28, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 771.47, -20.36, 241.29, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 774.87, -20.34, 245.51, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 777.19, -20.42, 242.57, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 774.35, -20.39, 244.08, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 776.23, -20.33, 240.27, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 785.63, -20.34, 243.36, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 784.09, -20.41, 246.14, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 780.91, -20.42, 244.21, 2,  math.random(0,3))
    elseif GetSpawnLocationID(NPC)==133773443 then
	MovementLoopAddLocation(NPC, 761.11, -20.04, 240.32, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 764.48, -20.32, 247.27, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 762.09, -20.3, 246.01, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 759.13, -20.1, 241.13, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 752.36, -20.31, 247.01, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 765.13, -20.34, 242.04, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 773.17, -20.11, 238.68, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 783.66, -20.37, 248.86, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 792.58, -20.01, 246.01, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 772.47, -20.11, 238.95, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 763.28, -20.39, 244.69, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 762.51, -20.05, 240.01, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 765.02, -20.36, 245.58, 2,  math.random(0,3))
    elseif GetSpawnLocationID(NPC)==133773444 then
	MovementLoopAddLocation(NPC, 763.48, -20.27, 247.34, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 761.07, -20.25, 245.97, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 768.44, -20.06, 238.02, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 773.12, -20.39, 241.86, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 757.89, -20.32, 245.12, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 748.91, -20.19, 243.12, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 751.56, -20.32, 247.15, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 769.89, -19.97, 238.26, 2,  math.random(0,3))
    elseif GetSpawnLocationID(NPC)==133773445 then
	MovementLoopAddLocation(NPC, 796.47, -20.03, 248.69, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 791.66, -20.32, 250.04, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 804.41, -20.24, 253.63, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 802.08, -20.28, 261.05, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 805.71, -20.23, 262.82, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 802.29, -20.05, 250.49, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 786.88, -20.38, 247.19, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 780.52, -20.37, 248.69, 2,  math.random(0,3))
	MovementLoopAddLocation(NPC, 788.47, -20.32, 243.92, 2, 0)
	MovementLoopAddLocation(NPC, 793.06, -19.95, 245.49, 2, 0)
    elseif GetSpawnLocationID(NPC)==419846 then
	MovementLoopAddLocation(NPC, 799.17, -25.64, 311.55, 2,  math.random(3,8))
	MovementLoopAddLocation(NPC, 799.6, -25.74, 306.74, 2,  math.random(3,8))
	MovementLoopAddLocation(NPC, 802.3, -25.82, 306.67, 2,  math.random(3,8))
	MovementLoopAddLocation(NPC, 800.1, -25.73, 308.46, 2,  math.random(3,8))
	MovementLoopAddLocation(NPC, 801.4, -25.77, 311.65, 2,  math.random(3,8))
	MovementLoopAddLocation(NPC, 798.51, -25.52, 315.21, 2,  math.random(3,8))
	MovementLoopAddLocation(NPC, 799.67, -25.68, 310.77, 2,  math.random(3,8))
end
end

