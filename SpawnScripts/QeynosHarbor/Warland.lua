--[[
	Script Name		:	Warland.lua
	Script Purpose	:	Waypoint Path for Warland.lua
	Script Author	:	Auto Generated
	Script Date		:	04/08/2020 10:30:14 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 1945337199, 2685949436, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 4141262779, 4227030045, Spawn)
	else
	end

end


function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 705.82, -20.64, -22.54, 2, 0)
	MovementLoopAddLocation(NPC, 740.93, -21.44, -22.18, 2, 0)
	MovementLoopAddLocation(NPC, 757.61, -20.88, -35.3, 2, 0)
	MovementLoopAddLocation(NPC, 764.83, -21.84, -55.37, 2, 0)
	MovementLoopAddLocation(NPC, 727.1, -21.24, -63.05, 2, 0)
	MovementLoopAddLocation(NPC, 710.11, -21.06, -83.53, 2, 20)
	MovementLoopAddLocation(NPC, 727.1, -21.24, -63.05, 2, 0)
	MovementLoopAddLocation(NPC, 764.83, -21.84, -55.37, 2, 0)
	MovementLoopAddLocation(NPC, 757.61, -20.88, -35.3, 2, 0)
	MovementLoopAddLocation(NPC, 740.93, -21.44, -22.18, 2, 0)
	MovementLoopAddLocation(NPC, 705.82, -20.64, -22.54, 2, 0)
end


