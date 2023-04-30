--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Oemor.lua
	Script Purpose	: Oemor
	Script Author	: neatz09
	Script Date		: 2023.04.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"
    local ColdBloodedRelations = 5808

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    
    if GetQuestStep(Spawn, ColdBloodedRelations) == 2 then Dialog2(NPC, Spawn)
    else RandomGreeting(NPC, Spawn)
        end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "", "Why don't you just leave me alone you dirty wordmonger... Er, sorry, you're not Teiluj... Uh, hello.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I am glad that we worked everything out.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Teiluj...", "", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1015.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1015.mp3", 0, 0, Spawn)
	elseif choice == 6 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1015.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there... Can I help you?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1015.mp3", 0, 0)
	Dialog.AddOption("I brought you these flowers...")
	Dialog.AddOption("I have to be going.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there... Can I help you?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1015.mp3", 0, 0)
	Dialog.AddOption("I brought you these flowers...", "Dialog5")
	Dialog.AddOption("I have to be going.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Did he tell you that? Really? Wow... Maybe I was wrong about him. If you talk to him again, please ask him to come speak with me.")
	Dialog.AddOption("I would love to.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there... Can I help you?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1015.mp3", 0, 0)
	Dialog.AddOption("I brought you these flowers...", "suckafrogdick") -- highjacking this one as well to keep the quest going
	Dialog.AddOption("I have to be going.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What? Flowers for me? From that weasel Teiluj, no doubt.")
	Dialog.AddOption("He's not a weasel. He loves you.", "suckafrogdick")
	Dialog.AddOption("Yeah, uh...")
	Dialog.Start()
end

function suckafrogdick(NPC, Spawn)
    SetStepComplete(Spawn, ColdBloodedRelations, 2)
end