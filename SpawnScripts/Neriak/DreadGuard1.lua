--[[
	Script Name		:	SpawnScripts/Neriak/DreadGuard1.lua
	Script Purpose	:	Waypoint Path for Dread Guard 1 Indigo Hollow
	Script Author	:	Cynnar
	Script Date		:	5/6/2018 12:00:00 AM
	Script Notes	:	This is the Dread Guard starting at Ulsurus Outfitters Neriak Indigo Hollow.
--]]

function spawn(NPC)
	SetMount(NPC, 7242)
	SetMountColor(NPC, 65, 52, 44, 58, 59, 151)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function randmount(NPC)
	local choice = math.random(1, 2)
	if choice == 1 then
		
	end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -76.72, 19.22, -13.5, 2, 0)
	MovementLoopAddLocation(NPC, -66.55, 18.88, -4.41, 2, 0)
	MovementLoopAddLocation(NPC, -58.37, 19.55, 9.24, 2, 0)
	MovementLoopAddLocation(NPC, -54.28, 19.31, 22.95, 2, 0)
	MovementLoopAddLocation(NPC, -44.18, 19.48, 21.32, 2, 0)
	MovementLoopAddLocation(NPC, -35.54, 19.76, 16.93, 2, 0)
	MovementLoopAddLocation(NPC, -26.87, 17.32, 9.09, 2, 0)
	MovementLoopAddLocation(NPC, -19.17, 17.32, 10.39, 2, 0)
	MovementLoopAddLocation(NPC, -9.98, 17.3, 11.96, 2, 0)
	MovementLoopAddLocation(NPC, 7.91, 17.3, 2.53, 2, 0)
	MovementLoopAddLocation(NPC, 19.27, 17.06, 6.88, 2, 0)
	MovementLoopAddLocation(NPC, 33.87, 16.95, -5.79, 2, 0)
	MovementLoopAddLocation(NPC, 23.44, 17.31, -27.85, 2, 0)
	MovementLoopAddLocation(NPC, 20.61, 17.32, -38.41, 2, 0)
	MovementLoopAddLocation(NPC, 11.11, 17.19, -44.76, 2, 0)
	MovementLoopAddLocation(NPC, 9.99, 17.25, -60.91, 2, 0)
	MovementLoopAddLocation(NPC, 11.11, 17.19, -44.76, 2, 0)
	MovementLoopAddLocation(NPC, 20.61, 17.32, -38.41, 2, 0)
	MovementLoopAddLocation(NPC, 23.44, 17.31, -27.85, 2, 0)
	MovementLoopAddLocation(NPC, 33.87, 16.95, -5.79, 2, 0)
	MovementLoopAddLocation(NPC, 19.27, 17.06, 6.88, 2, 0)
	MovementLoopAddLocation(NPC, 7.91, 17.3, 2.53, 2, 0)
	MovementLoopAddLocation(NPC, -9.98, 17.3, 11.96, 2, 0)
	MovementLoopAddLocation(NPC, -19.17, 17.32, 10.39, 2, 0)
	MovementLoopAddLocation(NPC, -26.87, 17.32, 9.09, 2, 0)
	MovementLoopAddLocation(NPC, -35.54, 19.76, 16.93, 2, 0)
	MovementLoopAddLocation(NPC, -44.18, 19.48, 21.32, 2, 0)
	MovementLoopAddLocation(NPC, -54.28, 19.31, 22.95, 2, 0)
	MovementLoopAddLocation(NPC, -58.37, 19.55, 9.24, 2, 0)
	MovementLoopAddLocation(NPC, -66.55, 18.88, -4.41, 2, 0)
end
