--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/aDefenderofKugup.lua
	Script Purpose	: a Defender of Kugup
	Script Author	: neatz09
	Script Date		: 2023.04.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,10)

	if choice == 1 then
		PlayFlavor(NPC, "", "Thou be'st a stranger to this village. FrroOOOaaAk!", "yawn", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Pardon? Pail? What dost thou mea... Ah, HAIL... Right, well...", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I see there is still much to be done before you have earned the right to speak with the chief.", "", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "There is still plenty to do around here before the chief will speak with you.", "", 0, 0, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "We do not have time to help those who cannot help us.", "", 0, 0, Spawn, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "Dost thou need something? I pray thee, continue about thy business.", "", 0, 0, Spawn, 0)
	elseif choice == 7 then
		PlayFlavor(NPC, "", "Canst thou see that I am rather busy?", "", 0, 0, Spawn, 0)
	elseif choice == 8 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0, Spawn)
	elseif choice == 9 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0, Spawn)
	elseif choice == 10 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, I implore you to act with respect toward our people while in this village. We will be watching you, outsider.")
	Dialog.AddOption("You don't have to worry about me.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey, I don't think I've ever seen you before! What are you doing here?")
	Dialog.AddOption("I am investigating the village.", "Dialog1")
	Dialog.AddOption("Nothing you need to worry about.", "Dialog1")
	Dialog.Start()
end

