--[[
	Script Name	: SpawnScripts/Graystone/AssistantJalan.lua
	Script Purpose	: Assistant Jalan 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/banker/barbarian_banker_service_good_1_hail_gf_1772a0df.mp3", "Has anyone told you about our new retirement savings programs?", "nod", 598649185, 1528614376, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/banker/barbarian_banker_service_good_1_hail_gf_17a9b8f6.mp3", "Are you interested in qualifying for an equity line of coin on your livestock?", "shrug", 3636052598, 303778763, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/banker/barbarian_banker_service_good_1_hail_gf_ca4ce94.mp3", "Greetings, would you like to open an account or is there something else I can help with?", "hello", 2950142669, 2951966236, Spawn)
	else
	end

end

