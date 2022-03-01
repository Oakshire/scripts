--[[
	Script Name	: SpawnScripts/ScaleYard/ScribeColdquill.lua
	Script Purpose	: Scribe Coldquill <Spell Scrolls>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/scribe/barbarian_scribe_service_evil_1_hail_gf_250b4da0.mp3", "So are you planning to master your art at the academy?  We keep all of the required supplies right here!", "ponder", 998404755, 3116132732, Spawn)
end

