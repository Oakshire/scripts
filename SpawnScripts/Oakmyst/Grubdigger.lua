--[[
    Script Name    : SpawnScripts/Oakmyst/Grubdigger.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.15 04:01:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 981.7, 11.74, -314.07, 2, 0)
	MovementLoopAddLocation(NPC, 973.07, 10.43, -307.73, 2, 0)
	MovementLoopAddLocation(NPC, 963.45, 8.1, -299.2, 2, 0)
	MovementLoopAddLocation(NPC, 952.95, 5.51, -290.98, 2, 0)
	MovementLoopAddLocation(NPC, 946.74, 5.25, -297.47, 2, 0)
	MovementLoopAddLocation(NPC, 945.27, 2.58, -328.88, 2, 0)
	MovementLoopAddLocation(NPC, 935.3, 2.28, -346.2, 2, 0)
	MovementLoopAddLocation(NPC, 930.37, 2.39, -356.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 925.92, 2.84, -357.82, 2, 0)
	MovementLoopAddLocation(NPC, 936.74, 2.26, -353.3, 2, 0)
	MovementLoopAddLocation(NPC, 939.19, 2.23, -344.98, 2, 0)
	MovementLoopAddLocation(NPC, 933.34, 3.09, -331.77, 2, 0)
	MovementLoopAddLocation(NPC, 923.92, 2.37, -325.16, 2, 0)
	MovementLoopAddLocation(NPC, 900.74, 2.26, -325.41, 2, 0)
	MovementLoopAddLocation(NPC, 867.16, 1.9, -331.14, 2, 0)
	MovementLoopAddLocation(NPC, 845.54, 4.6, -322.29, 2, 0)
	MovementLoopAddLocation(NPC, 827.66, 7.41, -302.82, 2, 0)
	MovementLoopAddLocation(NPC, 825.49, 5.18, -279.62, 2, 0)
	MovementLoopAddLocation(NPC, 831.51, 4.66, -267.01, 2, 0)
	MovementLoopAddLocation(NPC, 858.56, 2.09, -245.9, 2, 0)
	MovementLoopAddLocation(NPC, 888.63, 0.93, -243.63, 2, 0)
	MovementLoopAddLocation(NPC, 899.33, 3.17, -221.72, 2, 0)
	MovementLoopAddLocation(NPC, 910.05, 3.09, -218.36, 2, 0)
	MovementLoopAddLocation(NPC, 931.44, 2.26, -239.58, 2, 0)
	MovementLoopAddLocation(NPC, 925.76, 1.99, -269.96, 2, 0)
	MovementLoopAddLocation(NPC, 941.04, 2.42, -279.51, 2, 0)
	MovementLoopAddLocation(NPC, 963.21, 8.71, -291.29, 2, 0)
	MovementLoopAddLocation(NPC, 974.6, 12.89, -278.93, 2, 0)
	MovementLoopAddLocation(NPC, 987.07, 12.66, -268.55, 2, 0)
	MovementLoopAddLocation(NPC, 1000.76, 12.84, -261.14, 2, 0, "Action")

end

function Action(NPC,Spawn)
    Despawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end