--[[
	Script Name		: SpawnScripts/BigBend/KorkoofCrackstone.lua
	Script Purpose	: Korkoof Crackstone
	Script Author	: torsten
	Script Date		: 2022.07.13
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your profession.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1054.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1054.mp3", 0, 0, Spawn)
	end
end