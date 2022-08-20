--[[
	Script Name		: SpawnScripts/TimorousDeep/DvarkorSkanin.lua
	Script Purpose	: Dvarkor Ska'nin
	Script Author	: Ememjr
	Script Date		: 2022.08.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Player)
	RandomGreeting(NPC, Player)
	Dialog.New(NPC, Player)
	Dialog.AddDialog("You show interest in the crafting trade.  Good.  We can always use talented artisans.  I can help you get started.  Would you be interested?")
	Dialog.AddRequirement(REQ_REQ_TSLEVEL,1)
	Dialog.AddOption("Yes, please teach me.", "Dialog1")
	Dialog.AddOption("No, not at the moment.")
	
	Dialog.New(NPC, Player)
	Dialog.AddRequirement(REQ_TSLEVEL_GREATER_OR_EQUAL, 2)
	Dialog.AddRequirement(REQ_TSLEVEL_LESS_OR_EQUAL, 8)
	Dialog.AddDialog("I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your specialty.  If you would like a tutorial on crafting, Rozokal Niba'mok will be happy to assist you.")
	
	Dialog.New(NPC, Player)
	Dialog.AddRequirement(REQ_TSLEVEL_GREATER_OR_EQUAL, 10)
	Dialog.AddRequirement(REQ_TSLEVEL_LESS_OR_EQUAL, 18)
	Dialog.AddDialog("I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your specialty.  If you would like a tutorial on crafting, Rozokal Niba'mok will be happy to assist you.")
	
	
	Dialog.Start()
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)
--well met, greetings, salutations
-- only "i have nothing to teach"
	if choice == 1 then
		PlayFlavor(NPC, "", "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your specialty.  If you would like a tutorial on crafting, Rozokal Niba'mok will be happy to assist you.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "You are free to use our crafting facilities to hone your skills and master your craft.  If you would like a tutorial on crafting, Rozokal Niba'mok will be happy to assist you, and if you'd like to change your crafting profession, Salviln Grau'tuz can assist.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	end
	
end

function Dialog1(NPC, Spawn)
    
    -- Give artidan essentials 1 and 2 and advace TS to level 2
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")
	Dialog.AddOption("I will start on that now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Best of luck!")
	Dialog.AddOption("Thanks, and farewell.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Fortune be with you!")
	Dialog.AddOption("Thank you, and good bye.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You show interest in the crafting trade.  Good.  We can always use talented artisans.  I can help you get started.  Would you be interested?")
	Dialog.AddOption("Yes, please teach me.", "Dialog1")
	Dialog.AddOption("No, not at the moment.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm glad you have come back for more training, it looks like you've learned quite a bit in a very short time.  I can certify you in your chosen trade class. Before I begin your paperwork I'll need your name.")
	Dialog.AddOption("My name is XXXXX.", "Dialog2")
	Dialog.AddOption("No thank you, I'll come back later.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm glad that you continued on as an Outfitter and came back to advance your skills.  I can certify you in your chosen trade specialty. I need your name before I can start your paperwork.")
	Dialog.AddOption("My name is Calisharoo.", "Dialog3")
	Dialog.Start()
end
