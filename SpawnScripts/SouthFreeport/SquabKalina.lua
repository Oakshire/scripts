--[[
	Script Name		: SpawnScripts/SouthFreeport/SquabKalina.lua
	Script Purpose	: Squab Kalina
	Script Author	: Dorbin
	Script Date		: 2022.05.04
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/squab_kalina/fprt_west/100_soc_halfelf_seafury_kalina_tasked_d91c9a23.mp3", "Return when you have finished your present task.", "", 2558123330, 1821358113, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Well done, friend!  I'd let you watch my back at sea any day.  You've more than proven yourself to the crew.  I have nothing more that would challenge an adventurer of your caliber.", "thumbsup", 0, 0, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1051.mp3", 0, 0)
	Dialog.AddOption("I would like the writ: Supplying the Scouts")
	Dialog.AddOption("I would like the writ: Feathers for Arrows")
	Dialog.AddOption("I would like the writ: Plundering the Ruins of the Dead")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1051.mp3", 0, 0)
	Dialog.AddOption("I would like the writ: Supplying the Scouts")
	Dialog.AddOption("I would like the writ: Feathers for Arrows", "Dialog4")
	Dialog.AddOption("I would like the writ: Plundering the Ruins of the Dead")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Supplying the Scouts")
	Dialog.AddOption("I would like the writ: Feathers for Arrows")
	Dialog.AddOption("I would like the writ: Plundering the Ruins of the Dead")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well done. We'll make a pirate out of you yet!  Here's another writ from the boats in the harbor.  You'll need to accomplish this one as quickly as possible. I'll wait here for you to complete this task. ")
	Dialog.AddVoiceover("voiceover/english/squab_kalina/fprt_west/100_soc_halfelf_seafury_kalina_hail_99843fbe.mp3", 2208977185, 3583110371)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

