--[[
	Script Name		: SpawnScripts/BeggarsCourt/TabiththeHag.lua
	Script Purpose	: Tabith the Hag
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_fighter_gf_544e4a58.mp3", "Epic battles await your future, but the strength of your arm shall tame them all!", "", 3412016143, 1212387502, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_mage_gf_f18445ae.mp3", "Clearly your intellect is your best asset. The world shall marvel at the wonders you control.", "", 2374480230, 2549502692, Spawn, 0)
	end
end