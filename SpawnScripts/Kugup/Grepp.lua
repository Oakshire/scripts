--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Grepp.lua
	Script Purpose	: Grepp
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
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "I can't wait... This stew is going to be the best batch yet!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1028.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Just my luck! Everyone's hungry and my key ingredient is missing!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", 0, 0)
	Dialog.AddOption("Key ingredient?", "Dialog3")
	Dialog.AddOption("Good luck finding it.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Just my luck! Everyone's hungry and my key ingredient is missing!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", 0, 0)
	Dialog.AddOption("Key ingredient?", "Dialog3")
	Dialog.AddOption("Good luck finding it.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sure, the key ingredient. What are you, slow or somethin'? How am I supposed to make the firefly stew without some dern fireflies?")
	Dialog.AddOption("Firefly stew? That doesn't sound particularly appetizing.", "Dialog7")
	Dialog.AddOption("That's your problem, not mine.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well lookie here, big ones too! This is gonna be some fantastic stew! Thanks so much!")
	Dialog.AddOption("You are quite welcome.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well I'll be derned! Alright, here's a net, just go ahead and catch... let's see... three groups ought to be enough. Then bring 'em on back!")
	Dialog.AddOption("I'll be back when I've caught you some fireflies.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey, how's the hunt for them tasty buggers goin?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1028.mp3", 0, 0)
	Dialog.AddOption("I caught three groups for you.", "Dialog4")
	Dialog.AddOption("Still hunting.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, but it is! Firefly stew is my specialty! I just don't have time to go catch any of the buggers.")
	Dialog.AddOption("I have some time to spare. Can I help you out?", "Dialog9")
	Dialog.AddOption("Neither do I. Good luck with the hunt!")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey, how's the hunt for them tasty buggers goin?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", 0, 0)
	Dialog.AddOption("I caught three groups for you.", "Dialog4")
	Dialog.AddOption("Still hunting.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well of course, if yer willin'! Are ya?")
	Dialog.AddOption("Of course.", "Dialog5")
	Dialog.AddOption("Not really.")
	Dialog.Start()
end

