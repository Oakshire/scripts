--[[
	Script Name	: SpawnScripts/ForestRuins/ActingLieutenantGermain.lua
	Script Purpose	: Acting Lieutenant Germain 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: This script needs a re-write.  Using the dialog parser will help.  The mess here has been modified by several unlisted people.  - 07.14.2022 Dorbin
--]]
local QUEST_FROM_REMMY = 533
local QUEST_FROM_POKO = 5474
local QUEST_FROM_Ilaen = 5495
local QUEST_1 = 520 --News for Germain
local QUEST_2 = 521 --Favors
local QUEST_3 = 522 --Return to the Disturbance
local QUEST_4 = 5492 --Uncovering the Caches




function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) 
   if math.random(1, 100) <= 75 then
         choice = math.random(1,3)
        FaceTarget(NPC, Spawn)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
            elseif choice ==2 then
            PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
            end
            end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, QUEST_FROM_POKO) and GetQuestStep(Spawn, QUEST_FROM_POKO) == 3 then
		AddConversationOption(conversation, "I have news for you.", "NewsForYou")
	elseif HasQuest(Spawn, QUEST_FROM_REMMY) and GetQuestStep(Spawn, QUEST_FROM_REMMY) == 2 then
		AddConversationOption(conversation, "I have news for you.", "NewsForYou2")	
    elseif GetQuestStep(Spawn,QUEST_FROM_Ilaen)==3  then
	AddConversationOption(conversation,"I found this arrow on a fallen deer around here.", "Dialog32")
	end
	
	

--[[	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0)
	end]]--
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain000.mp3", "", "hello", 3884077763, 891162435, Spawn)
	
	if HasCompletedQuest(Spawn, QUEST_1) then
	   -- Say(NPC, "Hey! quest 1 complete")
		if HasCompletedQuest(Spawn, QUEST_2) then
		--    Say(NPC, "Hey! quest 2 complete")
		    if HasCompletedQuest(Spawn, QUEST_3) then
			    Say(NPC, "Hey! quest 3 complete")
		    elseif HasQuest(Spawn, QUEST_4)  then
			    AddConversationOption(conversation, "Not yet.")
		        StartConversation(conversation, NPC, Spawn, "Have you destroyed the tools?")
            if GetQuestStep(Spawn,QUEST_3)==3 or  HasCompletedQuest(Spawn, QUEST_3) then
			    AddConversationOption(conversation, "I found this book.","Step3Done")
            end

			    AddConversationOption(conversation, "I'll come back when I've performed the task.")
		        StartConversation(conversation, NPC, Spawn, "Well?")
		    elseif 	HasCompletedQuest(Spawn, QUEST_3) then
		        
		        
		       	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain009.mp3", "", "", 4053457773, 134802130, Spawn)
		        AddConversationOption(conversation, "What happened with the leaf?", "dlg_3_1")
		        StartConversation(conversation, NPC, Spawn, "Welcome back. Are you ready for some more work?")
		    end
		elseif HasQuest(Spawn, QUEST_2) then
			if GetQuestStep(Spawn, QUEST_2) == 8 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain009.mp3", "", "", 4053457773, 134802130, Spawn)
		        AddConversationOption(conversation, "What happened with the leaf?", "dlg_3_1")
		        StartConversation(conversation, NPC, Spawn, "Welcome back. Are you ready for some more work?")
			end
		else
			OnQuest1(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetLevel(Spawn) >= 5 then
			WelcomeCitizen(NPC, Spawn, conversation)
		else
			Say(NPC, "Come back to me once you've gotten a bit stronger.", Spawn)
		end
	end
end
	

--[[

	if convo==1 then
		AddConversationOption(conversation, "I do not know yet.", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "What does Poko say?")
	end

	if convo==6 then

	end

	if convo==7 then
		
		StartConversation(conversation, NPC, Spawn, "Any news of Del Varun?")
	end

	if convo==8 then
		AddConversationOption(conversation, "I do not know yet.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "What does Poko say?")
	end

	if convo==16 then
		AddConversationOption(conversation, "I have news for you.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Welcome, citizen. Please be careful around here.")
	end
--]]


----------------------------------------------------------------------------------------------------------
--					QUEST FROM POKO
----------------------------------------------------------------------------------------------------------

function NewsForYou(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_POKO, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "ponder", 0, 0)

	AddConversationOption(conversation, "I was collecting machine parts for Poko and one of the parts I returned seems to be of Freeportian origin.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "What is it, citizen?")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "nod", 0, 0)
	
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I can help.", "dlg_1_3")
	else
		AddConversationOption(conversation, "You're welcome.")
	end
	StartConversation(conversation, NPC, Spawn, "The bad news just doesn't cease. Citizen, there are obviously multiple things afoot in this place, I thank you for your help even if you're adding to my discomfort.")
end


----------------------------------------------------------------------------------------------------------
--					QUEST FROM REMMY
----------------------------------------------------------------------------------------------------------

function NewsForYou2(NPC, Spawn)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "ponder", 0, 0)

	AddConversationOption(conversation, "Remmy Tumbum is innocent. I found this clump of fur on some of the supplies recently broken into. It smells like gnoll.", "dlg_16_2a")
	StartConversation(conversation, NPC, Spawn, "What is it, citizen?")
end

function dlg_16_2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "nod", 0, 0)
	SetStepComplete(Spawn, QUEST_FROM_REMMY, 2)
	while HasItem(Player, 7797) do
    RemoveItem(Player,7797)
    end
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I can help.", "dlg_1_3")
	else
		AddConversationOption(conversation, "You're welcome.")
	end
	StartConversation(conversation, NPC, Spawn, "The bad news just doesn't cease. Citizen, there are obviously multiple things afoot in this place, I thank you for your help even if you're adding to my discomfort.")
end

----------------------------------------------------------------------------------------------------------
--					QUEST FROM Ilaen
----------------------------------------------------------------------------------------------------------


function Dialog32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	Dialog.AddDialog("")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain_ilaen001.mp3","","nod", 1946196030, 3212706189,Spawn)
 	SetStepComplete(Spawn, QUEST_FROM_Ilaen, 3)
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
	AddConversationOption(conversation, "I can help.", "dlg_1_3")
	end
	AddConversationOption(conversation,"The proof will come in time.")
	StartConversation(conversation, NPC, Spawn, "I recognize this design... I hope this doesn't mean what I think it means. The gnolls may be on the move. Proof of this would spur Qeynos to move, but a single arrow is not proof.")
end
----------------------------------------------------------------------------------------------------------
--					QUEST 1
----------------------------------------------------------------------------------------------------------

function WelcomeCitizen(NPC, Spawn, conversation)
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain000.mp3", "", "hello", 3884077763, 891162435, Spawn)
  
	AddConversationOption(conversation, "Is it dangerous here?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Welcome, citizen. Please be careful around here.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain001.mp3", "", "", 1672198547, 0, Spawn)
	AddConversationOption(conversation, "It sounds very busy here.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Yes, quite dangerous. We have been getting reports, strange reports, over the past few days. Nobody is sure exactly what is going on, and we don't have the manpower to find out once and for all. I've got scouts but even they can only do so much. We've got so few people that it's hard to take care of all the little things.  Ever since the pirates landed the Concordium has been asking for more and more protection.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain002.mp3", "", "nod", 2829219447, 0, Spawn)
	AddConversationOption(conversation, "I can help.", "dlg_1_3")
	AddConversationOption(conversation, "Sorry, I can't help right now.")
	StartConversation(conversation, NPC, Spawn, "More than you know. With dead-end investigations, big threats, little threats, and vague orders from the Qeynos Guard AND the Concordium I'm amazed this place hasn't been put under siege by the hawks yet. I'm sorry for complaining to you. Listen, how would you like to help me out?")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain003.mp3", "", "", 1108120794, 0, Spawn)
	AddConversationOption(conversation, "I'll see what I can find.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Good, that's great news. The first thing I'd like you to do is help me locate a missing scout. Del Varun was assigned to the small pond on the western side of the ruins. He hasn't checked back in and hasn't been spotted in a few days. I'd like you to head that direction and see if you can find him.")
end

function OfferQuest1(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain003a.mp3", "Don't get yourself hurt doing something foolish!", "", 3821205637, 0, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 4) or (HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "Yes. I found his satchel.", "dlg_7_1")
	else
		AddConversationOption(conversation, "Not quite yet.")
	end
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain004.mp3", "", "nod", 4174680410, 4068442606, Spawn)
	
	StartConversation(conversation, NPC, Spawn, "Any news of Del Varun?")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain010.mp3", "", "", 2663997308, 470495818, Spawn)
		AddConversationOption(conversation, "What are we going to do?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "It was part of an illusion. Poko made up some kind of dust that he says can dispel the illusion for short periods of time. So, it's time for us to figure out what someone has been trying to hide.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 8)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain011.mp3", "", "", 3240178244, 1388073275, Spawn)
		AddConversationOption(conversation, "What should I be looking for?", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Find out what those plants are hiding. I'd like you to take Poko's dust and go sprinkle it on the plants. Try to bring back some kind of clue if at all possible, I doubt it will all be nailed down.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
    
	
--	Sprinkle Nullification Powder
	conversation = CreateConversation()
    
    
   
   
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain011a.mp3", "", "", 1214679313, 1635044010, Spawn)
		AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Plans would help the most. Some paper or a book or something of the kind.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/acting_lieutenant_germain/qey_adv02_ruins/quests/germain/germain005.mp3", "", "", 1917536977, 2373330590, Spawn)
	AddConversationOption(conversation, "There is more. In his notes he mentioned some strange, glowing plants north of the pond. I brought back a sample.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Only his satchel? I was afraid of this. I wish we had some leads, he may yet be alive.")
end

function dlg_7_2(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, take a look at this leaf.", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "Ah, good thinking. Did you see the glowing too? Perhaps it was a transitory thing.")
end

----------------------------------------------------------------------------------------------------------
--					QUEST 2
----------------------------------------------------------------------------------------------------------

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you think it is?", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Incredible. Please, take this to Poko Zing over there. Have him analyze it for us.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right.", "dlg_7_5")
	StartConversation(conversation, NPC, Spawn, "I don't know, but I'm hoping Poko will be able to tell us.")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I do not know yet.", "dlg_7_6")
	StartConversation(conversation, NPC, Spawn, "What does Poko say?")
end

function QuestComplete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, QUEST_2, 8)
	
	AddConversationOption(conversation, "I HAVE COMPLETED QUEST PLACEHOLDER")
	StartConversation(conversation, NPC, Spawn, "GOOD JOB PLACEHOLDER")
end

----------------------------------------------------------------------------------------------------------
--					QUEST 3
----------------------------------------------------------------------------------------------------------
function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end


function Step3Done(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It was a camp.", "Step3Done2")
	StartConversation(conversation, NPC, Spawn, "Gnolls... was there anything else other than the book?")
end

function Step3Done2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, QUEST_3, 3)
	PlayFlavor(NPC, "", "", "sigh", 1917536977, 2373330590, Spawn)
	AddConversationOption(conversation, "Does the book say what the gnolls are planning?", "Step3Done3")
	StartConversation(conversation, NPC, Spawn, "That is quite unfortunate. This diagrams in this book look like they involve digging tools and machines. Thi- wait a minute! Accoding to these plans the gnolls have digging tools stored all over the place! They are probably under the same magical veil as the camp.")
end

function Step3Done3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "no", 1917536977, 2373330590, Spawn)
	AddConversationOption(conversation, "All right, I'll return.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "No, but we need to stop them. I need you to go back out around the ruins. Find these hidden digging tools, sprinkle some of Poko's powder on them, and destroy them.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end