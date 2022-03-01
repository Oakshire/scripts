--[[
	Script Name	: SpawnScripts/PeatBog/LieutenantDawson.lua
	Script Purpose	: Lieutenant Dawson <Qeynos Guard>
	Script Author	: Scatman
	Script Date	: 2009.08.10
	Script Notes	: Updated 1/8/2020 by Shatou
--]]

local MIN_LEVEL = 5
local QUEST_FROM_JOHFRIT = 46
local QUEST_1 = 507
local QUEST_2 = 508
local QUEST_3 = 509
local QUEST_4 = 510
local QUEST_5 = 511
local QUEST_6 = 512

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
	ProvidesQuest(NPC, QUEST_6)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_JOHFRIT) then
		SetStepComplete(Spawn, QUEST_FROM_JOHFRIT, 1)
	end

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						if HasCompletedQuest(Spawn, QUEST_6) then
							Say(NPC, "Once again, thank you for all you have done.", Spawn)
						elseif HasQuest(Spawn, QUEST_6) then
							Say(NPC, "Once again, thank you for all you have done.", Spawn)
						else
							OnQuest5(NPC, Spawn, conversation)
						end
					elseif HasQuest(Spawn, QUEST_5) then
						OnQuest5(NPC, Spawn, conversation)
					else
						OnQuest4(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					OnQuest3(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				OnQuest2(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			OnQuest1(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetLevel(Spawn) < MIN_LEVEL then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/qst_dawson_toolow_bd47ca5c.mp3", "Return to me when you're a bit more experienced, I think I could use your help.", "", 664604870, 1946809996, Spawn)
		else
			DoYouHaveAQuestion(NPC, Spawn, conversation)
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------
--							QUEST 1
-----------------------------------------------------------------------------------------------------------------------------------

function DoYouHaveAQuestion(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson000.mp3", "", "", 2113696179, 3288237924, Spawn)
	AddConversationOption(conversation, "What is your mind occupied with?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Do you have a question? Please be brief, my mind is occupied at the moment.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson001.mp3", "", "", 1614058358, 1618385129, Spawn)
	AddConversationOption(conversation, "How do you plan on doing that?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "I'm not entirely sure yet. Strange things have been happening in the Peat Bog. The ecology here has taken a staggering turn and that has attracted attention. I am trying to provide a strong presence here but with no direct support from Qeynos that is tough. I just need to show Qeynos that investing more people here is necessary.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson002.mp3", "", "", 3230267563, 3912489115, Spawn)
	AddConversationOption(conversation, "Sure, what can I do?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "That is yet another thing I'm not quite certain of yet. I need time to think that over but there are enough mundane problems that I've very little time to think. Care to lend a hand?")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson003.mp3", "", "", 1827785196, 3415599407, Spawn)
	AddConversationOption(conversation, "Sure, I can do it.", "dlg_0_4")
	AddConversationOption(conversation, "Not now, sorry.")
	StartConversation(conversation, NPC, Spawn, "You can take care of some of the recurring problems while I try to focus my mind elsewhere. The fungus men around here have been causing enough incidents to warrant action. And the ravenous bog slugs are becoming more active. Take some of them out for me and it will give me the time needed to plan. Whadya say?")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson004.mp3", "", "", 146673171, 1820291654, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Great. The fungus men can be found around the mushrooms that dot the landscape. The ravenous bog slugs can be found south of here: if you follow this path to where the sewer grate lies and then head south, heading east once you hit the water, then further south, you should find them.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson005.mp3", "", "", 3763908858, 4198264181, Spawn)
	
	if (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 3) or (HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "Yes, I have.", "dlg_1_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you killed the slugs and fungus men?")
end

-----------------------------------------------------------------------------------------------------------------------------------
--							QUEST 2
-----------------------------------------------------------------------------------------------------------------------------------

function dlg_1_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson006.mp3", "", "", 74693624, 878787652, Spawn)
	AddConversationOption(conversation, "Sure, what can I do?", "dlg_1_2")
	AddConversationOption(conversation, "Sorry, no.")
	StartConversation(conversation, NPC, Spawn, "Good, it's a relief to have those taken care of. This will allow us to expend resources in more important areas. Speaking of which, I've recently received some strange reports. How'd you like to help me again?")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson007.mp3", "", "", 3523318297, 3580020244, Spawn)
	AddConversationOption(conversation, "Ok, I'll attach the beacon.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "The body of water you passed earlier: I've had at least two reports of some sort of machine in that water. I've alerted the research teams, but they are busy elsewhere. In the mean time, it would be helpful if you could do two things for me. First, find the machine to verify it exists. And, second, if it does exist, tag it with an arcanic beacon.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson008.mp3", "", "", 702901482, 1827477819, Spawn)
	
	if (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2) or (HasCompletedQuest(Spawn, QUEST_2)) then
		AddConversationOption(conversation, "Yes. I attached the beacon, but before that I was attacked by a gnoll.", "dlg_6_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you find the machine?")
end

function dlg_6_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson009.mp3", "", "", 416950362, 1150655784, Spawn)
	AddConversationOption(conversation, "Yes. I will help.", "dlg_6_2")
	AddConversationOption(conversation, "For now I must leave.")
	StartConversation(conversation, NPC, Spawn, "A gnoll?! Things are worse here than I thought. Perhaps they... hmm... I still need your help, can you stay?")
end

-----------------------------------------------------------------------------------------------------------------------------------
--							QUEST 3
-----------------------------------------------------------------------------------------------------------------------------------

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson010.mp3", "", "", 2108767843, 3888763580, Spawn)
	AddConversationOption(conversation, "Where are the ambush sites?", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "I am glad. A number of our research teams in the Peat Bog were recently ambushed. Nobody was killed, thankfully, but their work has been lost. We've escorted the researchers to safety and left the ambush sites undisturbed. I would like you to go to each site and check for any clues that may tell us who did this. It would be easy to assume it was the gnolls, but I would like evidence to complement my gut feeling.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson011.mp3", "", "", 3580800965, 1143356388, Spawn)
	AddConversationOption(conversation, "I will return.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "The first is west from Two Logs Pond, which is south from the sewer grate. The second is east of the pond in the north eastern corner of the area there. The final ambush site is directly south of the second site.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson012.mp3", "", "", 3649722083, 1259667690, Spawn)
	
	if (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 4) or (HasCompletedQuest(Spawn, QUEST_3)) then
		AddConversationOption(conversation, "Yes, at one I found a gnoll paw. There was nothing telling at the others.", "dlg_12_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Have you examined all of the ambush sites?")
end

function dlg_12_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson013.mp3", "", "", 459920710, 2550974214, Spawn)
	AddConversationOption(conversation, "Yes, I can help.", "dlg_12_2")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "That's good. Well, it's bad, but it's good. You know what I mean. This means we have less to worry about. It seems the gnolls are on the move, probably because we've found them. If our intelligence is correct they're moving a number of machines out of the Peat Bog. I don't know if this is a retreat or some movement for another advance, but we need to stop those machines. Can you help?")
end

-----------------------------------------------------------------------------------------------------------------------------------
--							QUEST 4
-----------------------------------------------------------------------------------------------------------------------------------

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson014.mp3", "", "", 3721129561, 3085892436, Spawn)
	AddConversationOption(conversation, "I'll be back when this is done.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Wonderful. Their exit route seems to start in the south-east most corner of the Peat Bog and move west from there. There should be three machines. Kill the gnolls protecting the machine, destroy the machine itself, and then move on to the next one. Our people will be along soon enough to take care of the remains.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson015.mp3", "", "", 2647530103, 2587149233, Spawn)
	
	if (HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 4) or (HasCompletedQuest(Spawn, QUEST_4)) then
		AddConversationOption(conversation, "Yes, I have.", "dlg_14_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you stop the gnolls?")
end

function dlg_14_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson017.mp3", "", "", 3063961189, 3632961186, Spawn)
	AddConversationOption(conversation, "What loose end?", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "Good. I would hate to see one of the other Lieutenants clean up my mess. Thank you. There's still one loose end to clean up, if you're willing.")
end

-----------------------------------------------------------------------------------------------------------------------------------
--							QUEST 5
-----------------------------------------------------------------------------------------------------------------------------------

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson018.mp3", "", "", 1491634247, 1091662891, Spawn)
	AddConversationOption(conversation, "I can do this.", "dlg_14_3")
	AddConversationOption(conversation, "I can't do this.")
	StartConversation(conversation, NPC, Spawn, "Dentfang. He was one of the gnolls in charge of this area. He knows he can't return after such a failure, perhaps he hopes to hide out here long enough to reclaim his honor by slaying the guards of Qeynos. Nobody wants to see that happen. My scouts have suggested three possible places within the Peat Bog where he may be hiding. I've already sent teams to two places, the two I consider least likely. I'm positive he's at the final spot, and I would like you to take care of him. What do you say?")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson019.mp3", "", "", 726337004, 1780065710, Spawn)
	AddConversationOption(conversation, "Is he dangerous?", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "Good. If you start in the southwestern corner of the Peat Bog and then travel north, you should come to the area where he's hiding. Travel there and give him what he deserves.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function OnQuest5(NPC, Spawn, conversation)
	if (HasQuest(Spawn, QUEST_5) and GetQuestStep(Spawn, QUEST_5) == 2) or (HasCompletedQuest(Spawn, QUEST_5)) then
		AddConversationOption(conversation, "I have.", "Quest5Done")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you dispose of Dentfang?")
end

function Quest5Done(NPC, Spawn)
	if HasQuest(Spawn, QUEST_5) then
		SetStepComplete(Spawn, QUEST_5, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You are welcome.", "WordHasCome")
	StartConversation(conversation, NPC, Spawn, "Good. With him gone the gnoll presence here will not be able to regain strength. They will flee or be killed. You've done a great thing for us, " .. GetName(Spawn) .. ". I appreciate it more than you know. And Qeynos, appreciates it too.")
end

-----------------------------------------------------------------------------------------------------------------------------------
--							QUEST 6
-----------------------------------------------------------------------------------------------------------------------------------

function WordHasCome(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
	AddConversationOption(conversation, "I can do this.", "OfferQuest6")
	StartConversation(conversation, NPC, Spawn, "Word has come down from above, " .. GetName(Spawn) .. ". You have been requested specifically. Because of your help here you have been noticed. You are specifically being request in The Caves. You should be very proud. I am glad to have worked with you, I am sure you will be a huge asset in the coming battle.")
end

function OfferQuest6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_6)
end