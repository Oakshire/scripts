--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/GrroptheForeman.lua
	Script Purpose	: Grrop the Foreman
	Script Author	: neatz09
	Script Date		: 2023.05.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,10)

	if choice == 1 then
		PlayFlavor(NPC, "", "Sure is exhausting.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Whew, it's break time!", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I'm sorry about that, friend. Say, if you're looking to wash that off, ol Grepp keeps a keg o' water over by his tent.", "", 0, 0, Spawn, 0) --Quest
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Oh Frrin, calm down! Pikspoh probably just needs another crystal... Don't you have work to do, anyway?", "", 0, 0, Spawn, 0) --Quest
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Stop goofing around, Frrin!", "", 0, 0, Spawn, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "This is hard work!", "", 0, 0, Spawn, 0)
	elseif choice == 7 then
		PlayFlavor(NPC, "", "Would you just look at all these rocks I have to mine?", "", 0, 0, Spawn, 0)
	elseif choice == 8 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1016.mp3", 0, 0, Spawn)
	elseif choice == 9 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1016.mp3", 0, 0, Spawn)
	elseif choice == 10 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1016.mp3", 0, 0, Spawn)
	end
end