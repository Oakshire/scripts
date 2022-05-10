--[[
	Script Name		:	varna.lua
	Script Purpose	:	Waypoint Path for varna.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:58 PM
	Script Notes	:	Dialogue updated 5.1.2022 Dorbin
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 585.65, -18.22, -411.48, 2, 1)
	MovementLoopAddLocation(NPC, 585.65, -18.22, -411.48, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, 1)
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, math.random(11,12),"EcologyEmote")
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, 1,"Door")
	MovementLoopAddLocation(NPC, 584.56, -18.17, -411.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 617.12, -15.75, -407.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.63, -11.51, -399.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.41, -12.48, -372.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 642.47, -20.05, -313.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.41, -12.48, -372.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.63, -11.51, -399.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 617.12, -15.75, -407.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 584.56, -18.17, -411.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, math.random(0,8))
end


function Door(NPC,Spawn)
   local widget = GetSpawn(NPC, 2070103) 
        UseWidget(widget)
end