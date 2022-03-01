--[[
	Script Name	: SpawnScripts/ButcherblockMountains/ResearcherEruwun.lua
	Script Purpose	: Researcher Eruwun 
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local UnusualPalate = 271

function spawn(NPC)
	ProvidesQuest(NPC, UnusualPalate)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,1)
	
	if HasCompletedQuest(Spawn, UnusualPalate) == false and HasQuest(Spawn, UnusualPalate) == false and CanReceiveQuest(Spawn, UnusualPalate) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am.  What is it you are looking to have done?", "dlg_1_1")
		AddConversationOption(conversation, "Not at the moment.  Farewell for now.")
		StartConversation(conversation, NPC, Spawn, "Ah, you might be just who I was hoping for.  I am assuming you are here looking for some work, are you not?")
	elseif GetQuestStep(Spawn, UnusualPalate) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet, but I will return soon.")
		StartConversation(conversation, NPC, Spawn, "Were you able to find the glands I need?")
	elseif GetQuestStep(Spawn, UnusualPalate) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have them right here.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Were you able to find the glands I need?")
        elseif HasCompletedQuest(Spawn, UnusualPalate) == true then
                Say(NPC, "What a wealth of knowledge Faydwer is! If I spend the rest of my days in study here, it will not be enough time.")
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
	end
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "That's interesting, but what does that have to do with me?", "dlg_1_2")
		AddConversationOption(conversation, "Well, that is definitely a boon for them.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Excellent.  I am looking to research some of the more unique creatures to Faydwer, and one in particular is fascinating to me.  The rust creatures that wander the beach can turn metal into rust in very short order, and then consume the corrosion as sustenance.  With all the activity on the docks and what comes up on the beaches, they never seem to have a shortage of food.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "We have a deal, then.  I will return soon.", "GiveUnusualPalate")
	StartConversation(conversation, NPC, Spawn, "I want to know how they turn metal into rust so quickly.  I imagine this has something to do with their saliva, and I want to study it.  Bring me a few of their saliva glands, if you can extract them without damaging them.  I will, of course, pay you for your time.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "That's interesting, but what does that have to do with me?", "dlg_8_2")
		AddConversationOption(conversation, "Well, that is definitely a boon for them.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Excellent.  I am looking to research some of the more unique creatures to Faydwer, and one in particular is fascinating to me.  The rust creatures that wander the beach can turn metal into rust in very short order, and then consume the corrosion as sustenance.  With all the activity on the docks and what comes up on the beaches, they never seem to have a shortage of food.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "We have a deal, then.  I will return soon.", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "I want to know how they turn metal into rust so quickly.  I imagine this has something to do with their saliva, and I want to study it.  Bring me a few of their saliva glands, if you can extract them without damaging them.  I will, of course, pay you for your time.")
end

function dlg_11_1(NPC, Spawn)
	SetStepComplete(Spawn, UnusualPalate, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thanks to you as well.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Well, well!  This is excellent!  I may have to get these back to Gorowyn before I can really study them, but I am certainly looking forward to it.  Here is the payment you were promised.  My thanks again for your work.  Farewell.")
end

function GiveUnusualPalate(NPC, Spawn)
	OfferQuest(NPC, Spawn, UnusualPalate)
end
