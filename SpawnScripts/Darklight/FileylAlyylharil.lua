--[[
	Script Name	: SpawnScripts/Darklight/FileylAlyylharil.lua
	Script Purpose	: Fileyl Alyylharil 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

Arasai = 17
QUEST_1 = 80
QUEST_2 = 81
QUEST_3 = 82
QUEST_4 = 83

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					HelloAgain(NPC, Spawn)
				elseif HasQuest(Spawn, QUEST_4) then
					HelloAgain(NPC, Spawn)
				else
					LeavingHateAnytimeSoon(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				TalkToMeLater(NPC, Spawn)
			else
				DidYouCollectWeeds(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			DidYouCollectWeeds(NPC, Spawn, conversation)
		else
			DoYouHaveThePelts(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		DoYouHaveThePelts(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == Arasai then
			OneOfYou(NPC, Spawn, conversation)
		else
			NewToHatesEnvy(NPC, Spawn, conversation)
		end
	end
	
	--[[
	


	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl100.mp3", "", "", 197775186, 684715500, Spawn)
		AddConversationOption(conversation, "I found this pelt that you might be interested in.", "dlg_8_1")
		AddConversationOption(conversation, "Nope.")
		StartConversation(conversation, NPC, Spawn, "I guess you'll be leaving soon, eh?")
	end

	if convo==9 then

	end

	if convo==11 then

	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl004.mp3", "", "", 3186146596, 1953587154, Spawn)
		AddConversationOption(conversation, "Yes.", "dlg_13_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the pelts?")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl008.mp3", "", "", 3278232788, 3073634729, Spawn)
		AddConversationOption(conversation, "Yes, I did. Here you go.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Did you collect the weeds?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl011.mp3", "", "", 1920696283, 4232876553, Spawn)
		AddConversationOption(conversation, "Maybe, why?", "dlg_19_1")
		StartConversation(conversation, NPC, Spawn, "Hello again. Leaving Hate's Envy anytime soon?")
	end--]]
end

---------------------------------------------------------------------------------------------
--					QUEST 1
---------------------------------------------------------------------------------------------

function NewToHatesEnvy(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl000.mp3", "", "", 3623847893, 3999510628, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Hello. New to Hate's Envy?")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl001.mp3", "", "", 3801739584, 171673650, Spawn)
	AddConversationOption(conversation, "What work do you have?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "I thought so, you had that look about you. I'm not sure if you're familiar with the way things work around here, but in general Hate's Envy tends to attract people looking for work. Immigration laws in Neriak have relaxed somewhat lately, and Hate's Envy has reaped the benefits of that. For someone like me, that means a large labor force. Which is, I imagine, why you're speaking with me--for work.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl002.mp3", "", "", 648997851, 4053921867, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "I don't think it matters much to you. It will earn you money, that's what's important. I've got it on good authority that the mayor is looking to clear out the dusk prowlers. Now, this is good, because they've been nothing but trouble since they got here. But it's also bad, because the more of them there are around the easier it is to get their pelts. Without pelts, I don't make any money. Thus, I need you to go collect some pelts for me.")
end

function OneOfYou(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl000_arasai.mp3", "", "", 2813168737, 3167084012, Spawn)
	AddConversationOption(conversation, "One of me?", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Ah, it's one of... you.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl001_arasai.mp3", "", "", 1120312592, 2814949135, Spawn)
	AddConversationOption(conversation, "Distaste?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Yes. One of you. One of Cristanos' chosen. You will get special treatment if you travel to Neriak. But don't worry, for each unearned right the Queen drapes about your shoulders, the distaste some have for you will only increase.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl002_arasai.mp3", "", "", 69953400, 3339174619, Spawn)
	AddConversationOption(conversation, "Very well.", "dlg_2_3")
	AddConversationOption(conversation, "I am no slave.")
	StartConversation(conversation, NPC, Spawn, "You are not Teir'Dal, you are but our slave. Keeping that in mind at all times will make your time spent in our company all the easier. Forget it and, well, there are some who need little excuse to start trouble, especially with one of you.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl003_arasai.mp3", "", "", 2450188832, 1514540923, Spawn)
	AddConversationOption(conversation, "What work?", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "And talking like that will only hasten your demise. If you're looking for acceptance, go find Queen Cristanos. If you're looking for work, then you'll find it here.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DoYouHaveThePelts(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl004.mp3", "", "", 3186146596, 1953587154, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes.", "dlg_7_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Do you have the pelts?")
end

function dlg_7_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl005.mp3", "", "", 2096271371, 3465768991, Spawn)
	AddConversationOption(conversation, "What work?", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Perfect. These are fine. As promised here's your payment. Keep working for me and I'll be sure to put in a good word for you with my political contacts in Neriak. I do have more work if you're interested.")
end

-------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl006.mp3", "", "", 3456710239, 1509006332, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferQuest2")
	AddConversationOption(conversation, "This doesn't sound like something I'd be interested in.")
	StartConversation(conversation, NPC, Spawn, "I use the Malkaen Weed that grows around here as part of a curing process. The process takes a very large amount of the weed, though. Fortunately, nobody ever sells the stuff since it's lying around everywhere. As such, it's dirt cheap or free, you just have to have someone to collect it. Which is what I'd like you to do.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function DidYouCollectWeeds(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl008.mp3", "", "", 3278232788, 3073634729, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_2) and not HasCompletedQuest(Spawn, QUEST_3)) or (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2) then
		AddConversationOption(conversation, "Yes, I did. Here you go.", "dlg_9_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you collect the weeds?")
end

function dlg_9_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl009.mp3", "", "", 3832374147, 290832441, Spawn)
	AddConversationOption(conversation, "I can bring it to her.", "OfferQuest3")
	AddConversationOption(conversation, "I do mind, actually.")
	StartConversation(conversation, NPC, Spawn, "Good, good. I can get to work on more orders now. On that note, I've completed an order and need it delivered. Do you mind running it to the customer for me? The order is for Danya Halfmoon, she's usually outside at her anvil, just west of here.  Yah, I'd do it but... well she's been quite annoying lately.")
end

---------------------------------------------------------------------------------------------
--					QUEST 3
---------------------------------------------------------------------------------------------

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function TalkToMeLater(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say(NPC, "Talk to me later, I'm busy right now.", Spawn)
end

---------------------------------------------------------------------------------------------
--					QUEST 4
---------------------------------------------------------------------------------------------

function LeavingHateAnytimeSoon(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl011.mp3", "", "", 1920696283, 4232876553, Spawn)
	AddConversationOption(conversation, "Maybe, why?", "dlg_11_1")
	StartConversation(conversation, NPC, Spawn, "Hello again. Leaving Hate's Envy anytime soon?")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl012.mp3", "", "", 245191252, 630199436, Spawn)
	AddConversationOption(conversation, "I'd be interested.", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "I have another delivery for you. This time the order needs to be delivered west of T'Vatar Post, which is north of here. Interested?")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl013.mp3", "", "", 240477682, 62641979, Spawn)
	AddConversationOption(conversation, "I understand.", "OfferQuest4")
	AddConversationOption(conversation, "I'd rather not.")
	StartConversation(conversation, NPC, Spawn, "It's for Dirzdia T'Zauvirr. She asked for it to be delivered near the southern bridge that crosses the Searing Tendril. That's the river that flows from the Smoldering Lake. To get there, follow the path out of Hate's Envy. When you hit T'Vatar Post, go west. When the fork splits, follow it left.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function HelloAgain(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say(NPC, "Hello Again.", Spawn)
end