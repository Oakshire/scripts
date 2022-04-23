--[[
	Script Name		: SpawnScripts/NorthQeynos/DanielleClothspinner.lua
	Script Purpose	: Danielle Clothspinner
	Script Author	: Dorbin
	Script Date		: 2022.04.23
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
	PlayFlavor(NPC,"","","grumble",0,0,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whatever shall I do?  I'm out of dyes, and I simply must finish these yards of cloth today!  I'll certainly never make it all the way across town to get more and still have time to finish with my sewing!")
	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner.mp3", 2670222455, 1687224055)
	Dialog.AddOption("I'm very sorry to hear this.  I don't know much about dyes, but is there anything else you may need assistance with?", "Dialog3")
	Dialog.AddOption("I have all the preserved bear hides that you requested.", "Dialog2")
	Dialog.AddOption("Boy, guess you're out of luck.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","thank",0,0,Spawn)
	Dialog.AddDialog("Perfect, once I am done with all the sewing and dying for this job I can get started on some top notch pelt work.")
	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner004.mp3", 237301026, 160623065)
	Dialog.AddOption("Glad I could be of assistance!")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, I am always having a problem getting bear pelts of a quality that I can work with and truly make shine.  If you could bring me four preserved bear hides, I can reward you for your efforts.")
	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner003.mp3", 3729469841, 921407790)
	Dialog.AddOption("I would be happy to gather those for you.", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","thank",0,0,Spawn)
	Dialog.AddDialog("Perfect, once I am done with all the sewing and dying for this job I can get started on some top notch pelt work!")
	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner004.mp3", 237301026, 160623065)
	Dialog.AddOption("That sounds great! I'll be back with the pelts.")
	Dialog.Start()
end


