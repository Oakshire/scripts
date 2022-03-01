--[[
	Script Name		:	SpawnScripts/Neriak/SDreadGuard2.lua
	Script Purpose	:	Waypoint Path for Dread Guard 2 Indigo Hollow
	Script Author	:	Cynnar
	Script Date		:	5/7/2018 12:00:00 AM
	Script Notes	:	This is the Dread Guard starting at New Foreign Quarter Neriak Indigo Hollow. 
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
		SetMount(NPC, 24936)
		SetMountColor(NPC, 255, 255, 255, 255, 255, 255)
	end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 80.68, 17.42, 11.01, 2, 0)
	MovementLoopAddLocation(NPC, 60.86, 16.96, 7.3, 2, 0)
	MovementLoopAddLocation(NPC, 55.95, 17.22, 4.69, 2, 0)
	MovementLoopAddLocation(NPC, 32.11, 17.02, -5.75, 2, 0)
	MovementLoopAddLocation(NPC, 19.47, 17.01, 9.67, 2, 0)
	MovementLoopAddLocation(NPC, 24.35, 16.31, 32.83, 2, 0)
	MovementLoopAddLocation(NPC, 19.47, 17.01, 9.67, 2, 0)
	MovementLoopAddLocation(NPC, 32.11, 17.02, -5.75, 2, 0)
	MovementLoopAddLocation(NPC, 55.95, 17.22, 4.69, 2, 0)
	MovementLoopAddLocation(NPC, 60.86, 16.96, 7.3, 2, 0)
end

