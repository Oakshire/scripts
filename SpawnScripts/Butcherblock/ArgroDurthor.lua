--[[
	Script Name	: SpawnScripts/ButcherblockMountains/ArgroDurthor.lua
	Script Purpose	: Argro Durthor <Irontoe Brigade Recruit>
	Script Author	: jakejp
	Script Date	: 2018.06.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheYarpsnarls = 280
local TheManyUsesOfCarapace = 281
local IrontoeBrigadeRequisitionLists = 282
local DeliveryToVerung

function spawn(NPC)
	ProvidesQuest(NPC, TheYarpsnarls)
	ProvidesQuest(NPC, TheManyUsesOfCarapace)
	ProvidesQuest(NPC, IrontoeBrigadeRequisitionLists)
	ProvidesQuest(NPC, DeliveryToVerung)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, TheYarpsnarls) == false and HasQuest(Spawn, TheYarpsnarls) == false and CanReceiveQuest(Spawn, TheYarpsnarls) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1010.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am " .. GetName(Spawn) .. ". What do you mean, 'convenient'?", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Well met! Argro Durthor's the name, right convenient to meet you.")
	elseif GetQuestStep(Spawn, TheYarpsnarls) == 1 or GetQuestStep(Spawn, TheYarpsnarls) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1010.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you taken care of the kobolds?")
	elseif GetQuestStep(Spawn, TheYarpsnarls) == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken care of the kobolds?")
	elseif HasCompletedQuest(Spawn, TheManyUsesOfCarapace) == false and HasQuest(Spawn, TheManyUsesOfCarapace) == false and CanReceiveQuest(Spawn, TheManyUsesOfCarapace) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken care of the kobolds?")
	elseif GetQuestStep(Spawn, TheManyUsesOfCarapace) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you gathered the materials?")
	elseif GetQuestStep(Spawn, TheManyUsesOfCarapace) == 2 then	
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yup, here you go.", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "Have you gathered the materials?")
	elseif HasCompletedQuest(Spawn, IrontoeBrigadeRequisitionLists) == false and HasQuest(Spawn, IrontoeBrigadeRequisitionLists) == false and CanReceiveQuest(Spawn, IrontoeBrigadeRequisitionLists) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yup, here you go.", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "Have you gathered the materials?")
	elseif GetQuestStep(Spawn, IrontoeBrigadeRequisitionLists) <= 1 and GetQuestStep(Spawn, IrontoeBrigadeRequisitionLists) >= 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I haven't collected them yet.")
		StartConversation(conversation, NPC, Spawn, "Do you have the requisition lists?")
	elseif GetQuestStep(Spawn, IrontoeBrigadeRequisitionLists) == 4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I do.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the requisition lists?")
	elseif HasCompletedQuest(Spawn, DeliveryToVerung) == false and HasQuest(Spawn, DeliveryToVerung) == false and CanReceiveQuest(Spawn, DeliveryToVerung) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I do.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the requisition lists?")
	elseif GetQuestStep(Spawn, DeliveryToVerung) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Thanks again for all yer help!")
	elseif HasCompletedQuest(Spawn, DeliveryToVerung) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Thanks again for all yer help!")
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, TheManyUsesOfCarapace) then
		SetStepComplete(Spawn, TheManyUsesOfCarapace, 2)
	end
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure, what do you need?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Ah, excellent. These will do nicely. I'd like to get started on creating the armor as soon as possible. Would you mind doing another favor for me while I work on this?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So I have to find out what the miners need?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "In the area south of here, on the south eastern wall there is a cave. In these caves we have a number of miners extracting minerals. We use these minerals for--well, that's not important, at least not to me so I never bothered to learn what we use the minerals for. The important thing is that I've been tasked with collecting the requisition forms from the miners. If we don't keep the miners supplied then they can't work, obviously.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right.", "GiveIrontoeBrigadeRequisitionLists")
	AddConversationOption(conversation, "You will have to find someone else for this task.")
	StartConversation(conversation, NPC, Spawn, "Yeah, but it's not as hard as it sounds. There are three dig supervisors in the caves, one for each section. Among other things, they are tasked with having and maintaining these requisition lists. All you need to do is find the supervisors and collect the lists from them.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ok.", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "Once you get the lists, bring them back to me.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Just in time for what?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Well you're here just in time!")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you want of me?", "dlg_3_3")
	AddConversationOption(conversation, "Absolutely not! Find yourself another sentient shield.")
	StartConversation(conversation, NPC, Spawn, "For the dwarven reclamation of Kaladim, of course! We're on the eve of it,  .. GetName(Spawn) .. , and soon no dwarf will have to settle for living anywhere else. Er, well not literally on the eve. Make no mistake we've still got plenty of hard years of work ahead of us, but the day will come when Kaladim will once again be ours. And you're in the right place at the right time to do your part, what do you say?")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So what do I need to do?", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "The first order of business involves cleaning up the Butcherblock Mountains. I am but one of many tasked with such a project, we have other projects as well but the most pressing one is to make Butcherblock safe. Kobolds, bugbears, goblins, sirens, aviaks--these all have some hold on Butcherblock. It is our job to lessen their hold and prepare for our eventual liberation of Kaladim.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay, I'll take them out.", "GiveTheYarpsnarls")
	StartConversation(conversation, NPC, Spawn, "If you'd like to help me we can start with the Yarpsnarl kobolds. They are all over Butcherblock, but east of here it is very common to run into some of their lesser ranks: lookouts and ravagers. While taking them out won't topple the kobold army, it will keep them on the defensive in this region.")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, NPC, Spawn, "That's what I like to hear!")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, IrontoeBrigadeRequisitionLists) then 
		SetStepComplete(Spawn, IrontoeBrigadeRequisitionLists, 4)
	end
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you. What favor is that?", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Ah good work! I appreciate all the help you've given me. Here, please, take one of these as a token of my gratitude. If you could do one last favor for me I'd be ever-grateful.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ok, I'll drop these off with him.", "GiveDeliveryToVerung")
	StartConversation(conversation, NPC, Spawn, "These requisition lists need to get to Verung Kae'Rush at the western Irontoe Brigade outpost. In the eastern outpost--just south east of here--there is a tunnel that will take you to the western outpost.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Verung is my commanding officer, so try not to mention how much you helped me if you can avoid it.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, TheYarpsnarls) then
		SetStepComplete(Spawn, TheYarpsnarls, 3)
	end
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why not?", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "Great! If we keep the kobolds busy defending then we'll have an easier time building and training an army to retake Kaladim. That's another thing I've volunteered to help with, the creation of the army. I've been tasked with coming up with 'non-standard' methods of outfitting an army for combat. By 'nonstandard' they mean cheap. But that doesn't worry Ol' Argro...")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "To use for armor?", "dlg_16_3")
	StartConversation(conversation, NPC, Spawn, "Since time began wars have been fought and more often than not the soldiers didn't have access to refined metals and hot forges. They made do with what they had available to them, and that's what I intend to do. West of here, in front of Kaladim herself, there's a large number of beetles. I need you to collect some of their carapaces for me!")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll go see what I can gather.", "GiveTheManyUsesOfCarapace")
	AddConversationOption(conversation, "Get someone else to smash your bugs.")
	StartConversation(conversation, NPC, Spawn, "Exactly! In my experience the harder shells come from the smaller beetles: the ones we call the stone and granite beetles--obviously they got those names for a reason, eh? Anyway, I'd like ten of each carapace type, that should be enough to come up with some armor sets I can propose to my uppers. If they like it, maybe I'll become famous! 'Argro's Armor,' they'll say, 'the recapture of Kaladim wasn't possible without it!'")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, all right.", "dlg_16_5")
	StartConversation(conversation, NPC, Spawn, "'Why, if it wasn't for Argro, we might still be living out in the Butcherblock mountains, or worse still Freeport! Oh, that Argro, he sure did attract the ladies--even the non dwarven ones!'")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Just in time for what?", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Well you're here just in time!")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you want of me?", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "For the dwarven reclamation of Kaladim, of course! We're on the eve of it, Calisharoo, and soon no dwarf will have to settle for living anywhere else. Er, well not literally on the eve. Make no mistake we've still got plenty of hard years of work ahead of us, but the day will come when Kaladim will once again be ours. And you're in the right place at the right time to do your part, what do you say?")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So what do I need to do?", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "The first order of business involves cleaning up the Butcherblock Mountains. I am but one of many tasked with such a project, we have other projects as well but the most pressing one is to make Butcherblock safe. Kobolds, bugbears, goblins, sirens, aviaks--these all have some hold on Butcherblock. It is our job to lessen their hold and prepare for our eventual liberation of Kaladim.")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ok, I'll take them out.", "dlg_19_5")
	StartConversation(conversation, NPC, Spawn, "If you'd like to help me we can start with the Yarpsnarl kobolds. They are all over Butcherblock, but east of here it is very common to run into some of their lesser ranks: lookouts and ravagers. While taking them out won't topple the kobold army, it will keep them on the defensive in this region.")
end

function dlg_19_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be back.", "dlg_19_6")
	StartConversation(conversation, NPC, Spawn, "That's what I like to hear!")
end

function GiveTheYarpsnarls(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheYarpsnarls)
end

function GiveTheManyUsesOfCarapace(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheManyUsesOfCarapace)
end

function GiveIrontoeBrigadeRequisitionLists(NPC, Spawn)
	OfferQuest(NPC, Spawn, IrontoeBrigadeRequisitionLists)
end

function GiveDeliveryToVerung(NPC, Spawn)
	OfferQuest(NPC, Spawn, DeliveryToVerung)
end
