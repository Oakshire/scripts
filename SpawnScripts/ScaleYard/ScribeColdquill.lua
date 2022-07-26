--[[
	Script Name		: SpawnScripts/ScaleYard/ScribeColdquill.lua
	Script Purpose	: Scribe Coldquill
	Script Author	: torsten
	Script Date		: 2022.07.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/scribe/barbarian_scribe_service_evil_1_hail_gf_250b4da0.mp3", "So are you planning to master your art at the academy?  We keep all of the required supplies right here!", "ponder", 998404755, 3116132732, Spawn, 0)
	end
end