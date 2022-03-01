--[[
	Script Name	: SpawnScripts/TimorousDeep/TertiaryMakKi.lua
	Script Purpose	: Tertiary Mak'Ki 
	Script Author	: John Adams
	Script Date	: 2009.02.22
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 119
QUEST_2 = 120

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
			Say(NPC, "We are done.", Spawn)
		elseif HasQuest(Spawn, QUEST_2) then
			Say(NPC, "We are done.", Spawn)
		else
			DidYouFindThem(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouFindThem(NPC, Spawn, conversation)
	else
		Greetings(NPC, Spawn, conversation)
	end
end

-----------------------------------------------------------------------------------------------
--				QUEST 1
-----------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_mak_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/makki/makki000.mp3", "", "", 1111104911, 1918008449, Spawn)
	AddConversationOption(conversation, "I could get some samples for you.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Greetings, I am Tertiary Mak'Ki. I have been studying the native species of this island and determining what purpose, if any, they may serve in our military maneuvers. Most recently I have become interested in the crusty rustbeasts in the Timeworn Pools far to the west. Their acidic secretions are rife with potential. Unfortunately, I am stuck here for the time being working on a previous project.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouFindThem(NPC, Spawn, conversation)
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes, here are their acid sacs. Potent indeed.", "dlg_31_1")
	else
		AddConversationOption(conversation, "No.")
	end
	
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_mak_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/makki/makki002.mp3", "", "", 2068402346, 4245581855, Spawn)
	StartConversation(conversation, NPC, Spawn, "Did you find them?")
end

function dlg_31_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_mak_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/makki/makki003.mp3", "", "", 2020057663, 3501237642, Spawn)
	AddConversationOption(conversation, "All right, I'll deliver them.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Ah, perfect! This... is impressive! These don't even need to be treated--look at how easily the substance affects this metal. I know just the person who can put these to use. His contact is Secondary Arozik Sky'Ki. Bring them to him. You can find him up in Trythec Loft to the southwest.")
end

-------------------------------------------------------------------------------------------
--					QUEST 2
-------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_mak_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/qst_makki_too_low_95835260.mp3", "The inhabitants of this island are truly quite interesting.", "", 3282226466, 1304950151, Spawn)
--]]