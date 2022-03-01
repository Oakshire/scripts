--[[
	Script Name	: SpawnScripts/TimorousDeep/TertiaryDihHa.lua
	Script Purpose	: Tertiary Dih'Ha 
	Script Author	: John Adams
	Script Date	: 2009.02.22
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_FROM_AROZIK = 130
QUEST_1 = 141
QUEST_2 = 1

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_AROZIK) and GetQuestStep(Spawn, QUEST_FROM_AROZIK) == 1 then
		AddConversationOption(conversation, "Secondary Sky'Ki told me to speak with you.", "dlg_7_1")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
		elseif HasQuest(Spawn, QUEST_2) then
		else
			AreTheyTakenCareOf(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		AreTheyTakenCareOf(NPC, Spawn, conversation)
	else
		SpeakSwiftly(NPC, Spawn, conversation)
	end

		--[[
	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha007.mp3", "", "", 1041685472, 644706986, Spawn)
		AddConversationOption(conversation, "Yes.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Did you successfully revive the soldiers?")
	end--]]
end

----------------------------------------------------------------------------------------------------------------------------------------
--								QUEST_FROM_AROZIK
----------------------------------------------------------------------------------------------------------------------------------------

function dlg_7_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_AROZIK, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha001.mp3", "", "", 936167783, 1220078217, Spawn)
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "What plight?", "dlg_7_2")
	end
	
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Good. Then they must be aware of our plight.")
end

----------------------------------------------------------------------------------------------------------------------------------------
--								QUEST 1
----------------------------------------------------------------------------------------------------------------------------------------

function SpeakSwiftly(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha000.mp3", "", "", 2496610023, 3072091488, Spawn)
	AddConversationOption(conversation, "What is going on here?", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Speak swiftly.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha002.mp3", "", "", 1333866465, 3526691037, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "The Haoaerans attacked Thulwun Station East. We didn't have much warning but we've managed to keep them from advancing too far. Unfortunately, their initial attack was somewhat crippling. My job is to mend our tactical wounds and strike back at our enemy. Haoaeran advancers have hidden themselves in front of the large gate leading to Thulwun Station. It is your task to dig them out of their hiding places and kill them. Understood?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function AreTheyTakenCareOf(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha004.mp3", "", "", 2388923565, 781958893, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes.", "dlg_8_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Are they taken care of?")
end

function dlg_8_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha005.mp3", "", "", 762224700, 657564648, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Nice work, but we're not done yet. We lost many soldiers in the initial attack, and more continue to fall on a regular basis. Tactically speaking, we are superior to the Haoaerans, but no matter how many of them we kill, they just keep coming. Meanwhile, our numbers are dwindling. For your next task, you must go to the defenses we've set up northeast of Thulwun Station and use this revitalizing tonic to rouse some of our fallen soldiers.")
end

----------------------------------------------------------------------------------------------------------------------
--								QUEST 2
----------------------------------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	--OfferQuest(NPC, Spawn, QUEST_2)
	Say(NPC, "Can't finish this yet.", Spawn)
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha006.mp3", "", "", 1880622251, 59486030, Spawn)
	AddConversationOption(conversation, "I understand and will not fail.", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "This mission is critical. We need all the soldiers we can get.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha008.mp3", "", "", 2227499160, 838414892, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "Nice work. We should be able to hold them off with our newly bolstered numbers. While we're doing that, it's up to you to cut the head from the beast. If you follow the path northeast from Thulwun Station, you will come to a small cave. It is from this cave that their leader, Assault Captain Phezzryn, is coordinating this attack. He must be taken out. When he falls, their troops will fall to disarray.")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha009.mp3", "", "", 1056066826, 2699516758, Spawn)
	AddConversationOption(conversation, "I understand.", "dlg_16_3")
	StartConversation(conversation, NPC, Spawn, "Once he's dead, speak with Secondary Shai'Dn in Thulwun Station and let him know what you've done. Good luck.")
end