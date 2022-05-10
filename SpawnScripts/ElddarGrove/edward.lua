--[[
	Script Name		:	edward.lua
	Script Purpose	:	Waypoint Path for edward.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:41 PM
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
	MovementLoopAddLocation(NPC, 711.38, -17.06, -318.18, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, 711.38, -17.06, -318.18, 2, 1,"Doors")
	MovementLoopAddLocation(NPC, 722.35, -17.08, -322.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 718.1, -17.11, -331.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 702.47, -17.38, -325.88, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 691.47, -18.94, -279.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 660.2, -19.01, -270.46, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.47, -21.25, -289.71, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.19, -21.73, -304.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 645.24, -13.37, -359.65, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 668.52, -11.63, -366.57, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 701.69, -15.2, -377.6, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 703.02, -14.13, -401.34, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 704.74, -15.76, -418.69, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 703.02, -14.13, -401.34, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 701.69, -15.2, -377.6, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 668.52, -11.63, -366.57, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 645.24, -13.37, -359.65, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.19, -21.73, -304.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.47, -21.25, -289.71, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 660.2, -19.01, -270.46, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 691.47, -18.94, -279.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 702.47, -17.38, -325.88, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 718.1, -17.11, -331.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 721.84, -17.08, -323.21, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 721.84, -17.08, -323.21, 2, 2,"Doors")
	MovementLoopAddLocation(NPC, 711.38, -17.06, -318.18, 2, math.random(10,20))

end

function Doors(NPC,Spawn)
   local widget = GetSpawn(NPC, 207099) 
        UseWidget(widget)
AddTimer(NPC,50,"Doors2",1,Spawn)
end

function Doors2(NPC,Spawn)
    local widget2 = GetSpawn(NPC, 2070100) 
       UseWidget(widget2)
    end
