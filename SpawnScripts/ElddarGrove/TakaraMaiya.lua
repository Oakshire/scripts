--[[
	Script Name	: SpawnScripts/ElddarGrove/TakaraMaiya.lua
	Script Purpose	: Takara Maiya <General Goods>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1381598517, 719278997, Spawn)
end

