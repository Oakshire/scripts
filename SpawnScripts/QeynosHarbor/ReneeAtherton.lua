--[[
	Script Name	: SpawnScripts/QeynosHarbor/ReneeAtherton.lua
	Script Purpose	: Renee Atherton <Bartender>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/bartender/halfelf_bartender_service_good_1_hail_gf_ce1f039f.mp3", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 3345899068, 3251734592, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/bartender/halfelf_bartender_service_good_1_hail_gf_41d55b0d.mp3", "The best part about this job is all the extra coin I get.", "wink", 3789765642, 1946956397, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/bartender/halfelf_bartender_service_good_1_hail_gf_ce733912.mp3", "I bet you have some stories, eh?  Adventuring must be an exciting life!", "smile", 1178661573, 1894551598, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/bartender/halfelf_bartender_service_good_1_hail_gf_201b6d6a.mp3", "What can I get for ya?", "nod", 2190631918, 1997401965, Spawn)
	end
end

