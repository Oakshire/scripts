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

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/bartender/halfelf_bartender_service_good_1_hail_gf_ce733912.mp3", "I bet you have some stories, eh?  Adventuring must be an exciting life!", "smile", 1178661573, 1894551598, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/bartender/halfelf_bartender_service_good_1_hail_gf_41d55b0d.mp3", "The best part about this job is all the extra coin I get.", "wink", 3789765642, 1946956397, Spawn)
	else
	end

end

