--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Pikspoh.lua
	Script Purpose	: Pikspoh
	Script Author	: neatz09
	Script Date		: 2023.05.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

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
	local choice = MakeRandomInt(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "This channeling gem really packs some punch! ", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Ah, if only you weren't already helping someone else...", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1015.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1015.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1015.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, it's nothing you'd understand, I'm sure. It's just that my channeling gem seems to have cracked, so my wand is broken! Right when I was about to do some training too!")
	Dialog.AddOption("Yikes, is there anything I can do?", "Dialog3")
	Dialog.AddOption("That's too bad... I have to be going.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey, this is a good one! Wow, it's really yellow. This is going to make a great lightning wand.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1015.mp3", 0, 0)
	Dialog.AddOption("I'm happy I could be of service.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm, if you were willing to find me another channeling stone, I could fix it right up. Would you be willing to do that for me?")
	Dialog.AddOption("Definitely!", "Dialog4")
	Dialog.AddOption("Um... no.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wonderful! I would start by looking over by the miners to see if there are any gems in the rubble over there.")
	Dialog.AddOption("I'm on it!")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Drat! I can't believe it! Why does something like this have to happen now, of all times?!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1015.mp3", 0, 0)
	Dialog.AddOption("What happened?", "Dialog1")
	Dialog.AddOption("I'm busy right now.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Drat! I can't believe it! Why does something like this have to happen now, of all times?!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1015.mp3", 0, 0)
	Dialog.AddOption("What happened?", "Dialog1")
	Dialog.AddOption("I'm busy right now.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Drat! I can't believe it! Why does something like this have to happen now, of all times?!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1015.mp3", 0, 0)
	Dialog.AddOption("What happened?", "Dialog1")
	Dialog.AddOption("I'm busy right now.")
	Dialog.Start()
end

