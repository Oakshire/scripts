--[[
	Script Name		: SpawnScripts/ScaleYard/ashadowyagent.lua
	Script Purpose	: a shadowy agent
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_halfhealth_gm_a2ace12c.mp3", "Don't hurt us! We're no threat to your mightiness.", "", 3593075606, 2907318102, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_halfhealth_gf_9c7df7ea.mp3", "That patch of fur will never grow back, you know.", "", 4146309857, 1135607887, Spawn, 0)
	end
end