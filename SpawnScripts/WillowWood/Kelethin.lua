--[[
	Script Name	: SpawnScripts/WillowWood/Kelethin.lua
	Script Purpose	: Kelethin
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]
--[[
function spawn(NPC)
	MovementLoopAddLocation(NPC, 847.87, -22.04, -638.03, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 840.68, -22.38, -629.9, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 849.15, -21.02, -617.52, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 850.59, -20.68, -612.62, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 864.96, -18.61, -608.15, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 867.68, -18.68, -592.61, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 875.56, -16.43, -587.45, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 882.93, -15.27, -597.71, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 876.99, -18.68, -612.57, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 874.73, -20.21, -630.67, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 863.27, -20.74, -641.81, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 844.27, -21.07, -648.19, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 812.66, -21.05, -650.34, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 807.24, -21.08, -633.43, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 809.58, -20.09, -620.97, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 806.92, -20.16, -612.42, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 811.21, -20.29, -598.53, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 820.55, -19.78, -591.13, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 829.5, -19.56, -589.52, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 835.55, -20.79, -603.45, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 831.92, -21.53, -620.7, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 840.55, -22.38, -631.4, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 839.62, -21.67, -644.1, 2, math.random(0, 30))
	MovementLoopAddLocation(NPC, 846.86, -21.44, -646.24, 2, math.random(0, 30))
end
]]--
function spawn(NPC)
OnGrate(NPC)
end

function OnGrate(NPC)
    MoveToLocation(NPC,805.35, -20.97, -636.94, 0.5)
    AddTimer(NPC,2000,"OnGrate")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end