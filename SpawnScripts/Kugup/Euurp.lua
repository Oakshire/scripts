--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Euurp.lua
	Script Purpose	: Euurp
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "It seems like you're already working on something else. Come see me again when you're finished!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I hope you remember your lessons!", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1059.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Absolutely correct! You are a quick study for one so old. You have learned our history well, and I am proud to be your teacher.")
	Dialog.AddOption("Thank you for teaching me.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Again, excellent. Are you ready for the final question?")
	Dialog.AddOption("I am ready.", "Dialog15")
	Dialog.AddOption("Not quite yet.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, friend. I am Euurp, the school teacher. We may be a small village, but we do have some youngsters and there's just so much to teach them!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1059.mp3", 0, 0)
	Dialog.AddOption("What do you teach?", "Dialog11")
	Dialog.AddOption("That's interesting, but I must be going.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What did we rename Grobb to after the defeat of the Trolls?")
	Dialog.AddOption("New Guk")
	Dialog.AddOption("Frooaka")
	Dialog.AddOption("Gukta", "Dialog20")
	Dialog.AddOption("I don't know.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see you have read the book... Do you feel like you've studied well?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1059.mp3", 0, 0)
	Dialog.AddOption("I read it carefully.", "Dialog10")
	Dialog.AddOption("Uh, maybe I should re-read it.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What would we Frogloks rather die than do?")
	Dialog.AddOption("Fail in battle")
	Dialog.AddOption("Harm another living being")
	Dialog.AddOption("Utilize deception", "Dialog20")
	Dialog.AddOption("I don't know.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm, I believe you should review the text some more.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1059.mp3", 0, 0)
	Dialog.AddOption("I will review the text.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm, I believe you should review the text some more.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1059.mp3", 0, 0)
	Dialog.AddOption("I will review the text.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What did we carry into the depths of Gukta to protect our kind?")
	Dialog.AddOption("Froglok Eggs", "Dialog2")
	Dialog.AddOption("Bug stew")
	Dialog.AddOption("The King")
	Dialog.AddOption("I don't know.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good to hear, are you ready for the first question?")
	Dialog.AddOption("I am ready.", "Dialog4")
	Dialog.AddOption("Not quite yet")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, everything we can! Mathematics, arcane science, alchemy, even combat when they get a bit older than these children. But, one of the most important lessons is history.")
	Dialog.AddOption("What's so interesting about history?", "Dialog14")
	Dialog.AddOption("Hmm, school was boring enough the first time.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whose army brought the Froglok people to the brink of extinction?")
	Dialog.AddOption("Rallos Zek")
	Dialog.AddOption("Cazic-Thule")
	Dialog.AddOption("Bristlebane", "Dialog13")
	Dialog.AddOption("I don't know.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm disappointed. I thought you would have studied better. Perhaps you should re-read the text and then come see me again.")
	Dialog.AddOption("I will re-read the text.")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("History is why we are where we are. If we don't learn from history, we will surely repeat the mistakes of the past. The Froglok people have a long and fascinating history. Would you like to learn it?")
	Dialog.AddOption("Sure, I'd like to learn the Froglok History.", "Dialog18")
	Dialog.AddOption("No thanks, I don't have the time right now.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whose punishment was swift and severe?")
	Dialog.AddOption("The Tae'Ew")
	Dialog.AddOption("The Ogres'")
	Dialog.AddOption("The Gods'", "Dialog1")
	Dialog.AddOption("I don't know.")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see you have read the book... Do you feel like you've studied well?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1059.mp3", 0, 0)
	Dialog.AddOption("I read it carefully.", "Dialog10")
	Dialog.AddOption("Uh, maybe I should re-read it.")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm, I believe you should review the text some more.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1059.mp3", 0, 0)
	Dialog.AddOption("I will review the text.")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's great news. Here, take this tome and read it. When you are done, come back and we'll see what you've learned. ")
	Dialog.AddOption("Thanks. I'll be back as soon as I'm done!")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, friend. I am Euurp, the school teacher. We may be a small village, but we do have some youngsters and there's just so much to teach them!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1059.mp3", 0, 0)
	Dialog.AddOption("What do you teach?", "Dialog11")
	Dialog.AddOption("That's interesting, but I must be going.")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Outstanding answer. Are you ready for the next question?")
	Dialog.AddOption("I am ready.", "Dialog9")
	Dialog.AddOption("Not quite yet.")
	Dialog.Start()
end

