--[[
	Script Name		:	theodoric.lua
	Script Purpose	:	Waypoint Path for theodoric.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 07:19:05 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_barmaid_gm_a1d96f41.mp3", "My stein hasn't any legs to walk over and fill itself up.", "glare", 2656968471, 1396939792, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_hail_gm_622bfa69.mp3", "What do you mean ye drank more than I did?", "boggle", 3046379177, 1648095152, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_barmaid_gm_7f76ecc6.mp3", "Hurry up! My stomach's near dry thanks to ya.", "frustrated", 2014105974, 2128019974, Spawn)
	else
	end
	end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 516.1, -9.57, 128.35, 2, 30)
	MovementLoopAddLocation(NPC, 516.74, -9.57, 131.87, 2, 30)
	MovementLoopAddLocation(NPC, 532.62, -9.56, 132.75, 2, 0)
	MovementLoopAddLocation(NPC, 532.46, -9.56, 136.21, 2, 30)
	MovementLoopAddLocation(NPC, 532.05, -9.56, 132.94, 2, 0)
	MovementLoopAddLocation(NPC, 540.22, -9.56, 133.93, 2, 0)
	MovementLoopAddLocation(NPC, 542.24, -9.56, 136.1, 2, 0)
	MovementLoopAddLocation(NPC, 561.26, -9.56, 133.56, 2, 0)
	MovementLoopAddLocation(NPC, 572.73, -9.43, 136.49, 2, 0)
	MovementLoopAddLocation(NPC, 572.91, -8.47, 131.8, 2, 0)
	MovementLoopAddLocation(NPC, 580.87, -8.48, 130.61, 2, 10)
	MovementLoopAddLocation(NPC, 578.34, -8.48, 127.68, 2, 60)
end


