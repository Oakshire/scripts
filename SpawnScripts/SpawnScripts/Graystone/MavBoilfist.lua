--[[
	Script Name	: SpawnScripts/Graystone/MavBoilfist.lua
	Script Purpose	: Mav Boilfist
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
        Modified By     : Ememjr
        Modified Date   :
        Modified Notes  :
--]]

local DWARF = 2
local QUEST_1 = 283 --A Family Recipe
local QUEST_2 = 285 --Cheers!
local QUEST_3 = 286 --A Package
local QUEST_4 = 287 --A Stone from Home
local QUEST_5 = 288 --A Missing Husband

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						OnQuest5(NPC, Spawn, conversation)
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
		if GetRace(Spawn) == DWARF then
			WellHello(NPC, Spawn, conversation)
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quest_mav_boilfist_notdwarf_78c7639c.mp3", "Sorry, I'm terribly busy right now. No time to chat.", "", 4035307086, 275588457, Spawn)
		end
	end
end

function respawn(NPC)
	spawn(NPC)
end

------------------------------------------------------------------------------------------------------------------
--								QUEST 1
------------------------------------------------------------------------------------------------------------------

function WellHello(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Sort of, yes.", "New")
	AddConversationOption(conversation, "No, I'm not new here.", "NotNew")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist001.mp3", "", "", 634247011, 356522512, Spawn)
	StartConversation(conversation, NPC, Spawn, "Well hello! New around here?")
end

function New(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, I'm willing to learn.", "WillingToLearn")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist002.mp3", "", "", 1318415576, 1321312216, Spawn)
	StartConversation(conversation, NPC, Spawn, "Well I'm just the one to help you out, then! I can teach you all you need to know, what do you say?")
end

function NotNew(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm interested in doing work for you.", "WillingToLearn")
	AddConversationOption(conversation, "I'm interested in more difficult work.", "MoreDifficultWork")
	StartConversation(conversation, NPC, Spawn, "Well, you can still teach an old dwarf new tricks. I've got some work for ya, if you're interested. Or, I could point you to someone who might have work that's a bit harder, if you're into that sort of thing.")
end

function MoreDifficultWork(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll go do that.")
	StartConversation(conversation, NPC, Spawn, "Thought you might be interested. My husband, Marv, is out in the Oakmyst Forest doing some foolish nonsense. He was supposed to be back earlier but I haven't seen him yet, that usually mean he's gotten himself into trouble. That also probably means he could use some help. If you could head into Oakmyst Forest and find him I would be thankful.")
end

function WillingToLearn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What would you like me to do?", "LikeMeToDo")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist005.mp3", "", "", 582378457, 4033004550, Spawn)
	StartConversation(conversation, NPC, Spawn, "Great, I've been needing someone to help me out while my husband is out. Normally one of us can look after things here at the shop while the other goes out and gets things done. With him gone, I'm having trouble keeping things running, your help would be a great boom.")
end

function LikeMeToDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you need me to do?", "NeedMeToDo")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist006.mp3", "", "", 3037335831, 4263929365, Spawn)
	StartConversation(conversation, NPC, Spawn, "Well. There's some brew I've been makin'. It's fermenting right here actually. It should be done very soon, and based on the last batch I tried I think I've finally perfected the mix of ingredients. It's an old family recipe that I'd forgotten about. Now that I finally got the means, I dug the recipe up and have tried my hand at it. It's taken some work, but I think it's finally worthy.")
end

function NeedMeToDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What is the problem?", "WhatProblem")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist007.mp3", "", "", 628335384, 693034307, Spawn)
	StartConversation(conversation, NPC, Spawn, "Oh, Right. Sorry, I carry on sometimes about things that are important to me. I need you to collect the ingredients for my next batch. I had them delivered from all over and they're finally here, but there's a problem.")
end

function WhatProblem(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What are you going to have me do?", "HaveMeDo")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist008.mp3", "", "", 666479766, 3144850595, Spawn)
	StartConversation(conversation, NPC, Spawn, "The shipping company is behind on their orders. They've got all the goods but nobody to sort them or make the final deliveries. I know for a fact that my yeast has been there for at least two days. And I just got word my honey and frozen cherries are there as well. It's a mess, and that's where you come in.")
end

function HaveMeDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right, give me the manifest.", "OfferQuest1")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist009.mp3", "", "", 4269745166, 1619482599, Spawn)
	StartConversation(conversation, NPC, Spawn, "I need you to gather up the ingredients for me. I managed to get ahold of an overflow manifest that details where my things are in storage. All you need to do is check the manifest, find out where you need to go, and then get my deliveries for me.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist011.mp3", "", "", 2167399134, 422468098, Spawn)
	if (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 4) or (HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "Yes, I have.", "dlg_13_1")
	else
		AddConversationOption(conversation, "Not yet. Can I have another copy of the overflow manifest?", "NeedManifest")
	end
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you gotten my ingredients yet?")
end

function NeedManifest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Overflow Manifest
	if HasItem(Spawn, 10268, 1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist013.mp3", "", "", 2530141598, 2756437578, Spawn)
		AddConversationOption(conversation, "All right, thanks.")
		StartConversation(conversation, NPC, Spawn, "I'm pretty sure you already have a copy. It's probably in one of your bags somewhere. It may even be in the bank. Once you find it examine it to learn where all the shipments are.")
	else
		SummonItem(Spawn, 10268, 1)
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist012.mp3", "", "", 1236488816, 970364241, Spawn)
		AddConversationOption(conversation, "Thanks.")
		StartConversation(conversation, NPC, Spawn, "Sure, here you go.")
	end
end

function dlg_13_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist015.mp3", "", "", 3252688398, 2435234536, Spawn)
	AddConversationOption(conversation, "That's great!", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Ah, great. Now I can get started on my next batch. The last batch came out perfectly. I won't need to change the recipe at all, finally done.")
end

------------------------------------------------------------------------------------------------------------------
--								QUEST 2
------------------------------------------------------------------------------------------------------------------

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist016.mp3", "", "", 1896567087, 1236189087, Spawn)
	AddConversationOption(conversation, "Sure, I can help.", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "Wonderfully great! I can't wait for everyone to try it. I've been telling everyone around here about my old family recipe, it's been so long since I first mentioned it that they probably think I made it up. If they do think that, it's time to prove them wrong! Listen, I still need to watch the store here, how would you like to help me?")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist017.mp3", "", "", 1283812606, 3397187857, Spawn)
	AddConversationOption(conversation, "I'll go do that.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Wonderful. Collect a jug of the brew from this barrel here, and then deliver it to a few of my friends, the ones I most want to try it. I'd like Gnor Farven and Gurna Hadel to have some, I've no doubt you can find them both at the tavern on the ground floor of the inn. I'd also like Dunda Frostgrip to have her share, you can find her outside the Scribe's shop on the western corner.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist018.mp3", "", "", 34397651, 703589536, Spawn)
	if (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 5) or (HasCompletedQuest(Spawn, QUEST_2)) then
		AddConversationOption(conversation, "Yes, they did.", "dlg_20_1")
	end
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Did everyone try my brew?")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist019.mp3", "", "", 594170508, 523076668, Spawn)
	AddConversationOption(conversation, "Well, Gurna and Gnor both loved it. It actually knocked Gnor down.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "So, tell me, what did they think?")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist020.mp3", "", "", 1002724009, 2022330670, Spawn)
	AddConversationOption(conversation, "She said it was wonderful, but asked me not to tell you that.", "dlg_20_3")
	StartConversation(conversation, NPC, Spawn, "Hah hah! What about Dunda though, what did she think?")
end

function dlg_20_3(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 5)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist021.mp3", "", "", 1410633044, 1626937024, Spawn)
	AddConversationOption(conversation, "What was the other good news?", "dlg_20_4")
	StartConversation(conversation, NPC, Spawn, "Yes! I knew she would love it. She teased me mercilessly about this recipe, she must've thought I had made the whole thing up. Ooh I'm glad she liked it. Today is just filled with good news.")
end

------------------------------------------------------------------------------------------------------------------
--								QUEST 3
------------------------------------------------------------------------------------------------------------------

function dlg_20_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist022.mp3", "", "", 153909004, 705302189, Spawn)
	AddConversationOption(conversation, "Sure, I can do that.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "A package from my cousin arrived! It has -- Oh dear, that package will get caught up in this silly state of delivery affairs. I'd like your help again, if you could go speak to the shipping coordinator on the docks and get him to give you my package before they drop it into some overflow spot that would be great. What do you say?")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist024.mp3", "", "", 791126844, 977657821, Spawn)
	if (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 4) or (HasCompletedQuest(Spawn, QUEST_3)) then
		AddConversationOption(conversation, "Yes, I do.", "dlg_30_1")
	end
	
	if (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) >= 3) or (HasCompletedQuest(Spawn, QUEST_3)) then
		AddConversationOption(conversation, "Yes, but I have to clear it with the shipping coordinator first. I'll be back.")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Do you have my package?")
end

function dlg_30_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist025.mp3", "", "", 2520635779, 2527828241, Spawn)
	AddConversationOption(conversation, "That is impressive!", "dlg_30_2")
	AddConversationOption(conversation, "Kaladim?", "Kaladim")
	StartConversation(conversation, NPC, Spawn, "Ah, let me open it. I hope it's--yes! This is the rock I've been waiting to get for a few months now. My cousin sent it to me, she said it's actual stone from Kaladim, can you imagine?")
end

------------------------------------------------------------------------------------------------------------------
--								QUEST 4
------------------------------------------------------------------------------------------------------------------

function dlg_30_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist028.mp3", "", "", 903680612, 2544408116, Spawn)
	AddConversationOption(conversation, "I have the time.", "dlg_30_3")
	StartConversation(conversation, NPC, Spawn, "Yes it is. My dream is to visit Kaladim one day, as impossible as I know that may sound. Still, doesn't hurt to dream, and this rock just makes those dreams stronger. I have another favor to ask you, if you have the time.")
end

function dlg_30_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist029.mp3", "", "", 1603379033, 880563668, Spawn)
	AddConversationOption(conversation, "What shall I do once there?", "dlg_30_4")
	StartConversation(conversation, NPC, Spawn, "There's a stone here in the Graystone Yard, a monument, they call the Stone of Kaladim. It is, quite simply, beautiful. It's easy to get lost in time just staring at that stone. Please, take this stone I just got and bring it to the Stone of Kaladim.")
end

function dlg_30_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist029a.mp3", "", "", 90624630, 1461619549, Spawn)
	AddConversationOption(conversation, "All right, I shall do that.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Once there hold my stone close to the Stone of Kaladim and concentrate. Watch for any sort of reaction in either stone. Then return to me and tell me everything that happened. Here, take the stone.")
end

function Kaladim(NPC, Spawn)
	Say(NPC, "Need collect, PM Scatman if you have it please.", Spawn)
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist029stone.mp3", "", "", 2776022988, 1249928251, Spawn)
		AddConversationOption(conversation, "I need your stone.", "NeedStone")
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you taken my stone to the Stone of Kaladim yet?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist030.mp3", "", "", 4107694784, 255406273, Spawn)
		AddConversationOption(conversation, "I think I felt what it may have been like back then.", "dlg_37_1")
		AddConversationOption(conversation, "I am not sure. I haven't done it yet.")
		StartConversation(conversation, NPC, Spawn, "Did anything happen?")
	end
end

function NeedStone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- Mav's Stone
	if HasItem(Spawn, 9384, 1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist029stone_b.mp3", "", "", 1899188154, 2228034897, Spawn)
		AddConversationOption(conversation, "Ok, I'll do that.")
		StartConversation(conversation, NPC, Spawn, "I believe I already gave the stone to you. It may be in one of your bags or possibly even in the bank. Once you find it, examine it when you are near the Stone of Kaladim here in Graystone Yard.")
	else
		SummonItem(Spawn, 9384, 1)
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist029stone_a.mp3", "", "", 3817501989, 1608531398, Spawn)
		AddConversationOption(conversation, "Thanks.")
		StartConversation(conversation, NPC, Spawn, "Oh, yes, I'm sorry. Here you go.")
	end
end

function dlg_37_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist031.mp3", "", "", 276770020, 3522074989, Spawn)
	AddConversationOption(conversation, "Just sounds and visions.", "dlg_37_2")
	StartConversation(conversation, NPC, Spawn, "Oh? What does that mean?")
end

function dlg_37_2(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist032.mp3", "", "", 4251668081, 2689030734, Spawn)
	AddConversationOption(conversation, "I would be interested in that.", "dlg_37_3")
	StartConversation(conversation, NPC, Spawn, "Oh, the spirit of Kaladim is strong in you. You know, my husband would love to meet you. Would you like to meet him?")
end

------------------------------------------------------------------------------------------------------------------
--								QUEST 5
------------------------------------------------------------------------------------------------------------------

function dlg_37_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist033.mp3", "", "", 1106794113, 1262060028, Spawn)
	AddConversationOption(conversation, "All right, I'll go find him.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "I thought you might. He should be out in the Oakmyst Forest. He's very, very late so that means something has delayed him. It's probably got something to do with the slowness going on with the shipping company, he works for them from time to time. Or, maybe, he's just drunk. Do me a favor, if he's drunk, you can come back and get me. There are some jobs only a wife can do, am I right? Hah! ... oh yeah, his name is Marv. He'll be the one with the dumb look on his face, hah!")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function OnQuest5(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist034.mp3", "", "", 1752301139, 2700535036, Spawn)
	if HasCompletedQuest(Spawn, QUEST_5) then
		AddConversationOption(conversation, "Yup. You were right. He's tied up in the business with the slow-shipping.", "dlg_38_1")
	end
	AddConversationOption(conversation, "No, I haven't.")
	StartConversation(conversation, NPC, Spawn, "Have ya found Marv yet?")
end

function dlg_38_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist035.mp3", "", "", 1414810446, 65037912, Spawn)
	AddConversationOption(conversation, "Perhaps.")
	StartConversation(conversation, NPC, Spawn, "Ah that lucky nightblood. I'm sure he loves the time away from home.")
end