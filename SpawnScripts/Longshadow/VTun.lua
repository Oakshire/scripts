--[[
	Script Name		: SpawnScripts/LongshadowAlley/ResearcherVTun.lua
	Script Purpose	: Researcher V'Tun
	Script Author	: torsten
	Script Date		: 2022.07.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can I help you?")
	Dialog.AddVoiceover("bubbler/nozone/research_assistant_000.mp3", 2306513456, 3204208724)
	Dialog.AddOption("What is a Research Assistant?", "Dialog3")
	Dialog.AddOption("No.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I sure can, but you must have the spell or combat art at Journeyman or Expert otherwise I will not be able to help.   When you are ready just speak to me again! ")
	Dialog.AddVoiceover("bubbler/nozone/research_assistant_001.mp3", 1208968585, 486567327)
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Research Assistants can help you learn better versions for some of your spells or combat arts.")
	Dialog.AddVoiceover("bubbler/nozone/research_assistant_001.mp3", 1208968585, 486567327)
	Dialog.AddOption("Which type of spells?", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If you learn a spell or combat art to Journeyman or Expert level, I can research and help you learn the secrets to unlocking its next level potential.")
	Dialog.AddVoiceover("bubbler/nozone/research_assistant_001.mp3", 1208968585, 486567327)
	Dialog.AddOption("How long does it take?", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I would be able to tell you exactly how long based on the spell or combat art you wish to learn. It's a tedious process, though, so it may take days or even weeks to complete.  ")
	Dialog.AddVoiceover("bubbler/nozone/research_assistant_001.mp3", 1208968585, 486567327)
	Dialog.AddOption("Can you take a look at what I can learn? ", "Dialog2")
	Dialog.Start()
end

