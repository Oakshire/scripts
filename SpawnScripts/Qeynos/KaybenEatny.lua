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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_bartender/ft/eco/evil/human_eco_evil_bartender_hail_gm_35e6e167.mp3", "Just so ya know, I'm not in the business to hear your sad stories. Now what will it be?", "", 1595668242, 2514401652, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Nice weather we are having, no?", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Good day to you.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_bartender/ft/eco/evil/human_eco_evil_bartender_hail_gm_201b6d6a.mp3", "What can I get for ya?", "", 2895097847, 2686872643, Spawn)
	else
	end

end

