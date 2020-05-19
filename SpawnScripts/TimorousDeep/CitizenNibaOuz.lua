--[[
	Script Name	: SpawnScripts/TimorousDeep/CitizenNibaOuz.lua
	Script Purpose	: Citizen Niba'Ouz 
	Script Author	: John Adams
	Script Date	: 2009.02.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_FROM_TAROCHE = 109
QUEST_1 = 110
QUEST_2 = 111

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
	
	if HasQuest(Spawn, QUEST_FROM_TAROCHE) and GetQuestStep(Spawn, QUEST_FROM_TAROCHE) == 1 then
		AddConversationOption(conversation, "I have some special bait from Taroche Dry'Zok.", "dlg_7_1")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/qst_nibaouz_done_one_6b94b330.mp3", "I'll find the Gorger some day.", "", 3567000296, 2773766764, Spawn)
		elseif HasQuest(Spawn, QUEST_2) then
			DidYouCatchOneyet(NPC, Spawn, conversation)
		else
			DidYouCatchThem(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouCatchThem(NPC, Spawn, conversation)
	else
		if GetLevel(Spawn) < 3 then
			PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/qst_nibaouz_done_one_6b94b330.mp3", "I'll find the Gorger some day.", "", 3567000296, 2773766764, Spawn)
		else
			Hello(NPC, Spawn, conversation)
		end
	end
end

-----------------------------------------------------------------------------------------------
--						QUEST FROM TAROCHE
-----------------------------------------------------------------------------------------------

function dlg_7_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_TAROCHE, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz001.mp3", "", "", 2125587846, 3993478301, Spawn)
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "You're welcome.")
	else
		AddConversationOption(conversation, "So, what are you doing?", "dlg_6_1")
	end
	
	StartConversation(conversation, NPC, Spawn, "Ah, great! Thank you. That Dry'Zok... always out to make something new.")
end

-----------------------------------------------------------------------------------------------
--						QUEST 1
-----------------------------------------------------------------------------------------------

function Hello(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz000.mp3", "", "", 1938772074, 3162234637, Spawn)
	AddConversationOption(conversation, "What are you doing?", "dlg_6_1")
	AddConversationOption(conversation, "Got to go, bye.")
	StartConversation(conversation, NPC, Spawn, "Hello.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz002.mp3", "", "", 2083730614, 3398082717, Spawn)
	AddConversationOption(conversation, "Sure, I'll help.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Merely fishing. I was stationed here once, some time ago, and the fishing was ... well it wasn't necessarily the best place to fish, but it was good enough for me to come back. The fish bite at a pace I am comfortable with. I also sell the Chrykori saltfins I catch for a bit of coin. Would you care to help me catch some? It is really quite relaxing.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouCatchThem(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz004.mp3", "", "", 2669727388, 3701951147, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes, I did.", "dlg_7_2")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you catch them?")
end

function dlg_7_2(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz002.mp3", "", "", 2083730614, 3398082717, Spawn)
	AddConversationOption(conversation, "Sure, I'll help.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Merely fishing. I was stationed here once, some time ago, and the fishing was ... well it wasn't necessarily the best place to fish, but it was good enough for me to come back. The fish bite at a pace I am comfortable with. I also sell the Chrykori saltfins I catch for a bit of coin. Would you care to help me catch some? It is really quite relaxing.")
end

-----------------------------------------------------------------------------------------------
--						QUEST 2
-----------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function DidYouCatchOneyet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz007.mp3", "", "", 3134955716, 150731510, Spawn)
	
	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes.", "dlg_10_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you catch one yet?")
end

function dlg_10_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz008.mp3", "", "", 3504914136, 1012324265, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Nice work! You're a natural. Maybe some day you'll even fish up the biggest bull of them all, Vethka the Gorger. I first saw him when I was originally stationed here, and none have yet managed to catch him. Since then he's stolen my bait a number of times. If you find him... let me know. Anyway, thank you for your help.")
end