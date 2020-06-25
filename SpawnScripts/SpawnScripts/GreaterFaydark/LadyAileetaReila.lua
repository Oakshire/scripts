--[[
	Script Name	: SpawnScripts/GreaterFaydark/LadyAileetaReila.lua
	Script Purpose	: Lady Aileeta Reila <Fae Mentor>
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_aileeta_reila/_exp03/exp03_cty_kelethin/quest/qst_aileeta_reila_hail_9730e02e.mp3", "Those pesky cats! They've run off with my feather pen again!", "", 2600248745, 2937953969, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_aileeta_reila/_exp03/exp03_cty_kelethin/quest/qst_aileeta_reila_hail_eca770db.mp3", "Kelethin is a safe place to live.", "", 73547504, 3028031888, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_aileeta_reila/_exp03/exp03_cty_kelethin/quest/qst_aileeta_reila_hail_44e0eea8.mp3", "Many things are happening all around Kelethin!", "", 3311909437, 1144669183, Spawn)
	else
	end

end

