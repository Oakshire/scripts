--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Pohpiks.lua
	Script Purpose	: Pohpiks
	Script Author	: neatz09
	Script Date		: 2023.05.05
	Script Notes	:
--]]

require "SpawnScripts/Generic/DialogModule"
local Trash = 5810

function spawn(NPC)
    ProvidesQuest(NPC, Trash)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, Trash) and not HasCompletedQuest(Spawn, Trash) then Dialog1(NPC, Spawn) else
	RandomGreeting(NPC, Spawn)
end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "", "Shouldn't you get back to whatever you're working on?", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Ah! This new spell sure is powerful!", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Ready or not, here goes!", "", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1029.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1029.mp3", 0, 0, Spawn)
	elseif choice == 6 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1029.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Huh, what do you want? Who are you? I'm very busy, can't you see?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1029.mp3", 0, 0)
	Dialog.AddOption("What are you busy doing?", "Dialog2")
	Dialog.AddOption("Sorry to bother you!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am trying to perfect a new spell. I think I finally have it; I just need something to test it out on!")
	Dialog.AddOption("Is there anything I can help with?", "Dialog4")
	Dialog.AddOption("Oh, well I can't help you there.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Huh, what do you want? Who are you? I'm very busy, can't you see?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1029.mp3", 0, 0)
	Dialog.AddOption("What are you busy doing?", "Dialog2")
	Dialog.AddOption("Sorry to bother you!")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes. As a matter of fact, I believe you can. I need some suitable targets to test this spell on and, if you're willing, I think I know where to find some.")
	Dialog.AddOption("Sure, just let me know where to look.", "TakingOuttheTrash") --Was dialog 7
	Dialog.AddOption("I'm sort of busy. Sorry!")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Huh, what do you want? Who are you? I'm very busy, can't you see?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1029.mp3", 0, 0)
	Dialog.AddOption("What are you busy doing?", "Dialog2")
	Dialog.AddOption("Sorry to bother you!")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, I see all the bags are collected. Great! Now to test the spell. I'll give you a moment to stand back, just in case...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1029.mp3", 0, 0)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

--[[function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Great, this should be simple. Just gather trash bags from the garbage boxes around the village and bring all the bags back over here to my target platform. Those should make a fine target!")
	Dialog.AddOption("Eww... trash.")
	Dialog.Start()
end]]--

function TakingOuttheTrash(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Trash)
end