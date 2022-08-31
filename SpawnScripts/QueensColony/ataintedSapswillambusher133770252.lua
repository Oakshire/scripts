--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillambusher133770252.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillambusher133770252.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:36:28 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -70.54, 2.38, -197.58, 7.5, 3)
	MovementLoopAddLocation(NPC, -66.6, 2.37, -190.15, 7.5, 0)
	MovementLoopAddLocation(NPC, -64.5, 2.28, -184.36, 7.5, 0)
	MovementLoopAddLocation(NPC, -48.62, 2.02, -158.23, 7.5, 0)
	MovementLoopAddLocation(NPC, -54.28, 2.04, -152.77, 7.5, 300)
	

end

--[[function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, -53.65, 2.04, -165.68, 7.5, 0)
	MovementLoopAddLocation(NPC, -53.65, 2.50, -165.68, 7.5, 0)

end]]--