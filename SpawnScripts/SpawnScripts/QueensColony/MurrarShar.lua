--[[
	Script Name	: SpawnScripts/QueensColony/MurrarShar.lua
	Script Purpose	: Murrar Shar <Emissary of Queen Antonia Bayle>
	Script Author	: Zcoretri
	Script Date	: 2015.07.30
        Modified Date :  2020.04.20
        Modified by     : premierio015
       Modified Notes: Added animations
	Script Notes	: 
--]]

local WelcomeToNorrath = 133
local TheArtOfCombat = 132
local APresenceOfEvil = 131
local IntoTheTaintedForest = 162
local JoiningTheForwardRanks = 163
local TheSourceOfEvil = 164

local quest2_text = nil

function spawn(NPC)
    ProvidesQuest(NPC, TheArtOfCombat)
	ProvidesQuest(NPC, APresenceOfEvil)
	ProvidesQuest(NPC, IntoTheTaintedForest)
	ProvidesQuest(NPC, JoiningTheForwardRanks)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, TheArtOfCombat) then
		if HasQuest(Spawn, TheArtOfCombat) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar010.mp3", "", "nod", 2562990263, 480187891, Spawn)
			if GetQuestStep(Spawn, TheArtOfCombat) == 4 then
				quest2_text = "I'm glad to hear it, for now we have need of our courage"
				AddConversationOption(conversation, "I defeated my sparring partner and learned about combat.", "DefeatedSparringPartner")
			end
			AddConversationOption(conversation, "Not yet.")
			AddConversationOption(conversation, "I would prefer to leave the island and go to Qeynos.", "LeaveIsland")
			StartConversation(conversation, NPC, Spawn, "Hello again, " .. GetName(Spawn) .. ". Have you passed the test that Trainer Hayl McGuinness set before you?")
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar007.mp3", "", "nod", 4090368410, 193364605, Spawn)
			AddConversationOption(conversation, "Who are you?", "WhoAreYou")
			AddConversationOption(conversation, "I would prefer to leave the island now.", "LeaveIsland")
			AddConversationOption(conversation, "I will return after I look around a bit.")
			StartConversation(conversation, NPC, Spawn, "Welcome, " .. GetName(Spawn) .. ", I have been anticipating your arrival.  Your skills are greatly needed here at the Queen's Colony.")
		end
	elseif not HasCompletedQuest(Spawn, APresenceOfEvil) then
		if HasQuest(Spawn, APresenceOfEvil) then
			if GetQuestStep(Spawn, APresenceOfEvil) <= 5 then
				CurrentTaskInJournal(NPC, Spawn)
			else
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar014.mp3", "", "", 3089319907, 3490280411, Spawn)
				AddConversationOption(conversation, "I agree. There's something behind all of this.", "BehindAllThis")
				AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
				StartConversation(conversation, NPC, Spawn, "Hmm... yes, these reports are disturbing indeed. I cannot place the source that tainted our beloved soldiers.")
			end
		else
			--give 2nd quest
			quest2_text = "Hello " .. GetName(Spawn)
			DefeatedSparringPartner(NPC, Spawn)
		end
	elseif not HasCompletedQuest(Spawn, IntoTheTaintedForest) then
		if HasQuest(Spawn, IntoTheTaintedForest) then
			if GetQuestStep(Spawn, IntoTheTaintedForest) <= 5 then
				CurrentTaskInJournal(NPC, Spawn)
			elseif GetQuestStep(Spawn, IntoTheTaintedForest) == 6 then
				Quest3Done(NPC, Spawn)
			end
		else
			ReadyToHelpNow(NPC, Spawn)
		end
	elseif not HasCompletedQuest(Spawn, JoiningTheForwardRanks) then
		if HasQuest(Spawn, JoiningTheForwardRanks) then
			CurrentTaskInJournal(NPC, Spawn)
		else
			SamplesExamined(Spawn, NPC)
		end
	elseif not HasCompletedQuest(Spawn, TheSourceOfEvil) then
		if HasQuest(Spawn, TheSourceOfEvil) then
			if GetQuestStep(Spawn, TheSourceOfEvil) == 9 then
				Quest5Done(NPC, Spawn)
			else
				CurrentTaskInJournal(NPC, Spawn)
			end
		else
			GoblinsAreVictims(NPC, Spawn)
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar030.mp3", "", "", 3165714952, 1304016911, Spawn)
		AddConversationOption(conversation, "Farewell.")
		AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
		StartConversation(conversation, NPC, Spawn, "Qeynos will live for you, my friend. Your deeds here will not be forgotten. Farewell.")
	end
	
end

function LeaveIsland(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar_leave000.mp3", "", "", 752128822, 2974687933, Spawn)
	AddConversationOption(conversation, "Where can I find Captain Varlos?", "WhereCaptainVarlos")
	StartConversation(conversation, NPC, Spawn, "If you feel you are ready to leave the island you can do so at any time. We have an arrangement with Captain Varlos. He will take you to the fair city of Qeynos.")
end


function WhereCaptainVarlos(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar_leave001.mp3", "", "", 3799088988, 2590558774, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Head through the south archway to the beach. Once there, you will find Varlos' ship on the dock. He should be aboard the ship. I hope you enjoy Qeynos, " .. GetName(Spawn) .. ".")
end

function WhoAreYou(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar001.mp3", "", "bow", 4276663740, 184288328, Spawn)
	AddConversationOption(conversation, "What is the purpose of this colony?", "PurposeColony")
	AddConversationOption(conversation, "We'll talk about this later.")
	StartConversation(conversation, NPC, Spawn, "I am Murrar Shar, General of the Royal Antonican Guard and prrrotector of Queen Antonia Bayle.")
end

function PurposeColony(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar002.mp3", "", "nod", 1723259718, 37401788, Spawn)
	AddConversationOption(conversation, "Tell me more about Qeynos.", "MoreAboutQeynos")
	AddConversationOption(conversation, "I'd like to get to work. How can I help you?", "HowCanHelp")
	AddConversationOption(conversation, "A pleasure to meet you, but I must go.")
	StartConversation(conversation, NPC, Spawn, "The Queen's Colony was established as a training ground for prospective citizens of Qeynos. Our great city needs valiant defenders.")
end

function MoreAboutQeynos(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar003.mp3", "", "agree", 490663804, 1186290249, Spawn)   
	AddConversationOption(conversation, "Tell me more about Freeport.", "MoreAboutFreeport")
	AddConversationOption(conversation, "I'd rather not get into it.")
	StartConversation(conversation, NPC, Spawn, "Qeynos is a grand city that stands on the western shores of the continent Karan. It is a place where truth and justice are valued above all else. It is ruled by the brave and noble Queen Antonia Bayle. Our kingdom is a bright light that stands against the dark empire of Freeport.")
end

function MoreAboutFreeport(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar004.mp3", "", "no", 920852811, 2210592101, Spawn)
	AddConversationOption(conversation, "I will do so. How can I be of service to the colony?", "HowCanHelp")
	AddConversationOption(conversation, "I'm not willing yet.")
	StartConversation(conversation, NPC, Spawn, "Freeport is a city of cruelty and malice, governed by its selfish Overlord, Lucan D'Lere. He is a dangerous madman who seeks to conquer Norrath and hold us all in his iron grip. Beware his lies, " .. GetName(Spawn) .. ".")
end

function CurrentTaskInJournal(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar008.mp3", "", "", 2240443890, 2947060693, Spawn)
	AddConversationOption(conversation, "Hey, that's a nice sword. Where'd you get it?", "NiceSword")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Your current task is written in your journal. Return to me when you're finished.")
end

function NiceSword(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar013.mp3", "", "", 271551862, 2243544574, Spawn)
	AddConversationOption(conversation, "Okay, I will.")
	StartConversation(conversation, NPC, Spawn, "Thank you for noticing. They call this one Berik, Sword of Thunder. I earned it in a dungeon in Antonica known as Stormhold. Work hard and you might find such a prize someday.")
end

-- 1st QUEST DIALOG

function HowCanHelp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar005.mp3", "", "orate", 2129721282, 2945062289, Spawn)
	AddConversationOption(conversation, "I am ready to learn, Murrar.", "ReadyToLearn")
	AddConversationOption(conversation, "Not just now.")
	StartConversation(conversation, NPC, Spawn, "Ahh, your future is as bright as your heart, but there are perils in this world that only the mightiest of adventurers may overcome. Live for Qeynos and Qeynos will live for you!")
end

function ReadyToLearn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, WelcomeToNorrath) then
		SetStepComplete(Spawn, WelcomeToNorrath, 1)
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar006.mp3", "", "", 3748435458, 1580349546, Spawn)
	AddConversationOption(conversation, "I will do as you ask.", "OfferQuest1")
	AddConversationOption(conversation, "I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "I am very glad to hear it! Go and speak to Trainer Hayl McGuinness, just northwest of here near the archway. I've written his name in your journal. He will teach you the basics of combat.")
end

function DefeatedSparringPartner(NPC, Spawn)
	SetStepComplete(Spawn, TheArtOfCombat, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar011.mp3", "", "", 4256576079, 2557419428, Spawn)
	AddConversationOption(conversation, "I would be glad to. What can I do?", "WhatCanIDo")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, quest2_text .. ". Until recently, our colony lived in peace with a clan of goblins known as the Sapswill that reside on the other side of the island. But for some unknown reason, they have begun to attack us. We need to begin an investigation at once to get to the bottom of this. Will you help?")
end

-- 2nd QUEST DIALOG

function WhatCanIDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar012.mp3", "", "", 3644220831, 939546210, Spawn)
	AddConversationOption(conversation, "I will do so.", "OfferQuest2")
	AddConversationOption(conversation, "I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "The goblins have started attacking us from the west. We're not sure what sparked the uprising, but they are now relentlessly trying to invade the colony. I need you to go see how our defenders are doing at the west gate and gather any information you can. Speak with Seargant Haggus at the barricades and see what you can do to assist him.")
end

function BehindAllThis(NPC, Spawn)
	SetStepComplete(Spawn, APresenceOfEvil, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar015.mp3", "", "", 2203186957, 1407413043, Spawn)
	AddConversationOption(conversation, "I am ready to help now.", "ReadyToHelpNow")
	AddConversationOption(conversation, "Thanks. I'll be back.")
	StartConversation(conversation, NPC, Spawn, "I can assure you that we will find out though. In the meantime, here is a reward for your continued assistance.")
end

-- 3rd QUEST DIALOG

function ReadyToHelpNow(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar016.mp3", "", "", 943121762, 902772716, Spawn)
	AddConversationOption(conversation, "I could do that.", "ICouldDoThat")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "Ready to continue eh? The dead soldiers were resurrected by something most evil and bent on destroying the Colony. Recently the wildlife on the island has felt the effects of the evil as well. I must get some samples from those creatures, so that I can examine them more closely.")
end

function ICouldDoThat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar017.mp3", "", "", 818627273, 1220772208, Spawn)
	AddConversationOption(conversation, "Will do.", "OfferQuest3")
	AddConversationOption(conversation, "I'm too busy right now.")
	StartConversation(conversation, NPC, Spawn, "Thank you, but I have already sent a skilled hunter to do the job. Maybe you should check up on him though and make sure things are going well. He's been out in the Tainted Forest for a while now. Look for Sha'Dur up the stairs on the north side of the Sunset Meadow.")
end

function Quest3Done(NPC, Spawn)
	SetStepComplete(Spawn, IntoTheTaintedForest, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1036.mp3", "", "", 0, 0)
	AddConversationOption(conversation, "Thanks.")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	StartConversation(conversation, NPC, Spawn, "Good, the samples. I'll need to consult with Myrrin about them, but in the mmmmeantime here is your reward. Come back to me later and hopefully these samples will have prroven worthy.")
end

-- 4th QUEST DIALOG

function SamplesExamined(Spawn, NPC)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar019.mp3", "", "", 1940724466, 1039099607, Spawn)
	AddConversationOption(conversation, "I'm guessing you'd like me to find out.", "dlg_19_1")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	AddConversationOption(conversation, "I have something else to do before I get involved.")
	StartConversation(conversation, NPC, Spawn, "The samples have been examined and my worst fear has been realized.  A poisonous mist clings to the tissue, eating and controlling it.  I suspect necromancy, but from whom?")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar020.mp3", "", "", 969547880, 3659700172, Spawn)
	AddConversationOption(conversation, "You want me to confront the Chieftain now?", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "That I do. My best guess is that the goblin leader, High Chieftain Grexx, is involved. He is the most powerful and influential figure to the goblins. If he were somehow corrupted, the goblins would follow any orders he demanded.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar021.mp3", "", "", 2156921006, 779590907, Spawn)
	AddConversationOption(conversation, "Will do.", "OfferQuest4")
	AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "First things first ," .. GetName(Spawn) .. ". We need to break through to the goblin village. I have assigned this duty to Cleric Mara'Vaen. Seek her out and see how you can help.")
end

-- 5th QUEST DIALOG

function GoblinsAreVictims(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will speak with the Cleric at once.")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	StartConversation(conversation, NPC, Spawn, "The scouts that broke through to the Sapswill Village report that the goblins themselves are victims of the evil. Cleric Mara'Vaen will doubtless have the most recent information on this development.", Spawn)
end

function Quest5Done(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar028.mp3", "", "", 1703190849, 2791144430, Spawn)
	AddConversationOption(conversation, "It was nothing, really.", "ItWasNothingReally")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	StartConversation(conversation, NPC, Spawn, "By the glory of Qeynos, you've done it! The source of evil is gone and the island is saved. You are on a path to greatness, " .. GetName(Spawn) .. ". Your deeds here shall not be forgotten and I forsee many adventures ahead of you.")
end

function ItWasNothingReally(NPC, Spawn)
	SetStepComplete(Spawn, TheSourceOfEvil, 9)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar029.mp3", "", "", 3787491059, 860331081, Spawn)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Nothing! I will tell the Queen personally of your bravery. Take this reward as a gift from Qeynos. Feel free to head to Qeynos at anytime, or stay and hone your skills. Speak with Captain Varlos on the docks when you wish to leave.")
end

--------------------------------------------------------------------------------------------------------------------
--                     OFFER QUESTS
--------------------------------------------------------------------------------------------------------------------
function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheArtOfCombat)
end

function OfferQuest2(NPC, Spawn)
	OfferQuest(NPC, Spawn, APresenceOfEvil)
end

function OfferQuest3(NPC, Spawn)
	OfferQuest(NPC, Spawn, IntoTheTaintedForest)
end

function OfferQuest4(NPC, Spawn)
	OfferQuest(NPC, Spawn, JoiningTheForwardRanks)
end