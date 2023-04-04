--[[
	Script Name		: SpawnScripts/TheHiddenVillageofKugup/ChiefKaorf.lua
	Script Purpose	: Chief Kaorf
	Script Author	: neatz09
	Script Date		: 2023.04.03
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Say(NPC, "Lick my frog balls!")
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello again traveler.  It is good that you have returned to us in our time of need.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1060.mp3", 0, 0)
	Dialog.AddOption("Your time of need?  Has something happened?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes. Our scouts have returned and informed us that Venekor has grown angry with the incursion of adventurers in these lands!  This could spell certain doom for our people!")
	Dialog.AddOption("Venekor?", "Dialog6")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Tae Ew are the cruel wardens that guard our people and subject them to daily torture. If it wasn't for their dragon master, our people would have been free long ago.    ")
	Dialog.AddOption("Dragon master?!?", "Dialog5")
	Dialog.AddOption("Sorry but I've got some other business to attend to.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! There is no time to lose! You must leave the village immediately and head to the Temple of Cazic-Thule. The future of the froglok race depends upon your success!")
	Dialog.AddOption("Don't worry, chief, I know how to deal with dragons!")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now that their Lord Venekor has gotten wind of our preparation of our impending attack, there is no possible way we could leave the village.  Even now their scouts monitor our movements!")
	Dialog.AddOption("I have some allies. We could enter the temple and take care of Venekor!", "Dialog4")
	Dialog.AddOption("I really wish I could help but a dragon is going to be a bit much for me right now.")
	Dialog.Start()
end