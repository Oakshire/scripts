--[[
	Script Name	: SpawnScripts/SouthQeynos/KaybenEatny.lua
	Script Purpose	: Kayben Eatny <Bartender>
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_bartender/ft/eco/evil/human_eco_evil_bartender_hail_gm_35e6e167.mp3", "Just so ya know, I'm not in the business to hear your sad stories. Now what will it be?", "", 1595668242, 2514401652, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_bartender/ft/eco/evil/human_eco_evil_bartender_hail_gm_201b6d6a.mp3", "What can I get for ya?", "", 2895097847, 2686872643, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_bartender/ft/eco/evil/human_eco_evil_bartender_barmaid_gm_77167e04.mp3", "You're slower than usual today. Have you been slippin yourself more than a few drinks under the table?", "", 3790169114, 2863543155, Spawn, 0)

	end

end

