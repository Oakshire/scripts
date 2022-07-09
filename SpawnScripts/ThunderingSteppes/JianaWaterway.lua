--[[
    Script Name    : SpawnScripts/ThunderingSteppes/JianaWaterway.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.09 03:07:17
    Script Purpose : 
	Script Date		: 2022.07.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog4(NPC, Spawn)
--RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/jiana_waterway/varsoon/030_qst_halfelf_jiana_waterway_repeatable_1_task_754becd3.mp3", "You still need to complete your task.", "", 364368353, 2881150620, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1051.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1021.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1051.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1051.mp3", 0, 0, Spawn)
	elseif choice == 6 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1021.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This devious place is nothing but trouble. Maybe one day, we'll seal this place off and everyone will be safe.")
	Dialog.AddVoiceover("voiceover/english/optional5/jiana_waterway/jiana_waterway007_edit_64.mp3", 181248332, 1242894792)
	Dialog.AddOption("That would be helpful.", "Dialog5")
	Dialog.AddOption("I am leaving this area. Good luck with the dark creatures.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Like I said, you look brave, and you're certainly more capable of dealing with those monstrosities than I am. More creatures lurk beneath. I hope you can help us again ... soon!")
	Dialog.AddVoiceover("voiceover/english/optional5/jiana_waterway/jiana_waterway005_edit_64.mp3", 2733962084, 4038622739)
	Dialog.AddOption("Perhaps.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You look brave. Why don't you venture down there and take care of the fiends? We can't let them hurt any more people!")
	Dialog.AddVoiceover("voiceover/english/optional5/jiana_waterway/jiana_waterway004_edit_64.mp3", 321618762, 2571748313)
	Dialog.AddOption("I'll do what I can to deal with those dark creatures.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Too many dark entities down in the dungeon. I'm not equipped to handle so many of them!")
	Dialog.AddVoiceover("voiceover/english/optional5/jiana_waterway/jiana_waterway001_edit_64.mp3", 2395185061, 953418060)
	Dialog.AddOption("Did you just come from the dungeon?", "Dialog7")
	Dialog.AddOption("I'll leave you to your business.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Until the dungeon is sealed, we must kill more of the dark creatures that pose a threat to the people on the surface. Please, go down there and kill more of them!")
	Dialog.AddVoiceover("voiceover/english/optional5/jiana_waterway/jiana_waterway008_edit_64.mp3", 3122417390, 284078790)
	Dialog.AddOption("Sure, I am heading down there right now.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("For some reason, the dark creatures from below are coming to the surface and terrorizing the locals. I decided to take the matter into my own hands. I went down to the dungeon to destroy those creatures before they do any more harm on the surface. I seriously underestimated those beasts of the dark and almost didn't make it out alive!")
	Dialog.AddVoiceover("voiceover/english/optional5/jiana_waterway/jiana_waterway003_edit_64.mp3", 3688141364, 3942256705)
	Dialog.AddOption("Fortunately you did make it out.", "Dialog3")
	Dialog.AddOption("You should be more careful next time. Take care.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, I was down in the dungeon fighting the dark creatures. Evil beings lurk beneath our feet.")
	Dialog.AddVoiceover("voiceover/english/optional5/jiana_waterway/jiana_waterway002_edit_64.mp3", 4089072438, 1821924622)
	Dialog.AddOption("What were you doing down in such a dangerous place by yourself?", "Dialog6")
	Dialog.AddOption("I need to be going. Take care of yourself.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Killing the dark creatures down below keeps the surface safe. Thank you, brave friend!")
	Dialog.AddVoiceover("voiceover/english/optional5/jiana_waterway/jiana_waterway006_edit_64.mp3", 1353498689, 3652526064)
	Dialog.AddOption("It is never a problem for me to help defeat creatures of evil.", "Dialog1")
	Dialog.AddOption("I need to go. Take care.")
	Dialog.Start()
end

