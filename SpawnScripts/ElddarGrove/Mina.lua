--[[
	Script Name	: SpawnScripts/ElddarGrove/Mina.lua
	Script Purpose	: Mina 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_43b0278c.mp3", "Good day to you. I trust your journey to our village was not overly hazardous.", "fullcurtsey", 374004507, 2165503793, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_bf6c3bd5.mp3", "Hello there, friend, I hope the day finds you well.", "nod", 2878226663, 595387800, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_c5cb5ec8.mp3", "Hail to you as well, traveler.  There is much work to be done in Qeynos, might as well get started on it now.", "smile", 3197561806, 3190128247, Spawn)
	else
	end

end

function spawn(NPC)
	waypoints(NPC)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 610.73, -21.11, -232.03, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 634.45, -19.4, -257.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 653.33, -19.06, -269.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 683.06, -19.57, -277.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 699.51, -17.27, -324.09, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 716.17, -17.04, -329.63, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 734.96, -17.92, -326.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 743.56, -20.67, -334.42, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 734.96, -17.92, -326.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 716.17, -17.04, -329.63, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 699.51, -17.27, -324.09, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 683.06, -19.57, -277.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 653.33, -19.06, -269.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 634.45, -19.4, -257.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 610.73, -21.11, -232.03, 2, math.random(0,15))
end


