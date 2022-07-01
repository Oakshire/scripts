--[[
	Script Name	: SpawnScripts/Starcrest/FawnStarstone.lua
	Script Purpose	: Fawn Starstone 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
ProvidesQuest(NPC,241)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog2(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wonderful! Thank you so much.")
	Dialog.AddOption("I'll be back.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to the village!  I hope you find everything you need.  I wish I had!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1051.mp3", 0, 0)
    if not HasQuest(Spawn,241) and not HasCompletedQuest(Spawn,241)then
	Dialog.AddOption("What do you mean, you wish you had?", "Dialog4")
    end
	Dialog.AddOption("Thanks for the welcome!  See you around!")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh I suppose I'll need some seeds too. And I don't just need soil, I need things to enrich the soil I already have. I'd like to get some diatomaceous sand from the crabs of Antonica. I believe fish eggs would help with that too, so I'd like some of those as well. As for seeds, I'm sure you can collect some stuck to the fur of some of the mammals that wander around Antonica. If you could bring me all of these items it would help me greatly!")
	Dialog.AddOption("I can get them.", "QuestOffer")
	Dialog.Start()
end

function QuestOffer(NPC, Spawn)
    OfferQuest(NPC, Spawn, 241)
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well ... I hate to complain, but I thought the village would have more trees. Yes, I know ... I could move elsewhere, but I've come to love my new home.  Hmm... I wonder... would you help me bring a little more greenery to the area?")
	Dialog.AddOption("What do you have in mind?", "Dialog5")
	Dialog.AddOption("I'm sorry, I haven't time right now.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It would be nice to have more trees, but that's not practical. I'm building a garden behind my house, so I can look at it and imagine the whole village is verdant. The first thing I need is soil.")
	Dialog.AddOption("Where can I find some?", "Dialog3")
	Dialog.Start()
end



