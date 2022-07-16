--[[
	Script Name	: SpawnScripts/TheRuins/LieutenantImperidus.lua
	Script Purpose	: Lieutenant Imperidus <Freeport Militia>
	Script Author	: jakejp
	Script Date	: 2018.12.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Sixth_SteppingUptheOffensive = 373
local Seventh_KnockTheFightOutOfEm = 392
local Eighth_VengeanceForShoreside = 393
local Ninth_IdentifyingTheLonetuskAlly = 394
local Tenth_FileAFinalReport = 395
local Eleventh_AJourneyOutsideTheCity = 396

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	ProvidesQuest(NPC, Seventh_KnockTheFightOutOfEm)
	ProvidesQuest(NPC, Eighth_VengeanceForShoreside)
	ProvidesQuest(NPC, Ninth_IdentifyingTheLonetuskAlly)
	ProvidesQuest(NPC, Tenth_FileAFinalReport)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) -- thanks Scatman
	local chance = math.random(0, 100)
	if chance <= 25 then
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/quest_lieutenant_imperidus_callout_b85701b8.mp3", "All citizens of Freeport must band together to erase the orcish menace!", "agree", 1075118541, 263743495, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/quest_lieutenant_imperidus_callout_c316998a.mp3", "We must eliminate the source of the orc uprising!", "threaten", 1891042536, 250066925, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "", "There is no peace to be had with the orcs! Destroy them!", "brandish", 0, 0, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/quest_lieutenant_imperidus_callout_6ef6bae6.mp3", "We must take action against these cursed Lonetusks!", "threaten", 3163677184, 3724793633, Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	local choice = math.random(1,3)
	
	if HasQuest(Spawn, Sixth_SteppingUptheOffensive) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus001.mp3", "", "", 1845738650, 2693702404, Spawn)
		AddConversationOption(conversation, "I am ".. GetName(Spawn) ..". I was ordered by Captain Arellius to report to you, lieutenant.", "dlg_3_1")
		AddConversationOption(conversation, "I will leave you to your work.")
		StartConversation(conversation, NPC, Spawn, "You've entered dangerous territory, traveler. Unless you have been ordered to report for duty, I recommend you go back from whence you came.")
	elseif not HasCompletedQuest(Spawn, Seventh_KnockTheFightOutOfEm) then
		if HasQuest(Spawn, Seventh_KnockTheFightOutOfEm) then
			if GetQuestStep(Spawn, Seventh_KnockTheFightOutOfEm) <= 4 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus011.mp3", "", "", 3479416416, 392853218, Spawn)
				AddConversationOption(conversation, "Not yet.")
				StartConversation(conversation, NPC, Spawn, "So, our latest volunteer returns. Did you ruin the food and deface the statues of the Lonetusk as I commanded?")
			elseif GetQuestStep(Spawn, Seventh_KnockTheFightOutOfEm) == 5 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus011.mp3", "", "", 3479416416, 392853218, Spawn)
				AddConversationOption(conversation, "Yes, lieutenant. I'm not sure it has taken much fight out of the orcs, though.", "dlg_6_1")
				AddConversationOption(conversation, "Not yet.")
				StartConversation(conversation, NPC, Spawn, "So, our latest volunteer returns. Did you ruin the food and deface the statues of the Lonetusk as I commanded?")
			end
		elseif CanReceiveQuest(Spawn, Seventh_KnockTheFightOutOfEm) then 
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus024.mp3", "", "", 3014480866, 309879594, Spawn)
			AddConversationOption(conversation, "Yes, I am ready.", "dlg_3_6")
			AddConversationOption(conversation, "No, I need to leave.")
			StartConversation(conversation, NPC, Spawn, "You're back. Are you ready to take a stand against the Lonetusk?")
		end
	elseif not HasCompletedQuest(Spawn, Eighth_VengeanceForShoreside) then
		if HasQuest(Spawn, Eighth_VengeanceForShoreside) then
			if GetQuestStep(Spawn, Eighth_VengeanceForShoreside) <= 4 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus015.mp3", "", "", 3224148975, 670776839, Spawn)
				AddConversationOption(conversation, "Not yet, but I'll try to hurry.")
				StartConversation(conversation, NPC, Spawn, "Excellent, you're back! I hope you have done your duty, because I have another crucial assignment for you.")
			elseif GetQuestStep(Spawn, Eighth_VengeanceForShoreside) == 5 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus015.mp3", "", "", 3224148975, 670776839, Spawn)
				AddConversationOption(conversation, "I dealt a blow to the orc offensive. What is this assignment?", "dlg_30_1")
				AddConversationOption(conversation, "Not yet, but I'll try to hurry.")
				StartConversation(conversation, NPC, Spawn, "Excellent, you're back! I hope you have done your duty, because I have another crucial assignment for you.")
			end
		elseif CanReceiveQuest(Spawn, Eighth_VengeanceForShoreside) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus025.mp3", "", "", 219596319, 1538139523, Spawn)
			AddConversationOption(conversation, "Yes, though I'm not sure how much phase one accomplished.", "dlg_6_1")
			AddConversationOption(conversation, "Not yet.")
			StartConversation(conversation, NPC, Spawn, "Are you ready to undertake phase two of my plan?")
		end
	elseif not HasCompletedQuest(Spawn, Ninth_IdentifyingTheLonetuskAlly) then
		if HasQuest(Spawn, Ninth_IdentifyingTheLonetuskAlly) then
			if GetQuestStep(Spawn, Ninth_IdentifyingTheLonetuskAlly) == 1 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus029.mp3", "", "", 1821078597, 3404345627, Spawn)
				AddConversationOption(conversation, "Not yet.")
				StartConversation(conversation, NPC, Spawn, "Have you found out anything of use from the Lonetusk prisoner?")
			elseif GetQuestStep(Spawn, Ninth_IdentifyingTheLonetuskAlly) == 2 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus029.mp3", "", "", 1821078597, 3404345627, Spawn)
				AddConversationOption(conversation, "It revealed that the Lonetusk were recently visited by a courier from far away who delivered some documents to their general.", "dlg_34_1")
				AddConversationOption(conversation, "Not yet.")
				StartConversation(conversation, NPC, Spawn, "Have you found out anything of use from the Lonetusk prisoner?")
			elseif GetQuestStep(Spawn, Ninth_IdentifyingTheLonetuskAlly) == 3 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus019.mp3", "", "", 2578123453, 1196301399, Spawn)
				AddConversationOption(conversation, "Not yet, but I will find it!")
				StartConversation(conversation, NPC, Spawn, "Have you recovered the document I sent you to retrieve? Time is of the essence here!")
			elseif GetQuestStep(Spawn, Ninth_IdentifyingTheLonetuskAlly) == 4 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus019.mp3", "", "", 2578123453, 1196301399, Spawn)
				AddConversationOption(conversation, "I found it, lieutenant. It mentions something about 'Clefts.' Here it is.", "dlg_36_1")
				AddConversationOption(conversation, "Not yet, but I will find it!")
				StartConversation(conversation, NPC, Spawn, "Have you recovered the document I sent you to retrieve? Time is of the essence here!")
			end 
		elseif CanReceiveQuest(Spawn, Ninth_IdentifyingTheLonetuskAlly) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus026.mp3", "", "", 2035778051, 3857199012, Spawn)
			AddConversationOption(conversation, "What is this assignment?", "dlg_30_1")
			AddConversationOption(conversation, "Perhaps later.")
			StartConversation(conversation, NPC, Spawn, "There you are! Time is of the essence, adventurer. I have a crucial assignment for you!")
		end 
	elseif not HasCompletedQuest(Spawn, Tenth_FileAFinalReport) then
		if HasQuest(Spawn, Tenth_FileAFinalReport) then
			if GetQuestStep(Spawn, Tenth_FileAFinalReport) == 1 then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus028.mp3", "", "", 2127168056, 2423850494, Spawn)
				AddConversationOption(conversation, "I will report to her right away.", "dlg_59_1")
				StartConversation(conversation, NPC, Spawn, "You must return to Captain Arellius on the docks, citizen. The information you have for her is vital for Freeport's safety!")
			end
		elseif CanReceiveQuest(Spawn, Tenth_FileAFinalReport) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus027.mp3", "", "", 874269850, 3253928300, Spawn)
			AddConversationOption(conversation, "Is it important?", "dlg_37_1")
			AddConversationOption(conversation, "Not right now.")
			StartConversation(conversation, NPC, Spawn, "I'm glad you're back. You must get word to Captain Arellius that the Rujarkians are supplying the Lonetusk and Brokentusk with weapons and armor.")
		end
	end
end

-- QUEST DIALOGUE FOR KNOCK THE FIGHT OUT OF THEM -- 

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus002.mp3", "", "", 3229308725, 1541859820, Spawn)
	SetStepComplete(Spawn, Sixth_SteppingUptheOffensive, 1)	
	AddConversationOption(conversation, "I did my best to lend a hand.", "dlg_3_2")
	AddConversationOption(conversation, "Handling the orcs should be your job.")
	StartConversation(conversation, NPC, Spawn, "Ah, you must be the one Argosian told me about. He says you have done some fine work in controlling the Brokentusk.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus003.mp3", "", "", 1841575062, 2503344613, Spawn)
		AddConversationOption(conversation, "I won't be facing them alone. I will do so with companions.", "dlg_3_3")
		AddConversationOption(conversation, "I don't need help!")
	StartConversation(conversation, NPC, Spawn, "Well, you can forget all that! The Lonetusk makes the Brokentusk look like weak infants. My Militia officers must work in teams to defeat them, as too many have perished alone. You would do well to follow the same advice.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus005.mp3", "", "", 1657740714, 1252843220, Spawn)
		AddConversationOption(conversation, "That is an excellent suggestion.", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "That is good to hear. It would be beneficial for your companions to have received orders from Captain Arellius. That way I can assign you all the same duties and you can be rewarded for performing the same tasks.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus006.mp3", "", "", 1028343216, 1318001780, Spawn)
		AddConversationOption(conversation, "Thank you for the advice, lieutenant.", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "In the future, you should remember that your group mates can progress together most efficiently if you undertake the same quests at the same time.")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus007.mp3", "", "", 4286763000, 3876809810, Spawn)
		AddConversationOption(conversation, "What do you propose we do?", "dlg_3_6")
		AddConversationOption(conversation, "I'll leave you to it.")
	StartConversation(conversation, NPC, Spawn, "Now, on to the matter at hand. We must put the Lonetusk in their place and determine where their improved weapons and armor are coming from.")
end

function dlg_3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus008.mp3", "", "", 1581951336, 1122429744, Spawn)
		AddConversationOption(conversation, "I am ready to take action.", "OfferQuest7")
		AddConversationOption(conversation, "Orcish decorations don't interest me.")
	StartConversation(conversation, NPC, Spawn, "The first thing we must do is demoralize them. We've noticed that the Lonetusk have brought in statues, either to worship or merely to inspire them. Even orcs need their morale boosted, it seems.")
end

function dlg_3_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus009.mp3", "", "", 3046376303, 2999823619, Spawn)
	AddConversationOption(conversation, "Do you really think wrecking statues and ruining food is going to ensure victory?", "dlg_3_8")
	AddConversationOption(conversation, "I'll get to it.")
	StartConversation(conversation, NPC, Spawn, "Our surest path to victory is to take the fight out of them. Go out there and face the Lonetusk, and deface any statues you see. Seek out their supplies of food and drink and spoil them. Without symbols of victory to inspire them and food in their bellies, their spirits will crumble and they will become easy pickings for us.")
end

function dlg_3_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus010.mp3", "", "", 4046535847, 3776787727, Spawn)
		AddConversationOption(conversation, "Okay, I'll give it a try.", "dlg_3_9")
	StartConversation(conversation, NPC, Spawn, "How dare you question an officer of the Freeport Militia! I have engineered a campaign of demoralization which cannot fail.")
end

-- QUEST DIALOGUE FOR VENGEANCE FOR SHORESIDE -- 

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, Seventh_KnockTheFightOutOfEm) then 
		SetStepComplete(Spawn, Seventh_KnockTheFightOutOfEm, 5)
	end 
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus012.mp3", "", "", 4000237112, 3044994511, Spawn)
		AddConversationOption(conversation, "Yes, I am ready for action.", "OfferQuest8")
		AddConversationOption(conversation, "Sorry, but I have little faith in this plan of yours.")
	StartConversation(conversation, NPC, Spawn, "These things take time to have their full effect. I'm confident that we've laid the groundwork for the Lonetusk's defeat. Now we must begin the second phase of our initiative. Are you prepared to undertake your next assignment?")
end

function dlg_6_2(NPC, Spawn) -- Quest Accept Text
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus013.mp3", "", "", 1435258692, 228785667, Spawn)
		AddConversationOption(conversation, "I like the sound of this plan.", "dlg_6_3")
	StartConversation(conversation, NPC, Spawn, "The surest way to take the fight out of the orcs is to thin their numbers. We have to show we will not tolerate their presence anymore. I need you to make a serious dent in the Lonetusk population. The streets of Shoreside must swell with the blood of these brutes.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus014.mp3", "", "", 1342102807, 1470622603, Spawn)
		AddConversationOption(conversation, "I'll return when I've taught the orcs a lesson.", "dlg_6_4")
	StartConversation(conversation, NPC, Spawn, "I'm confident this will strike a real blow to the Lonetusk offensive. While you carry out your orders, my interrogators are going to see if this orc we captured knows anything of use.")
end

-- DIALOGUE FOR IDENTIFYING THE LONETUSK ALLY -- 

function dlg_30_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, Eighth_VengeanceForShoreside) then 
		SetStepComplete(Spawn, Eighth_VengeanceForShoreside, 5)
	end 
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus016.mp3", "", "", 424275819, 2098486813, Spawn)
		AddConversationOption(conversation, "Have you been able to learn anything from it?", "dlg_30_2")
		AddConversationOption(conversation, "I have had enough of dealing with orcs.")
	StartConversation(conversation, NPC, Spawn, "Some days ago my soldiers took a Lonetusk prisoner. At first it was unresponsive to our attempts to obtain information and appeared to only speak orcish, but during our most recent attempts to persuade it to cooperate, it muttered something in our own Common tongue.")
end

function dlg_30_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus017.mp3", "", "", 3515731336, 836251814, Spawn)
		AddConversationOption(conversation, "I will get the orc to talk.", "OfferQuest9")
		AddConversationOption(conversation, "Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Not yet, though my guards may not be taking the right approach. I'd like you to take a crack at this prisoner. It's being held just over there, outside one of our supply depots. We don't have a proper stockade, as it is not our custom to take prisoners.")
end

function dlg_30_3(NPC, Spawn) -- Quest Accept Text 
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus018.mp3", "", "", 1717970804, 3719629105, Spawn)
		AddConversationOption(conversation, "I'll return when I have the information you need, lieutenant.", "dlg_30_4")
	StartConversation(conversation, NPC, Spawn, "I knew we could rely on you! Take any measures necessary to get the beast to talk. ANY measures... got it?")
end

function dlg_34_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus030.mp3", "", "", 795916419, 2847642656, Spawn)
		AddConversationOption(conversation, "Apparently the orcs have locked them away in some kind of underground bunker.", "dlg_34_2")
		AddConversationOption(conversation, "I don't have time to discuss this further.")
	StartConversation(conversation, NPC, Spawn, "Excellent work! Did it give you the location of these documents?")
end

function dlg_34_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, Ninth_IdentifyingTheLonetuskAlly, 2)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus031.mp3", "", "", 56234529, 3138552129, Spawn)
		AddConversationOption(conversation, "I will undertake this mission for my Overlord and my city.", "dlg_34_3")
	StartConversation(conversation, NPC, Spawn, "Then your highest priority is to find these documents and bring them to me. Search the entire Lonetusk area for that underground bunker. We must have this information!")
end

-- QUEST TEXT FOR FILING A FINAL REPORT

function dlg_36_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, Ninth_IdentifyingTheLonetuskAlly) then
                RemoveItem(Spawn, 3803)
		SetStepComplete(Spawn, Ninth_IdentifyingTheLonetuskAlly, 4)
	end
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus020.mp3", "", "", 105191340, 2188619231, Spawn)
		AddConversationOption(conversation, "Now that you mention it, I thought I spotted a Rujarkian advisor of some kind in the area.", "dlg_37_1")
		AddConversationOption(conversation, "Not really my concern.")
	StartConversation(conversation, NPC, Spawn, "Let me see this. Hmm... The Clefts. This must refer to the Clefts of Rujark, an orc stronghold in the Desert of Ro. This means the Lonetusk are being supplied by the Rujarkians!")
end

function dlg_37_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus021.mp3", "", "", 3288112038, 3542005218, Spawn)
		AddConversationOption(conversation, "I will report back to her.", "OfferQuest10")
		AddConversationOption(conversation, "I'm tired of running errands.")
	StartConversation(conversation, NPC, Spawn, "It is dark news indeed! If the Rujarkians were to do the same for other tribes around Freeport, it could mean the rise of a new orc offensive. Captain Arellius must hear of this news right away!")
end

function dlg_37_2(NPC, Spawn) -- Quest Accept Text 
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus022.mp3", "", "", 3956036992, 4003496180, Spawn)
		AddConversationOption(conversation, "Thank you, lieutenant. You have earned mine as well.", "dlg_37_3")
	StartConversation(conversation, NPC, Spawn, "Report back to the captain. She will take word of this discovery back to our superiors in the Militia. This is extremely valuable information, my friend. You just might have given Freeport the edge it needs to ensure its safety. You have earned my respect.")
end

function OfferQuest7(NPC, Spawn)
	OfferQuest(NPC, Spawn, Seventh_KnockTheFightOutOfEm)
end

function OfferQuest8(NPC, Spawn)
	OfferQuest(NPC, Spawn, Eighth_VengeanceForShoreside)
end

function OfferQuest9(NPC, Spawn)
	OfferQuest(NPC, Spawn, Ninth_IdentifyingTheLonetuskAlly)
end 

function OfferQuest10(NPC, Spawn)
	OfferQuest(NPC, Spawn, Tenth_FileAFinalReport)
end 
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/quest_lieutenant_imperidus_callout_6ef6bae6.mp3", "We must take action against these cursed Lonetusks!", "threaten", 3163677184, 3724793633, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/quest_lieutenant_imperidus_callout_c316998a.mp3", "We must eliminate the source of the orc uprising!", "threaten", 1891042536, 250066925, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/quest_lieutenant_imperidus_callout_b85701b8.mp3", "All citizens of Freeport must band together to erase the orcish menace!", "agree", 1075118541, 263743495, Spawn)
--]]

