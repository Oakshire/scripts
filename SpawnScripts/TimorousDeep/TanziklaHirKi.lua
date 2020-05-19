--[[
	Script Name	: SpawnScripts/TimorousDeep/TanziklaHirKi.lua
	Script Purpose	: Tanzikla Hir'Ki <Chrykori Standard>
	Script Author	: John Adams
	Script Date	: 2009.03.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 139
QUEST_2 = 140

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
			Say(NPC, "Thank you again.", Spawn)
		elseif HasQuest(Spawn, QUEST_2) then
			DidYouRetrieveWeapons(NPC, Spawn, conversation)
		else
			DidYouTakeCareOfTheirSupplies(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouTakeCareOfTheirSupplies(NPC, Spawn, conversation)
	else
		IAmTanzikla(NPC, Spawn, conversation)
	end
end

-------------------------------------------------------------------------------------------------------------
--									QUEST 1
-------------------------------------------------------------------------------------------------------------

function IAmTanzikla(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tanzikla_hir_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/hirki/hirki000.mp3", "", "", 4115201898, 1696393499, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "I am Tanzikla Hir'Ki. Welcome to torment. Thulwun Station came under attack a short while ago, and we've been working non-stop ever since then to repel them. While Tertiary Dih'Ha is acting command for our detachment, I am acting Tertiary. Based on the information we have, I believe that the Haoaerans are looking to make a big push into Thulwun Station soon. We must act swiftly, or they will likely overtake us.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tanzikla_hir_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/hirki/hirki001.mp3", "", "", 279682638, 225264555, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "I need you to destroy the supplies the Haoaeran advancers are guarding just outside the gates of the station. They have them stowed around the location in anticipation of the order to strike. When that moment comes, they will unpack their supplies and set up defensible posts from which to better attack Thulwun Station. We must preempt that with the destruction of their supplies. Find the Haoaeran advancers outside Thulwun Station and eliminate these assets.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouTakeCareOfTheirSupplies(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tanzikla_hir_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/hirki/hirki003.mp3", "", "", 500996465, 1037608249, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes.", "dlg_17_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you take care of their supplies?")
end

function dlg_17_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tanzikla_hir_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/hirki/hirki004.mp3", "", "", 565281593, 236720523, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Nice work. That will buy us some time. Part of why we're in the situation we're in is because we underestimated the metalworking skills of the Haoaerans. Their weapons aren't nearly as weak as they once were. We aren't sure if the Haoaerans made them themselves, but we'd like to figure that out. Please travel up to Thulwun Station once again. Search the bodies of the fallen Haoaerans and bring me their weapons for study.")
end

-------------------------------------------------------------------------------------------------------------------
--									QUEST 2
-------------------------------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function DidYouRetrieveWeapons(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tanzikla_hir_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/hirki/hirki006.mp3", "", "", 1514090690, 2956933303, Spawn)
	
	if GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes, I did.", "dlg_19_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you retrieve their weapons?")
end

function dlg_19_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tanzikla_hir_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/hirki/hirki007.mp3", "", "", 2564656544, 3314424538, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Excellent, excellent. I believe Dih'Ha has worked out a solution to this mess. I will be ready in case more fighting is required of me, but I must now begin studying these weapons. Thank you, " .. GetName(Spawn) .. ".")
end