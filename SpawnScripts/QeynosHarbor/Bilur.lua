--[[
	Script Name		:	Bilur.lua
	Script Purpose	:	Waypoint Path for Bilur.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:10:38 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift!  If the gnolls don't attack now I may die of boredom.", "grumble", 31199107, 4082603014, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else citizen, except honor!", "scold", 3958491070, 1651361777, Spawn)
	else
	end

end

function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 803.77, -20.99, 135.44, 2, 20)
	MovementLoopAddLocation(NPC, 817.09, -23.31, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 833.86, -23.31, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, 858.41, -25.37, 40.72, 2, 0)
	MovementLoopAddLocation(NPC, 911.08, -25.39, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.37, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, 893.95, -25.34, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 860.97, -25.44, -73.48, 2, 30)
	MovementLoopAddLocation(NPC, 893.95, -25.34, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.37, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, 911.08, -25.39, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 858.41, -25.37, 40.72, 2, 0)
	MovementLoopAddLocation(NPC, 833.86, -23.31, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, 817.09, -23.31, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 803.77, -20.99, 135.44, 2, 20)
end


