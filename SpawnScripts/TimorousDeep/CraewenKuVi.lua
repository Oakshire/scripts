--[[
	Script Name	: SpawnScripts/TimorousDeep/CraewenKuVi.lua
	Script Purpose	: Craewen Ku'Vi <Chrykori Standard>
	Script Author	: John Adams
	Script Date	: 2009.02.26
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 122
QUEST_2 = 123

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
			Say(NPC, "Thank you.", Spawn)
		elseif HasQuest(Spawn, QUEST_2) then
			HaveYouSlainHim(NPC, Spawn, conversation)
		else
			DidYouDoAsIOrdered(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouDoAsIOrdered(NPC, Spawn, conversation)
	else
		BeenGivenTheGoAhead(NPC, Spawn, conversation)
	end
end

------------------------------------------------------------------------------------------------------
--						QUEST 1
------------------------------------------------------------------------------------------------------

function BeenGivenTheGoAhead(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/craewen_ku_vi/_exp04/exp04_rgn_timorous_deep/chrykori_tie/kuvi/kuvi000.mp3", "", "", 3003708806, 203405231, Spawn)
	AddConversationOption(conversation, "We should stop them.", "dlg_35_1")
	StartConversation(conversation, NPC, Spawn, "Craewen Ku'Vi, Chrykori Standard. Though we are not yet taking large-scale action against the Haoaerans, I have been given the go ahead to 'interact' with them in any way I see fit. After all, they have been 'interacting' with us and proving to be quite the nuisance. Just south of here you'll find the place where their turf-hunters congregate. From there they move out, intent on capturing and enslaving us.")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/craewen_ku_vi/_exp04/exp04_rgn_timorous_deep/chrykori_tie/kuvi/kuvi001.mp3", "", "", 4081585464, 1720216201, Spawn)
	AddConversationOption(conversation, "An excellent plan.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "We should do more than that. We should rid their heads of any thought of disturbing us. When their turf-hunters make their first capture, they are rewarded with 'pride feathers.' They dress themselves in these feathers as a further mockery aimed directly at us, " .. GetName(Spawn) .. ". I want to strip them of their pride. It is shameful for a turf-hunter to lose their pride feathers. A field of dead hunters with missing feathers will send a strong message, I think.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouDoAsIOrdered(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/craewen_ku_vi/_exp04/exp04_rgn_timorous_deep/chrykori_tie/kuvi/kuvi003.mp3", "", "", 1083166353, 2321357216, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "I have.", "dlg_36_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you do as I ordered?")
end

function dlg_36_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/craewen_ku_vi/_exp04/exp04_rgn_timorous_deep/chrykori_tie/kuvi/kuvi004.mp3", "", "", 1541155744, 479902070, Spawn)
	AddConversationOption(conversation, "They will be a bloody mass in your hand.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "I am glad to hear it. I myself have sought out fights with the turf-hunters. Though I overcame many of their best, I was finally snared by Valcryn. I was among the prisoners held in Pyrrin Roost. In capturing me, he became a hero to his people, and he was elected to lead the turf-hunters. Even now, long after my escape, he resides at their head, plotting their strategies. My shame was his pride, " .. GetName(Spawn) .. ". and I wish to strip him of it. Bring his pride feathers--and his head.")
end

-----------------------------------------------------------------------------------------------------------
--						QUEST 2
-----------------------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function HaveYouSlainHim(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/craewen_ku_vi/_exp04/exp04_rgn_timorous_deep/chrykori_tie/kuvi/kuvi006.mp3", "", "", 893812873, 507074747, Spawn)
	
	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes, he is dead.", "dlg_41_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you slain him?")
end

function dlg_41_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/craewen_ku_vi/_exp04/exp04_rgn_timorous_deep/chrykori_tie/kuvi/kuvi007.mp3", "", "", 421487037, 477036489, Spawn)
	AddConversationOption(conversation, "You are welcome.", "dlg_41_2")
	StartConversation(conversation, NPC, Spawn, "With him gone, fewer Sarnak will suffer within Pyrrin Roost. Thank you, " .. GetName(Spawn) .. ".")
end