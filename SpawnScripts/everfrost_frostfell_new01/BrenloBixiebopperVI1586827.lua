--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/BrenloBixiebopperVI1586827.lua
	Script Purpose	:	Waypoint Path for BrenloBixiebopperVI1586827.lua
	Script Author	:	Rylec
	Script Date	:	11-28-2019 07:54:09 
	Script Notes	:	Locations collected from Live. Brenlo on Live will force you to fall down 
                                when he hits you (Animation 11767), but the animation breaks when the player
                                makes any movement which happens a lot on ice. Jab and I tried to fix it with
                                a ServerControlFlag to take control away from the player so the animation 
                                wouldn't break, and it kinda works, but the animation is not triggered. Someone
                                would probably have to check packet logs to figure this one out.

                                Another issue is that on Live the Say is triggered by one Proximity check and the 
                                fall animation by another much closer one. Currently the Emu only seems to 
                                support one Proximity call. If we could get the animation to work I would use
                                the Proximity call to trigger the animation and just have the Say go off at
                                random time intervals. That would replicate Live well enough.
--]]

function spawn(NPC)
        SetPlayerProximityFunction(NPC, 3, "InRange")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
        Say(NPC, "I don't have time to chat! I am practicing!")  --text created by Rylec, not on Live
end

function respawn(NPC)
end

function InRange(NPC, Spawn)
        Say(NPC, "Hey! Get outta my way! I am practicing for the all Halfling Olympics!")
        --SetServerControlFlag(Spawn, 4, 64, 1) 
        PlayAnimation(Spawn, 11767)
        --AddTimer(NPC, 4000, "Control", 1, Spawn)
end

--function Control(NPC, Spawn)
--        SetServerControlFlag(Spawn, 4, 64, 0)
--end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 261.28, -38.97, -1442.42, 2, 0)
	MovementLoopAddLocation(NPC, 270.57, -38.97, -1435.58, 2, 0)
	MovementLoopAddLocation(NPC, 271.36, -38.97, -1431.72, 2, 0)
	MovementLoopAddLocation(NPC, 269.68, -38.97, -1428.04, 2, 0)
	MovementLoopAddLocation(NPC, 265.78, -38.97, -1425.53, 2, 0)
	MovementLoopAddLocation(NPC, 261.55, -38.97, -1425.21, 2, 0)
	MovementLoopAddLocation(NPC, 257.55, -38.97, -1428.4, 2, 0)
	MovementLoopAddLocation(NPC, 257.51, -38.97, -1431.48, 2, 0)
	MovementLoopAddLocation(NPC, 260.52, -38.97, -1436.22, 2, 0)
	MovementLoopAddLocation(NPC, 263.14, -38.97, -1439.04, 2, 0)
	MovementLoopAddLocation(NPC, 271.4, -38.97, -1443.46, 2, 0)
	MovementLoopAddLocation(NPC, 273.58, -38.97, -1446.98, 2, 0)
	MovementLoopAddLocation(NPC, 272.55, -38.97, -1450.1, 2, 0)
	MovementLoopAddLocation(NPC, 269.43, -38.97, -1452.15, 2, 0)
	MovementLoopAddLocation(NPC, 264.32, -38.97, -1451.91, 2, 0)
	MovementLoopAddLocation(NPC, 260.65, -38.97, -1449.84, 2, 0)
	MovementLoopAddLocation(NPC, 259.18, -38.97, -1447.18, 2, 0)
end


