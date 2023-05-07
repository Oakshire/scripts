--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Fruppen.lua
	Script Purpose	: Fruppen
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
		PlayFlavor(NPC, "", "I can't believe I finally have a staff of my own! I can't wait to start practicing!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Woohoo! Freppen, you're my hero!", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey this branch is perfect! Whoa! Thanks so much!")
	Dialog.AddOption("You're welcome. Practice hard!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Did you find a good staff for me yet? ")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0)
	Dialog.AddOption("I sure did.", "Dialog1")
	Dialog.AddOption("Not quite yet")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Really?! I can't be a monk right now, though. My dad says I'm too little, but I still want to practice, ya know? It's just that I can't even practice.")
	Dialog.AddOption("Why not?", "Dialog9")
	Dialog.AddOption("You are too little.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wow! Thanks! You should be able to find a good branch on one of these trees around here. Yeah, a nice tree branch. That would work great for my first staff!")
	Dialog.AddOption("Okay, I'll find you one.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can you believe my big brother is such a good fighter? I sure hope I can be a monk like him someday.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0)
	Dialog.AddOption("I bet you will be!", "Dialog3")
	Dialog.AddOption("I suppose it's possible. I have to get going.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can you believe my big brother is such a good fighter? I sure hope I can be a monk like him someday.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0)
	Dialog.AddOption("I bet you will be!", "Dialog3")
	Dialog.AddOption("I suppose it's possible. I have to get going.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can you believe my big brother is such a good fighter? I sure hope I can be a monk like him someday.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0)
	Dialog.AddOption("I bet you will be!", "Dialog3")
	Dialog.AddOption("I suppose it's possible. I have to get going.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Really?! I mean... You don't have to if you don't want to. Do you want to?")
	Dialog.AddOption("Sure thing!", "Dialog4")
	Dialog.AddOption("Not really")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well... I mean... I guess I could, but I don't have a staff or anything. How am I supposed to practice without a staff?")
	Dialog.AddOption("I could probably get you a staff to practice with.", "Dialog8")
	Dialog.AddOption("You are too young.")
	Dialog.Start()
end

