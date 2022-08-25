--[[
    Script Name    : SpawnScripts/Baubbleshire/harborpincher.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.24 04:08:43
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
    if GetSpawnLocationID(NPC)==133774185 then
	MovementLoopAddLocation(NPC, 979.67, -24.48, -423.25, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 984.12, -25.29, -425, 2,  math.random(6,20))
	MovementLoopAddLocation(NPC, 991.85, -25.39, -422.16, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 988.81, -25.77, -425.31, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 979.04, -23.28, -417.86, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 975.33, -23.69, -421.63, 2, math.random(6,20))
    elseif GetSpawnLocationID(NPC)==133774184 then
    MovementLoopAddLocation(NPC, 977.46, -25.1, -441.85, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 980.26, -25.22, -441.31, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 976.75, -24.75, -444.56, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 971.27, -24.91, -440.49, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 976.69, -25.29, -434.89, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 978.51, -25.52, -437.18, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 974.04, -23.71, -450.26, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 976.83, -24.7, -444.77, 2, math.random(6,20))
    elseif GetSpawnLocationID(NPC)==133774183 then
	MovementLoopAddLocation(NPC, 993.4, -25.42, -453.61, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 996.71, -26.48, -445.75, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 998.75, -28.12, -440.48, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 992.53, -26.85, -441.89, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 994.68, -25.46, -452.41, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 997.21, -25.57, -453.27, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 991.27, -25.32, -452.04, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 989.3, -24.7, -463.03, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 989.32, -24.57, -474.3, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 996.01, -25.16, -463.31, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 991.58, -25.01, -462.71, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 991.24, -25.2, -458.4, 2, math.random(6,20))
end
end

