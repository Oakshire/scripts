--[[
	Script Name	: SpawnScripts/Caves/ConsulBree.lua
	Script Purpose	: Consul Bree <Qeynos Guard>
	Script Author	: Scatman
	Script Date	: 2008.09.21
	Script Notes	: Updated 1/8/2020 by Shatou
--]]

local QUEST_FROM_OAKMYST = 212
local QUEST_FROM_PEATBOG = 512
local QUEST_1 = 361
local QUEST_2 = 493
local QUEST_3 = 494
local QUEST_4 = 495
local QUEST_4_SUMMONING_STAFF_ID = 13583

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
	
	if HasQuest(Spawn, QUEST_FROM_OAKMYST) or HasQuest(Spawn, QUEST_FROM_PEATBOG) then
		AddConversationOption(conversation, "I am here as requested.", "HereAsRequested")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/qst_bree_done_c548f9b0.mp3", "The Queen was right about you. We may yet meet again.", "", 2998869341, 2973499858)
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
		IAmGladYouAreHere(NPC, Spawn, conversation)
	end
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST FROM OAKMYST
-------------------------------------------------------------------------------------------------------------------

function HereAsRequested(NPC, Spawn)
	if HasQuest(Spawn, QUEST_FROM_OAKMYST) then
		SetStepComplete(Spawn, QUEST_FROM_OAKMYST, 1)
	elseif HasQuest(Spawn, QUEST_FROM_PEATBOG) then
		SetStepComplete(Spawn, QUEST_FROM_PEATBOG, 1)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_001.mp3", "", "", 2064805321, 3198467105)
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "How can I be of service?", "dlg_0_2")
	else
		AddConversationOption(conversation, "I will get to work on my current task.", "dlg_2_2")
	end
	
	StartConversation(conversation, NPC, Spawn, "That you are. I appreciate your answering the summons.")
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 1
-------------------------------------------------------------------------------------------------------------------

function IAmGladYouAreHere(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_000.mp3", "", "", 312135119, 4181129061)
	AddConversationOption(conversation, "Why is that?", "dlg_0_1")
	AddConversationOption(conversation, "What is going on here?", "dlg_1_1")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "I am glad you are here.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_002.mp3", "", "", 2428180651, 3557450253)
	AddConversationOption(conversation, "What must I do?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "There are problems here to solve. You and I are part of the solution.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_003.mp3", "", "", 502817302, 1202580742)
	AddConversationOption(conversation, "What can I do to help?", "dlg_0_3")
	AddConversationOption(conversation, "How do you know this?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "The Rockpaw gnoll clan has wrested control of these caves to themselves. They are planning something very large.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_004.mp3", "", "", 3518125832, 3106838592)
	AddConversationOption(conversation, "Very well.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "To begin with you can help me retrieve an updated copy of the gnoll field book. My copy is more than a few weeks old and these gnolls are more organized than one would like to credit their race capable of. The leaders of each clan of gnolls within these caves will have the order book. There is a Dustpaw gnoll camp west of here, on this level. Retrieve their field book. It may be encoded. If you see a small symbol of a paw held to an eye, then it is encoded. If it is then you must find the key to the cipher, this could be carried by any gnoll. Once you have the key, bring it and the book back to me so I can study it.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_000.mp3", "", "", 3394008889, 3046376303)
	AddConversationOption(conversation, "Was there a link?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "I was here on my own a short time ago. These Caves are home to a few gnoll clans: the Dustpaw, the Mudpaw and the Rockpaw. Previously they had fought amongst themselves. After a series of strange reports from a few of the areas that surround Qeynos, I was sent here to investigate a possible link.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_001.mp3", "", "", 3459374999, 3197214487)
	AddConversationOption(conversation, "So what was the link?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "A strong link. Among the Rockpaw gnolls a new leader has come, High Shaman Zen/'Durath. He/'s smart, smarter than any other gnoll I know of. He rallied the Rockpaw gnolls and brought them victory over the other two clans. He then reestablished ties with Blackburrow. Blackburrow provided him with some contacts. Through these contacts Zen/'Durath got in touch with a few Freeportian engineers, Fluwkowir and Fulkoir Haggleton.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_002.mp3", "", "", 16239315, 349954635)
	AddConversationOption(conversation, "Why not?", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "There had been gnoll sightings in the Forest Ruins, the Oakmyst Forest and the Peat Bog. That alone is very strange. There were also reports of gnolls possessing strange machines. The purpose of most of these machines has yet to be deciphered. A couple, however, are known to us. One is meant to dig, and the other is meant to poison. When I arrived here things were quiet, for a time. Now that is no longer the case.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_003.mp3", "", "", 3632364295, 1198051029)
	AddConversationOption(conversation, "They plan on attacking Qeynos?", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "The gnolls have brought an expert smithy from Blackburrow. They/'ve been creating armor to outfit an army for some time now. And that isn/'t the only source of noise... The Haggletons have provided these gnolls with massive digging machines. When I was last down here the plans were not finalized, but it looked like they were going to tunnel directly into Qeynos. This is why we must act discretely. Panic would only complicate things at this point.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_004.mp3", "", "", 1057994736, 896440060)
	AddConversationOption(conversation, "How can I help?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "I believe so, though not directly.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_005.mp3", "", "", 3442310120, 962597541)
	if (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 4) or (HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "I have. Here it is.", "dlg_7_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	
	--------- TEMPORARY
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	AddConversationOption(conversation, "What can you tell me about the Caves?", "AboutCaves")
	StartConversation(conversation, NPC, Spawn, "Have you gotten the gnollish order book?")
end

function AboutCaves(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_000.mp3", "", "", 3394008889, 3046376303)
	AddConversationOption(conversation, "Was there a link?", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "I was here on my own a short time ago. These Caves are home to a few gnoll clans: the Dustpaw, the Mudpaw and the Rockpaw. Previously they had fought amongst themselves. After a series of strange reports from a few of the areas that surround Qeynos, I was sent here to investigate a possible link.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_001.mp3", "", "", 3459374999, 3197214487)
	AddConversationOption(conversation, "So what was the link?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "A strong link. Among the Rockpaw gnolls a new leader has come, High Shaman Zen/'Durath. He/'s smart, smarter than any other gnoll I know of. He rallied the Rockpaw gnolls and brought them victory over the other two clans. He then reestablished ties with Blackburrow. Blackburrow provided him with some contacts. Through these contacts Zen/'Durath got in touch with a few Freeportian engineers, Fluwkowir and Fulkoir Haggleton.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_002.mp3", "", "", 16239315, 349954635)
	AddConversationOption(conversation, "Why not?", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "There had been gnoll sightings in the Forest Ruins, the Oakmyst Forest and the Peat Bog. That alone is very strange. There were also reports of gnolls possessing strange machines. The purpose of most of these machines has yet to be deciphered. A couple, however, are known to us. One is meant to dig, and the other is meant to poison. When I arrived here things were quiet, for a time. Now that is no longer the case.")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_003.mp3", "", "", 3632364295, 1198051029)
	AddConversationOption(conversation, "They plan on attacking Qeynos?", "dlg_4_5")
	StartConversation(conversation, NPC, Spawn, "The gnolls have brought an expert smithy from Blackburrow. They/'ve been creating armor to outfit an army for some time now. And that isn/'t the only source of noise... The Haggletons have provided these gnolls with massive digging machines. When I was last down here the plans were not finalized, but it looked like they were going to tunnel directly into Qeynos. This is why we must act discretely. Panic would only complicate things at this point.")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_004.mp3", "", "", 1057994736, 896440060)
	AddConversationOption(conversation, "I will see what I can find out.")
	StartConversation(conversation, NPC, Spawn, "I believe so, though not directly.")
end

function dlg_7_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_006.mp3", "", "", 3677963528, 2296083792)
	AddConversationOption(conversation, "I am ready.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Great! This will prove to be very useful I am certain... Yes, their plans are as we suspected. " .. GetName(Spawn) .. ", we need to put an immediate halt to their production! Are you ready to act again?")
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 2
-------------------------------------------------------------------------------------------------------------------

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_007.mp3", "", "", 2761151538, 2929645199)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "The gnolls are creating an army that will be used to invade Qeynos. I had Emma whip up some explosives just for times like this. Take these charges. I need you to destroy the forge in the armory; it/'s on the level above this one. The gnolls also have a number of machine parts scattered around. These are not the two, main digging machines that they are using, but they are still part of the gnoll war machine and should be destroyed.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_005.mp3", "", "", 3442310120, 962597541)
	AddConversationOption(conversation, "I have. Here it is.", "dlg_7_4")
	AddConversationOption(conversation, "What can you tell me about the Caves?")
	StartConversation(conversation, NPC, Spawn, "Have you gotten the gnollish order book?")
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_008.mp3", "", "", 3464612854, 1006122097)
	if (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 3) or (HasCompletedQuest(Spawn, QUEST_2)) then
		AddConversationOption(conversation, "Yes, I destroyed the machines and the forge.", "dlg_15_1")
	else
		AddConversationOption(conversation, "I need more explosives.", "MoreExplosives")
		AddConversationOption(conversation, "No, not yet.")
	end
	AddConversationOption(conversation, "What can you tell me about the Caves?", "AboutCaves")
	AddConversationOption(conversation, "Have you learned anything new from the book?", "LearnedFromBook")
	StartConversation(conversation, NPC, Spawn, "Have you done as I asked?")
end

function LearnedFromBook(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_005.mp3", "", "", 2808914338, 1740276714)
	AddConversationOption(conversation, "Can they be stopped?", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "The gnolls have a very sophisticated attack plan, especially considering they/'re gnolls. They plan to dig under Qeynos and sneak inside. Once there they will fight, but not with much force. Eventually they will attack, forcing us to defend ourselves. As this happens they plan on attacking from a new entry point, hopefully catching us unaware.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_info_006.mp3", "", "", 1238557944, 2958306914)
	AddConversationOption(conversation, "I see.")
	StartConversation(conversation, NPC, Spawn, "Sure, but not without a heavy loss of life. It would be preferable, by far, to stop them here, now. Crippling their ability to dig and produce armor is our best bet at this point.")
end

function MoreExplosives(NPC, Spawn)
	-- 7 explosives
	for i = 1, 7, 1 do
		SummonItem(Spawn, 6975)
		SendMessage(Spawn, "You receive [explosives].")
		SendPopUpMessage(Spawn, "You receive explosives.", 255, 255, 255)
	end
end


function dlg_15_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 3)
	end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_009.mp3", "", "", 2550748211, 2686782300)
	AddConversationOption(conversation, "What do you mean?", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "Wonderful. A setback like this will cost them dearly. They may not have proper time to recoup. I do not intend to give them that chance.")
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 3
-------------------------------------------------------------------------------------------------------------------

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_011.mp3", "", "", 980784513, 319939534)
	AddConversationOption(conversation, "What is the ritual?", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "I know enough of these gnolls. I did stay here for quite some time, hidden but among them, you realize. The Rockpaw have a ritual they use when they wish to speak with Zen/'Durath. If we mimic that ritual he will show.")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_012.mp3", "", "", 4286756342, 1858639464)
	AddConversationOption(conversation, "I can do it.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "First you must collect the necessary items. You will need five crown scales from the albino pythons. You will also need some of the Rockpaw shaman/'s incantation powder, you can find this in the Rockpaw camps. Finally, you will need a river stone from the river behemoths. These can all be found on the uppermost level here. However, the river stone may be difficult to get.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_013.mp3", "", "", 1041018837, 4007905391)
	if (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 5) or (HasCompletedQuest(Spawn, QUEST_3)) then
		AddConversationOption(conversation, "Yes, here they are.", "dlg_22_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	AddConversationOption(conversation, "What can you tell me about the Caves?", "AboutCaves")
	AddConversationOption(conversation, "What can you tell me about the gnoll attack plan?", "GnollAttack")
	AddConversationOption(conversation, "Have you learned anything new from the book?", "LearnedFromBook")
	StartConversation(conversation, NPC, Spawn, "Have you collected the materials?")
end

function GnollAttack(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Can they be stopped?", "CanTheyBeStopped")
	StartConversation(conversation, NPC, Spawn, "The gnolls have a very sophistical attack plan, especially considering they/'re gnolls. They plan to dig under Qeynos and attack inside. Once there, they will fight, but not with much force. Eventually they will attack, forcing us to defend ourselves. As this happens they plan on attacking from every entry point hopefully catching us unaware.")
end

function CanTheyBeStopped(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I see.")
	StartConversation(conversation, NPC, Spawn, "Sure, but not without a heavy loss of life. It would be preferable, by far, to stop them here, now. Crippling their ability to dig and produce armor is our best bet at this point.")
end

function dlg_22_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 5)
	end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_014.mp3", "", "", 247398570, 2593527030)
	AddConversationOption(conversation, "Yes.", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Then I have all I need. I will make the staff of summoning now. Do not be alarmed, the skeleton that adorns it is not a recent one. With this staff Zen/'Durath will be summoned. Are you ready?")
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 4
-------------------------------------------------------------------------------------------------------------------

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_015.mp3", "", "", 2549188816, 2219129213)
	AddConversationOption(conversation, "I will return.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Good. Take this staff to the large skull on the northern end one level above this one. Once there place the staff in the skull, this will bring forth Zen/'Durath. Return to me when he is dead.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_016.mp3", "", "", 2025655936, 1813056075)
	if GetQuestStep(Spawn, QUEST_4) == 2 then
		AddConversationOption(conversation, "Yes.", "dlg_28_1")
	else
		AddConversationOption(conversation, "Not yet.", "dlg_27_1")
		AddConversationOption(conversation, "I need the summoning staff.", "NeedStaff")
	end
	AddConversationOption(conversation, "What can you tell me about the Caves?", "AboutCaves")
	AddConversationOption(conversation, "What can you tell me about the gnoll attack plan?", "GnollAttack")
	AddConversationOption(conversation, "Is there anything else you can tell me?", "AnythingElse")
	StartConversation(conversation, NPC, Spawn, "Is Zen/'Durath dead?")
end

function AnythingElse(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "The book spoke of /'Haggletons/' who are Freeportian gnomes. We don/'t know if they acted alone or with some element of their government. It/'s not likely we/'ll ever know. From the way things are around here now, it/'s clear the gnoll/'s production is slowing. I do not expect this to last much longer, thanks in large part to you. I am lucky to have you on my side.")
end

function NeedStaff(NPC, Spawn)
	-- summoning staff
	if not HasItem(Spawn, QUEST_4_SUMMONING_STAFF_ID) then
		SummonItem(Spawn, QUEST_4_SUMMONING_STAFF_ID, 1)
	end
end

function dlg_28_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_017.mp3", "", "", 1945105628, 3603406518)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Then it is done, and the Rockpaw shall soon fall. I am very relieved. I am lucky to have you, " .. GetName(Spawn) .. ". Please, take this as a sign of my thanks, and the thanks of the Queen. You have earned it.")
end