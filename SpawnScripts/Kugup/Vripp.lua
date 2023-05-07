--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Vripp.lua
	Script Purpose	: Vripp
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
		PlayFlavor(NPC, "", "I'm so happy to have dolly back!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I wish you weren't busy so you could help me look for my dolly...", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1059.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1059.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1059.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You found her! Thank you so much! I told you she'd be easy to find... My dolly never goes too far!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1059.mp3", 0, 0)
	Dialog.AddOption("I was glad to help.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, thank you! Please bring her back as soon as you can. I miss her so much!")
	Dialog.AddOption("I'll be back as soon as I find her.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have... have you... have you seen... my dolly?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1059.mp3", 0, 0)
	Dialog.AddOption("What dolly?", "Dialog5")
	Dialog.AddOption("I'm afraid not. I have to get going.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have... have you... have you seen... my dolly?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1059.mp3", 0, 0)
	Dialog.AddOption("What dolly?", "Dialog5")
	Dialog.AddOption("I'm afraid not. I have to get going.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("She's just a little doll... I don't know where she, she... where she went off to... Oh won't you PLEEEASE help me find her? She must be around here somewhere.")
	Dialog.AddOption("Sure. I would love to help you.", "Dialog2")
	Dialog.AddOption("I don't have time to help you out right now.")
	Dialog.Start()
end

