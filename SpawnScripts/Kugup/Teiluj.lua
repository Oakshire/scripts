--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Teiluj.lua
	Script Purpose	: Teiluj
	Script Author	: neatz09
	Script Date		: 2023.04.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"
local ColdBloodedRelations = 5808

function spawn(NPC)
    ProvidesQuest(NPC, ColdBloodedRelations)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    RandomGreeting(NPC, Spawn)
    if not HasQuest(Spawn, ColdBloodedRelations) and not HasCompletedQuest(Spawn, ColdBloodedRelations) then
        Dialog1(NPC, Spawn)
    elseif HasQuest(Spawn, ColdBloodedRelations) then
        PlayFlavor(NPC, "", "Oemor...", "", 0, 0, Spawn, 0)
    end
end


function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,7)

	if choice == 1 then
		PlayFlavor(NPC, "", "Oemor...", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Thou art a hero for the heart.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Impressive display in finding the flowers. Please bestow them upon sweet Oemor for me.", "", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Payest me a visit sometime when thou art not about another task. I have an important favor to request of thee.", "", 0, 0, Spawn, 0)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0, Spawn)
	elseif choice == 6 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0, Spawn)
	elseif choice == 7 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oemor, ist thou my sweet? Woe, thou be'st not Oemor. I fear she shall not desire to look upon my shameful being e'er again.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0)
	Dialog.AddOption("Who is Oemor?", "Dialog7")
	Dialog.AddOption("I don't even understand what thou just said...")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, really? She liked them, did she? She seeks my presence? How do I look? Spectacular! How is my breath? Oh, glorious day!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0)
	Dialog.AddOption("Whoa, calm down!")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oemor, ist thou my sweet? Woe, thou be'st not Oemor. I fear she shall not desire to look upon my shameful being e'er again.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0)
	Dialog.AddOption("Who is Oemor?", "Dialog7")
	Dialog.AddOption("I don't even understand what thou just said...")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("'Tis merely a misunderstanding, really. She observed me with her angelic gaze hopping about, ever so innocently, with another maiden.")
	Dialog.AddOption("Well, you need to apologize!", "Dialog8")
	Dialog.AddOption("You pig!")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I have crafted a marvelous plan, indeed! Sweet Oemor's favorite flowers art now in bloom. I implore thee to take the pain of gathering a few and giving them to my dearest. Inform her that they are from me, then perhaps she will speak again to me!")
	Dialog.AddOption("Great plan! I'll be back soon.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oemor, ist thou my sweet? Woe, thou be'st not Oemor. I fear she shall not desire to look upon my shameful being e'er again.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0)
	Dialog.AddOption("Who is Oemor?", "Dialog7")
	Dialog.AddOption("I don't even understand what thou just said...")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oemor is verily the pinnacle of beauty amongst all the Frogloks to grace Norrath. She is the light of my most humble life. My blood may run cold, but my heart burns for her. For shame, she will speakest not to me.")
	Dialog.AddOption("What happened, pray tell?", "Dialog4")
	Dialog.AddOption("Good luck with your crush.", "Dialog6")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("But of course! I have tried, though she refuses to grant me even the briefest audience. Perhaps thou canst assist me in mine impasse?")
	Dialog.AddOption("Sure. What do you need me to do?", "ColdBloodedRelationsQuest") --This is where i highjacked a call function this should call dialog5
	Dialog.AddOption("Hmm, not right now.")
	Dialog.Start()
end

function ColdBloodedRelationsQuest(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, ColdBloodedRelations)
end
