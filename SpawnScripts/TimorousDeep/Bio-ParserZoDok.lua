--[[
	Script Name	: SpawnScripts/TimorousDeep/Bio-ParserZoDok.lua
	Script Purpose	: Bio-Parser Zo'Dok 
	Script Author	: John Adams
	Script Date	: 2009.02.27
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 124
QUEST_2 = 125

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			Say(NPC, "You're done.", Spawn)
		elseif HasQuest(Spawn, QUEST_2) then
			DidYouGetTheRoots(NPC, Spawn, conversation)
		else
			DidYouCollectThem(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouCollectThem(NPC, Spawn, conversation)
	else
		Greetings(NPC, Spawn, conversation)
	end
end

---------------------------------------------------------------------------------------------------------------
--							QUEST 1
---------------------------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/bio-parser_zo_dok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zodok/zodok000.mp3", "", "", 652636726, 3529587114, Spawn)
	AddConversationOption(conversation, "Interesting.", "dlg_34_1")
	StartConversation(conversation, NPC, Spawn, "Greetings. I am Bio-Parser Zo'Dok. I study the land and to some capacity its inhabitants. It's actually such an inhabitant that has captured my interest. South of here I have discovered a strange plant that feeds on flesh. Specifically, it eats the skittering monitors on the loft. It lashes them to the ground with filaments that it extends from the ground, and then draws their nutrients into itself.")
end

function dlg_34_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/bio-parser_zo_dok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zodok/zodok001.mp3", "", "", 609913966, 761927847, Spawn)
	AddConversationOption(conversation, "I can do it.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Very! I've never seen anything quite like it. Any monitors that wander too close are quickly trapped in its grip. I'd love to get some samples of the monitors once they've been encapsulated in the filament. Perhaps you could lure some of them over to the plant and then pull them from the ground once it tries to eat them. Or are you too squeamish? ")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouCollectThem(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/bio-parser_zo_dok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zodok/zodok003.mp3", "", "", 280859713, 2049233430, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes, I did.", "dlg_38_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you collect them?")
end

function dlg_38_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/bio-parser_zo_dok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zodok/zodok004.mp3", "", "", 4099549313, 768729331, Spawn)
	AddConversationOption(conversation, "Sure, I can help.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Great! These will keep me busy for some time. While I study this collection, how would you like to help further my studies by gathering some Trythec roots for me? They're not nearly so... unsettling, merely a curiosity. They grow in the tiny jungle to the south.")
end

------------------------------------------------------------------------------------------------------------------
--								QUEST 2
------------------------------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function DidYouGetTheRoots(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/bio-parser_zo_dok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zodok/zodok006.mp3", "", "", 1609069608, 4045525587, Spawn)
	
	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes.", "dlg_43_1")
	else
		AddConversationOption(conversation, "No.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you get the roots?")
end

function dlg_43_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/bio-parser_zo_dok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zodok/zodok007.mp3", "", "", 4179618229, 2858561590, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Perfect. Thank you.")
end