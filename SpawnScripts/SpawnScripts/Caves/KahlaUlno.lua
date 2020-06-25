--[[
	Script Name	: SpawnScripts/Caves/KahlaUlno.lua
	Script Purpose	: Kahla Ulno 
	Script Author	: Scatman
	Script Date	: 2009.09.04
	Script Notes	: 
--]]

local QUEST_1 = 499

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	RandomVoice(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_1) then
		PlayFlavor(NPC, "", "Still no conclusions.", "", 1689589577, 4560189, Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		Greetings(NPC, Spawn, conversation)
	end
end

function RandomVoice(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1035.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1035.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1035.mp3", "", "", 0, 0, Spawn)
	end
end

-------------------------------------------------------------------------------------------------------------------------
--							QUEST 1
-------------------------------------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1035.mp3", "", "", 0, 0)
	AddConversationOption(conversation, "Help how?", "dlg_1_1")
	AddConversationOption(conversation, "Nope, sorry.")
	StartConversation(conversation, NPC, Spawn, "Greetings! I don't suppose you have some time to help an information-hungry kerra like myself, do you?")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What's that?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Well, I'm very interested in the creatures that inhabit these caves. I am trying to catalog these creatures so I can better compare them with their cousins found elsewhere. But I've run into a problem.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can get them for you.", "dlg_2_3")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "The amount of information I can get from living specimens is minimal. I tried to kill some, but I am no fighter. If I could get a number of dead specimens it would be a huge boon to my work.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "You can? That would be great. I think four of the spiders, four of the bats, and four of the flying serpents would be enough for me to get most of my research done.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 4 then
		AddConversationOption(conversation, "Yes I got them.", "dlg_13_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Did you get the creatures?")
end

function dlg_13_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Glad to hear it.")
	StartConversation(conversation, NPC, Spawn, "Perfect! Thank you so much! This will help me a great deal.")
end