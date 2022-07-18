--[[
	Script Name		: SpawnScripts/BeggarsCourt/SestiusBuccio.lua
	Script Purpose	: Sestius Buccio
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
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_bartender/ft/eco/evil/human_eco_evil_bartender_barmaid_gm_fce6ec9a.mp3", "I can't tell this pub from a pigsty.  Get to work and clean this mess!", "", 1129202055, 4037261409, Spawn, 0)
	end
end