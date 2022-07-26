--[[
	Script Name		: SpawnScripts/ScaleYard/WeaponsmithXass.lua
	Script Purpose	: Weaponsmith Xass
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
		PlayFlavor(NPC, "", "I am the finest weaponsmith in Freeport... But I don't do public work anymore. These days I simply make new designs for the sake of advancing my craft... and the occasional very pricey contract.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1028.mp3", 0, 0, Spawn)
	end
end