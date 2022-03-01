--[[
	Script Name	: SpawnScripts/NektroposCastle/MasterEldinNecrosis.lua
	Script Purpose	: Master Eldin Necrosis 
	Script Author	: smash
	Script Date	: 2016.01.24
	Script Notes	: 
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 174)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, 174) then
		Dialog1(NPC, Spawn)
	elseif HasQuest(Spawn, 174) and GetQuestStep(Spawn, 174) ~= 11 then
		Dialog2(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, 174) then
		Dialog3(NPC, Spawn)
	else
		Dialog4(NPC, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/master_eldin_necrosis_/nektropos/eldin001.mp3", "", "", 1924861304, 1919830896, Spawn)
	AddConversationOption(conversation, "Wait a minute!  Who are you?", "Dialog1_1")
	AddConversationOption(conversation, "Ok crazy, I'm getting out of here.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Who are you?  Who dares to challenge the might of Eldin?")
end

function Dialog1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/master_eldin_necrosis_/nektropos/eldin002.mp3", "", "", 2253492197, 1707213719, Spawn)
	AddConversationOption(conversation, "Okay, so what are you doing here?", "Dialog1_2")
	AddConversationOption(conversation, "Yeah right.  Okay well have fun Eldin... goodbye.")
	StartConversation(conversation, NPC, Spawn, "Fool! Don't you recognize the power of the unliving? I am Eldin, and I am the greatest necromancer to ever live!")
end

function Dialog1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/master_eldin_necrosis_/nektropos/eldin003.mp3", "", "", 3928579694, 2557793051, Spawn)
	AddConversationOption(conversation, "Okay, so what's the wall you've hit?", "Dialog1_3")
	AddConversationOption(conversation, "I'm sorry I hate the dead, I need to get out of here!")
	StartConversation(conversation, NPC, Spawn, "Well, honestly, I hit a wall. This castle is haunted and contains some of the most powerful spirits I've ever encountered. I hoped to use some of them and expand my army of undead minions.")
end

function Dialog1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/master_eldin_necrosis_/nektropos/eldin004.mp3", "", "", 3224153706, 3957572596, Spawn)
	AddConversationOption(conversation, "Is there anything I can do to help?", "Dialog1_4")
	AddConversationOption(conversation, "That's too bad.  Well better luck next time, I'm afraid I've other matters to attend to.")
	StartConversation(conversation, NPC, Spawn, "These other spirits draw undue attention to my presence here. It's hard to sneak up on your prey if they already know from which direction you're coming. I fear I may have to leave the castle empty-handed.")
end

function Dialog1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/master_eldin_necrosis_/nektropos/eldin005.mp3", "", "", 684634683, 4205425239, Spawn)
	AddConversationOption(conversation, "Alright, I'll do it but I expect to be well paid for my time!", "OfferTrinketsOfTheDead")
	AddConversationOption(conversation, "If you're so powerful, you don't need my help.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Perhaps you can help.  But you aren't nearly as powerful in the undead arts as I am!  If you go in there and dissipate a few ghosts, they may leave something personal behind. This is all I need to seize control of these unruly spirits.")
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)	
	PlayFlavor(NPC, "", "Why are you here?  Useless! You're the worst minion I've ever had in my employ.  Now, go out there and finish what I've asked you to do! ", "tapfoot", 1689589577, 4560189, Spawn)
end

function Dialog3(NPC, Spawn)
	local conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "Ok crazy, I'm getting out of here.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Who are you?  Who dares to challenge the might of Eldin?", "voiceover/english/master_eldin_necrosis_/nektropos/eldin001.mp3", 1924861304, 1919830896)
end

function Dialog4(NPC, Spawn)
	local conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "I'll keep you in mind.  Farewell Eldin.")
	StartConversation(conversation, NPC, Spawn, "Welcome back! Perhaps you're not as useless as you appear. Many thanks for all your hard work. Here is the coin I promised you. I appreciate your efforts! If you wish to help me again, I will pay you equally as well.", "voiceover/english/master_eldin_necrosis_/nektropos/eldin007.mp3", 2193129488, 1209581027)
	SetStepComplete(Spawn, 174, 11)
end

function OfferTrinketsOfTheDead(NPC, Spawn)
	OfferQuest(NPC, Spawn, 174)
end
