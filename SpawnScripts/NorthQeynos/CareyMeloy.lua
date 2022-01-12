--[[
	Script Name	: SpawnScripts/NorthQeynos/CareyMeloy.lua
	Script Purpose	: Carey Meloy <Banker>
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
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/banker/human_banker_service_good_1_hail_gf_c9bf1d41.mp3", "Welcome to the bank, citizen. How can I assist you?", "bow", 3588850714, 340704782, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/banker/human_banker_service_good_1_hail_gf_1772a0df.mp3", "Has anyone told you about our new retirement savings programs?", "nod", 523804535, 358597555, Spawn)
	else
	end

end

