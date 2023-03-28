--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawrotstufferPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.27 08:03:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
function waypoints(NPC)
	MovementLoopAddLocation(NPC, -168.82, -15.57, 564.58, 2, 0)
	MovementLoopAddLocation(NPC, -171.54, -15.79, 564.62, 2, 0)
	MovementLoopAddLocation(NPC, -174.44, -15.98, 565.29, 2, 0)
	MovementLoopAddLocation(NPC, -175.56, -16.35, 567.4, 2, 0)
	MovementLoopAddLocation(NPC, -175.56, -16.35, 567.4, 2, 0)
	MovementLoopAddLocation(NPC, -175.65, -16.32, 566.96, 2, 0)
	MovementLoopAddLocation(NPC, -177.38, -16.55, 564.96, 2, 0)
	MovementLoopAddLocation(NPC, -180.43, -16.36, 561.54, 2, 0)
	MovementLoopAddLocation(NPC, -180.22, -16.43, 560.11, 2, 3)
	MovementLoopAddLocation(NPC, -180.22, -16.43, 560.11, 2, 0)
	MovementLoopAddLocation(NPC, -180.37, -16.38, 561.11, 2, 0)
	MovementLoopAddLocation(NPC, -181.36, -16.36, 562.6, 2, 0)
	MovementLoopAddLocation(NPC, -184.91, -16.32, 562.86, 2, 3)
	MovementLoopAddLocation(NPC, -184.91, -16.32, 562.86, 2, 0)
	MovementLoopAddLocation(NPC, -182.12, -16.37, 563.52, 2, 0)
	MovementLoopAddLocation(NPC, -180.97, -16.55, 566.06, 2, 0)
	MovementLoopAddLocation(NPC, -182.73, -16.58, 567.85, 2, 3)
	MovementLoopAddLocation(NPC, -182.73, -16.58, 567.85, 2, 0)
	MovementLoopAddLocation(NPC, -183, -16.58, 566.65, 2, 0)
	MovementLoopAddLocation(NPC, -181.92, -16.41, 563.88, 2, 0)
	MovementLoopAddLocation(NPC, -179.25, -16.47, 561.29, 2, 0)
	MovementLoopAddLocation(NPC, -178.68, -16.43, 560.21, 2, 3)
	MovementLoopAddLocation(NPC, -178.68, -16.43, 560.21, 2, 0)
	MovementLoopAddLocation(NPC, -178.94, -16.56, 563.32, 2, 0)
	MovementLoopAddLocation(NPC, -177.35, -16.55, 566.82, 2, 3)
	MovementLoopAddLocation(NPC, -177.35, -16.55, 566.82, 2, 0)
	MovementLoopAddLocation(NPC, -176.23, -16.42, 565.14, 2, 0)
	MovementLoopAddLocation(NPC, -174.27, -15.81, 564.12, 2, 0)
	MovementLoopAddLocation(NPC, -168.82, -15.57, 564.58, 2, 3)
end

