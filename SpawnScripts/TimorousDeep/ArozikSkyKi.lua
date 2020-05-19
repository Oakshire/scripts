--[[
	Script Name	: SpawnScripts/TimorousDeep/ArozikSkyKi.lua
	Script Purpose	: Arozik Sky'Ki <Chrykori Secondary>
	Script Author	: John Adams
	Script Date	: 2009.02.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_FROM_CONZUK = 114
QUEST_FROM_MAKKI = 120
QUEST_1 = 126
QUEST_2 = 127
QUEST_3 = 128
QUEST_4 = 129
QUEST_5 = 130

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_CONZUK) and GetQuestStep(Spawn, QUEST_FROM_CONZUK) == 1 then
		AddConversationOption(conversation, "Primary Zum'Ha directed me to report to you.", "dlg_42_1")
	end
	
	if HasQuest(Spawn, QUEST_FROM_MAKKI) and GetQuestStep(Spawn, QUEST_FROM_MAKKI) == 1 then
		AddConversationOption(conversation, "Tertiary Mak'Ki told me to give you this. It will rust metal with ease.", "dlg_33_1")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						Say(NPC, "All is done with me.", Spawn)
					elseif HasQuest(Spawn, QUEST_5) then
						Say(NPC, "All is done with me.", Spawn)
					else
						DidYouGetGlyph(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					DidYouGetGlyph(NPC, Spawn, conversation)
				else
					DidYouGetTheirOrders(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				DidYouGetTheirOrders(NPC, Spawn, conversation)
			else
				DidYouFindHim(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			DidYouFindHim(NPC, Spawn, conversation)
		else
			DidYouRetrieveGlands(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouRetrieveGlands(NPC, Spawn, conversation)
	else
		IAmASarnakDude(NPC, Spawn, conversation)
	end
end

--------------------------------------------------------------------------------------------------
--					QUEST_FROM_CONZUK
--------------------------------------------------------------------------------------------------

function dlg_42_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_CONZUK, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki001.mp3", "", "", 2731024115, 325818484, Spawn)
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "What would you have me do?", "dlg_33_2")
	end
	
	AddConversationOption(conversation, "I must be going.", "dlg_42_2")
	StartConversation(conversation, NPC, Spawn, "Ah, good. I could use the extra help. The spiroc are tireless troubles.")
end

--------------------------------------------------------------------------------------------------
--					QUEST_FROM_MAKKI
--------------------------------------------------------------------------------------------------

function dlg_33_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_MAKKI, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki004.mp3", "", "", 2310635873, 1729195062, Spawn)
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "Do you have any tasks for me?", "dlg_33_2")
	end
	
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Interesting... I have someone who can put this to good use. Thank you.")
end

--------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------

function IAmASarnakDude(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki000.mp3", "", "", 1029312588, 3834902833, Spawn)
	AddConversationOption(conversation, "Do you have any tasks for me?", "dlg_33_2")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "I am Secondary Arozik Sky'Ki. It is my duty to watch over Trythec Loft. Think twice before considering causing any trouble. What brings you here?")
end

function dlg_33_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki002.mp3", "", "", 2992171556, 1387787250, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Tasks, yes. I have found that the Haoaerans coat the tips of their weapons with the venom of the skittering monitors found in the area. While they haven't refined the process, it is still woefully effective. I've seen soldiers die from wounds that should barely keep them in bed. We've been working on anti-venom, but we need more samples. I need you to go and collect some of their poison glands for me.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouRetrieveGlands(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki006.mp3", "", "", 2299189023, 2896390985, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes.", "dlg_37_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you retrieve the poison glands? I have valuable soldiers dying from flesh wounds as we speak.")
end

function dlg_37_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki007.mp3", "", "", 3008546705, 626017614, Spawn)
	AddConversationOption(conversation, "Is there anything else I can do?", "dlg_37_2")
	StartConversation(conversation, NPC, Spawn, "Perfect, we appreciate this, as I am sure you will appreciate it if you ever find one of your wounds stinking of their infection.")
end

--------------------------------------------------------------------------------------------------------------------------------
--								QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function dlg_37_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki008.mp3", "", "", 2472992114, 554256464, Spawn)
	AddConversationOption(conversation, "I will go look for him.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "I believe I can use you again, yes. I've been waiting for a scout to report back. As time drags on, however, I'm beginning to think something may have happened to him. Travel into the jungle area to the south and see if you can find him. Should you find only his remains, bring back his log book; it would help me compensate for his loss.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function DidYouFindHim(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki010.mp3", "", "", 525384220, 185678564, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_2) and not HasCompletedQuest(Spawn, QUEST_3)) or (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2) then
		AddConversationOption(conversation, "Only the leftover pieces, but here is his journal.", "dlg_43_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Well, what do you have to report? Did you find him?")
end

function dlg_43_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki011.mp3", "", "", 2921045796, 192965595, Spawn)
	AddConversationOption(conversation, "I will wait.", "dlg_42_2")
	StartConversation(conversation, NPC, Spawn, "Unfortunate. He was a good soldier, and we will not easily replace him. Give me a moment to read over his notes. We may still take something from his loss...")
end

---------------------------------------------------------------------------------------------------------------------
--									QUEST 3
---------------------------------------------------------------------------------------------------------------------

function dlg_42_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki012.mp3", "", "", 3273605735, 2364983222, Spawn)
	AddConversationOption(conversation, "Yes.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Interesting... he believes the Haoaerans are planning something big, but wasn't able to obtain a copy of their orders. Some of them went into the jungled area for a meeting, but he apparently couldn't get close enough to observe them. " .. GetName(Spawn) .. ". I need you to travel back into the jungle and obtain orders from one of the Haoaerans. We must know what they are plotting.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function DidYouGetTheirOrders(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki014.mp3", "", "", 2065400668, 430864702, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_4)) or (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 2) then
		AddConversationOption(conversation, "Yes.", "GotOrders")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you get their orders?")
end

function GotOrders(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki015.mp3", "", "", 1539951072, 947658939, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Good. Give me a moment to read over these--gah, nevermind. They're encoded. Mm... my scout mentioned that this might be an issue. Wait a minute as I look it up.")
end

--------------------------------------------------------------------------------------------------------------------------------------------
--									QUEST 4
--------------------------------------------------------------------------------------------------------------------------------------------

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki016.mp3", "", "", 741363640, 1740435446, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Ok. The decryption key we need to read this should be carried by a Haoaeran turf-hunter. They gather near here, just to the southwest. Retrieve a decoder glyph from one of them, and then we should be able to figure out what is going on.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function DidYouGetGlyph(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki018.mp3", "", "", 1968421684, 1745825812, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_4) and not HasCompletedQuest(Spawn, QUEST_5)) or (HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 2) then
		AddConversationOption(conversation, "Yes, I did.", "dlg_2_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you get the glyph?")
end

function dlg_2_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki019.mp3", "", "", 1167277602, 213920823, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Good work. Decoding this shouldn't take very long now that we have this.")
end

--------------------------------------------------------------------------------------------------------------------------------------------
--									QUEST 5
--------------------------------------------------------------------------------------------------------------------------------------------

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki020.mp3", "", "", 2912129697, 3874774240, Spawn)
	AddConversationOption(conversation, "I will go find him.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "This isn't good... the Haoaerans are plotting a full-scale attack on Thulwun Station East. I... it may have already happened. I need you to report to Tertiary Dih'Ha. You can find him above Pyrrin Roost, the Haoaeran village to our west. At the western end of Pyrrin Roost there are ladders set up that will enable you to scale the wall up to Thulwun Station East. Climbing these ladders will lead you to Tertiary Dih'Ha.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end