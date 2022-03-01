--[[
	Script Name	: SpawnScripts/NorthQeynos/Ealoonias.lua
	Script Purpose	: Ealoonias <Banker>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/banker/erudite_banker_service_good_1_hail_gm_1772a0df.mp3", "Has anyone told you about our new retirement savings programs?", "nod", 950134536, 1150794829, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/banker/erudite_banker_service_good_1_hail_gm_17a9b8f6.mp3", "Are you interested in qualifying for an equity line of coin on your livestock?", "shrug", 1755638252, 623593210, Spawn)
	else
	end

end

