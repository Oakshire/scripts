--[[
	Script Name		: SpawnScripts/BeggarsCourt/ScribeInkwell.lua
	Script Purpose	: Scribe Inkwell
	Script Author	: torsten
	Script Date		: 2022.07.18
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
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/scribe/halfelf_scribe_service_evil_1_hail_gf_8de85b9c.mp3", "Perhaps I could interest you in our necromantic line of spells?  ", "agree", 1871870075, 1766711032, Spawn, 0)
	end
end