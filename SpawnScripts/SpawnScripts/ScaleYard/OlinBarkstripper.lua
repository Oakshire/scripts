--[[
	Script Name	: SpawnScripts/ScaleYard/OlinBarkstripper.lua
	Script Purpose	: Olin Barkstripper <General Goods>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_1a08e567.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase?  ", "nod", 2645212460, 3162600369, Spawn)
end

