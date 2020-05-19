--[[
	Script Name	: SpawnScripts/Starcrest/CayanSable.lua
	Script Purpose	: Cayan Sable 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local MEETING_WITH_CAYAN = 316 -- was 32
local INFORMATION_MERCHANTS = 318 -- was 33
local CONFRONTATION = 321 -- was 35

-- Item ID's
local FOLDING_STAND = 7379

function spawn(NPC)
	ProvidesQuest(NPC, INFORMATION_MERCHANTS)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, MEETING_WITH_CAYAN) then
		if HasCompletedQuest(Spawn, INFORMATION_MERCHANTS) then
			if HasCompletedQuest(Spawn, CONFRONTATION) then
			elseif HasQuest(Spawn, CONFRONTATION) then
				AhWelcomeBack(NPC, Spawn)
			end
		elseif HasQuest(Spawn, INFORMATION_MERCHANTS) then
			Say(NPC, "Have any problems friend?", Spawn)
		else
			HaveYouCollectedBerries(NPC, Spawn)
		end
	elseif HasQuest(Spawn, MEETING_WITH_CAYAN) then
		if GetQuestStep(Spawn, MEETING_WITH_CAYAN) == 1 then
			BetterHaveAGoodReason(NPC, Spawn)
		else
			HaveYouCollectedBerries(NPC, Spawn)
		end
	end
end

-------------------------------------------------------------------------------------------------------------------
--         QUEST 1
-------------------------------------------------------------------------------------------------------------------
function BetterHaveAGoodReason(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable001.mp3", "", "", 2955433596, 3328302943, Spawn)
   AddConversationOption(conversation, "I have a job to ask of you, Maareona sent me.", "dlg_35_1")
   StartConversation(conversation, NPC, Spawn, "You better have a good reason for being back here.")
end

function dlg_35_1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable002.mp3", "", "", 3326314353, 4151016678, Spawn)
   AddConversationOption(conversation, "We need-", "dlg_35_2")
   StartConversation(conversation, NPC, Spawn, "You wish a favor of your own accord? Speak of nothing else. What do you need?")
end

function dlg_35_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable003.mp3", "", "", 3734878539, 3356918318, Spawn)
   AddConversationOption(conversation, "I need information on a package that was delivered to Qeynos recently.", "dlg_35_3")
   StartConversation(conversation, NPC, Spawn, "You need...")
end

function dlg_35_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable004.mp3", "", "", 3348898221, 3703761299, Spawn)
   AddConversationOption(conversation, "It was delivered to an Erudite by the name of Oolium Artanaes. Its final destination is within Starcrest Commune, but it hasn't been delivered yet. I need to know the whereabouts of this package.", "dlg_35_4")
   StartConversation(conversation, NPC, Spawn, "And what information do you have regarding this package?")
end

function dlg_35_4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable005.mp3", "", "", 3481387344, 4143272170, Spawn)
   AddConversationOption(conversation, "What favor?", "dlg_35_5")
   StartConversation(conversation, NPC, Spawn, " Very well. This will take some time, but not much. I will need to contact some friends, but I will get your information. For now I need you to do me a favor.")
end

function dlg_35_5(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable006.mp3", "", "", 2014036225, 2408031230, Spawn)
   AddConversationOption(conversation, "I'll do it.", "dlg_36_6")
   AddConversationOption(conversation, "Why do you need me to do this for you?", "dlg_35_6")
   StartConversation(conversation, NPC, Spawn, "Red Sun Berries grow all around the Starcrest Commune. I need you to collect some for me.")
end

function dlg_35_6(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable007.mp3", "", "", 96821559, 3612059519, Spawn)
   AddConversationOption(conversation, "So you want me to take the fall for you if I get caught?", "dlg_35_7")
   StartConversation(conversation, NPC, Spawn, "Well, you owe me, for one. Also, I can't risk being caught with Red Sun Berries. I have a record, and having certain items that can be broken down into alchemical compounds used by assassins - despite how I intend to use them - would complicate my stay here in the Starcrest Commune.")
end

function dlg_35_7(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable008.mp3", "", "", 104262270, 421900564, Spawn)
   AddConversationOption(conversation, "That's a pretty flimsy excuse, isn't it? What do you need them for?", "dlg_35_8")
   StartConversation(conversation, NPC, Spawn, "Hardly. You're an Erudite. You people are always using Red Sun Berries for alchemical experiments and what not. Nobody will question an Erudite collecting some berries. If they do, just tell them you're looking to cure some ancient disease, they'll buy it.")
end

function dlg_35_8(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable009.mp3", "", "", 655615143, 4278558385, Spawn)
   AddConversationOption(conversation, "I'm in.", "dlg_36_6")
   AddConversationOption(conversation, "I'm out.")
   StartConversation(conversation, NPC, Spawn, "The excuse is not flimsly for someone without a record. An extract from the berries themselves has been known to dull the magical prowess of those who consume it. This is something a client of mine wishes to study, as such I need the berries. I am not interested in whatever malicious uses the berries may have... for now. Are you in or out?")
end

function dlg_36_6(NPC, Spawn)
   SetStepComplete(Spawn, MEETING_WITH_CAYAN, 1)

   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable010.mp3", "", "", 3772026299, 415172365, Spawn)
   AddConversationOption(conversation, "Thanks, how do I get out of here?", "ThanksHowDoIGetOut")
   AddConversationOption(conversation, "I will get them.")
   StartConversation(conversation, NPC, Spawn, "I thought so. You can find the berries on some bushes around Starcrest Commune. They're not very obvious, as they rest at the heart of the bush itself, but if you reach in and give it a good shake, you should get some.")
end

function ThanksHowDoIGetOut(NPC, Spawn)
   PlayFlavor(NPC, "", "Just climb through this bush here.", "", 1689589577, 4560189, Spawn)
end

function HaveYouCollectedBerries(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable011.mp3", "", "", 1406752203, 243044540, Spawn)
   
	if GetQuestStep(Spawn, MEETING_WITH_CAYAN) == 2 then
		AddConversationOption(conversation, "Not yet.")
	elseif (HasCompletedQuest(Spawn, MEETING_WITH_CAYAN) and not HasCompletedQuest(Spawn, INFORMATION_MERCHANTS)) or (HasQuest(Spawn, MEETING_WITH_CAYAN) and GetQuestStep(Spawn, MEETING_WITH_CAYAN) == 3) then
		AddConversationOption(conversation, "Yes I have.", "CollectedBerries")
	end
	
	AddConversationOption(conversation, "How do I get out of here?", "dlg_38_1")
	StartConversation(conversation, NPC, Spawn, "Have you collected the berries yet?")
end

function dlg_38_1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable011a.mp3", "", "", 399132427, 3525586740, Spawn)
   AddConversationOption(conversation, "Thanks.")
   StartConversation(conversation, NPC, Spawn, "You can use the bush behind me to pull yourself out of here.")
end

function CollectedBerries(NPC, Spawn)
	SetStepComplete(Spawn, MEETING_WITH_CAYAN, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable012.mp3", "", "", 1654045376, 2588392355, Spawn)
	AddConversationOption(conversation, "Pick it up?", "dlg_41_2")
	StartConversation(conversation, NPC, Spawn, "Good. Your information has been acquired. You may pick it up at your earliest convenience. It may be time sensitive, so I would suggest sooner rather than later. Take this for services rendered. Your information was easier to acquire than I had guessed.")
end

-----------------------------------------------------------------------------------------------------------
--				QUEST 2
-----------------------------------------------------------------------------------------------------------

function dlg_41_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable013.mp3", "", "", 1738977381, 1610837494, Spawn)
	AddConversationOption(conversation, "All right...", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "You can obtain it from Zinun Loospakina, just north east of the entrance to the Peat Bog. He should have a small, bronze statuette for sale. Nobody in their right mind would purchase such an item. You, however, will find it quite irresistible and charming.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, INFORMATION_MERCHANTS)
end

------------------------------------------------------------------------------------------------------------
--				QUEST 4
------------------------------------------------------------------------------------------------------------

function AhWelcomeBack(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable014.mp3", "", "", 1560703880, 2874329405, Spawn)
	
	if GetQuestStep(Spawn, CONFRONTATION) == 1 then
		AddConversationOption(conversation, "I need the stand that you were spoken to about earlier.", "dlg_52_1")
	else
		if not HasItem(Spawn, FOLDING_STAND) then
			AddConversationOption(conversation, "I need the stand that you were spoken to about earlier.", "dlg_52_1")
		else
			AddConversationOption(conversation, "Nothing for now.")
		end
	end
	
	StartConversation(conversation, NPC, Spawn, "Ah, welcome back. What can I do for you this time?")
end

function dlg_52_1(NPC, Spawn)
	if GetQuestStep(Spawn, CONFRONTATION) == 1 then
		SetStepComplete(Spawn, CONFRONTATION, 1)
	end
	
	SummonItem(Spawn, FOLDING_STAND)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable015.mp3", "", "", 1707606183, 700025760, Spawn)
	AddConversationOption(conversation, "Nothing else.", "NothingElse")
	StartConversation(conversation, NPC, Spawn, "Of course. It's yours. Is there anything else?")
end

function NothingElse(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Then may the day treat you well.")
end