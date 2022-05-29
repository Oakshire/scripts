--[[
	Script Name	: SpawnScripts/PeatBog/BotanistLith.lua
	Script Purpose	: Botanist Lith 
	Script Author	: scatman
	Script Date	: 2009.05.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

local KERRA = 11
local QUEST_1 = 304
local Earth = 518

function spawn(NPC)
ProvidesQuest(NPC,Earth)
waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 585.41, -32.69, 451.28, 2, math.random(6,10))
	MovementLoopAddLocation(NPC, 591.6, -32.89, 450.66, 2, 0)
	MovementLoopAddLocation(NPC, 596.91, -32.9, 451.12, 2, math.random(6,10))
	MovementLoopAddLocation(NPC, 601.87, -33.14, 458.38, 2, 0)
	MovementLoopAddLocation(NPC, 601.2, -33.16, 458.64, 2, math.random(6,10))
	MovementLoopAddLocation(NPC, 597.68, -33.28, 465.53, 2, math.random(6,10))
	MovementLoopAddLocation(NPC, 589.82, -33.3, 461.79, 2, math.random(6,10))
	MovementLoopAddLocation(NPC, 596.72, -33.25, 456.47, 2, math.random(6,10))
	MovementLoopAddLocation(NPC, 588.61, -33.35, 455.78, 2, math.random(6,10))
	MovementLoopAddLocation(NPC, 588.92, -33.33, 455.19, 2, math.random(6,10))
	MovementLoopAddLocation(NPC, 584.94, -32.68, 452.84, 2, 0)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if GetRace(Spawn)==11 then
    if not HasQuest(Spawn,Earth) and not HasCompletedQuest(Spawn,Earth) or HasQuest(Spawn, QUEST_1) then
        Dialog1(NPC, Spawn)
    elseif HasQuest(Spawn,Earth) and GetQuestStep(Spawn,Earth) ~= 5 and not GetQuestStep(Spawn,Earth) == 5 then
        Dialog8(NPC, Spawn)
    elseif GetQuestStep(Spawn,Earth) == 5 or HasCompletedQuest(Spawn,Earth)then
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha000.mp3", "The plant life here is absolutely astounding.", "", 1585352530, 1011819212, Spawn)
	end
	else
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha000.mp3", "The plant life here is absolutely astounding.", "", 1585352530, 1011819212, Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The plant life here is absolutely astounding.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha000.mp3", 1585352530, 1011819212)
    if GetQuestStep(Spawn, QUEST_1)==1 then
    Dialog.AddOption("Lakosha Maera sent me.", "Dialog2")
    end
    if not HasCompletedQuest(Spawn,Earth) then
    Dialog.AddOption("What makes it so special?", "Dialog4")
    end
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, wonderful. I have not spoken to her in quite some time. What news does she send?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha001.mp3", 2621096962, 3551613449)
	Dialog.AddOption("Unfortunate news. Someone in Nettleville attempted to perform a Pa'Rok ceremony with tainted dirt.", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm not familiar with that ceremony, was anybody hurt?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha002.mp3", 619900214, 1453098884)
	Dialog.AddOption("No, but the ceremony was for naught. Lakosha asked me to visit you because the dirt that corrupted the ceremony came from Peat Bog.", "Dialog14")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, I see. I guess that agrees with my findings, unfortunately.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha003.mp3", 418560600, 341427965)
	Dialog.AddOption("How so?", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well... I've been wanting to do some tests on the dirt around here. I don't know what the foreign element is that is causing these rapid changes, but once I isolate it I may have more answers. Would you like to help me collect samples?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh003.mp3", 1678486311, 1223720082)
	Dialog.AddOption("Sure, I will help.", "Dialog7")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end



function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Great! I'd like some mud samples first of all. I'd also like some samples from the stomachs of the slugs and sludges--they spend enough time ingesting portions of the ground that I'd like to study them as well. Bring me these samples and I can get to work.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh004.mp3", 4140283981, 1039664497)
	Dialog.AddOption("All right.", "OfferQuest2")
	Dialog.Start()
end

function OfferQuest2(NPC,Spawn)
    	FaceTarget(NPC, Spawn)
        OfferQuest(NPC,Spawn,Earth)
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, to me the interactions between plants dead--and dying--with the living portions of the bog are the most interesting. It can take a plant two or three times as long to die in this environment, though I haven't figured out precisely why. Most people are interested in other things, however.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh001.mp3", 3970787488, 1942649410)
	Dialog.AddOption("What other things?", "Dialog11")
	Dialog.Start()
end


---------------------



function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have you collected all the samples?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh005.mp3", 2061702354, 314216809)
    if GetQuestStep(Spawn,Earth)==4 then
	Dialog.AddOption("Yes, I have.", "Dialog12")
	end
	Dialog.AddOption("Still working on it!", "")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, perfect. I can start my tests immediately. Thank you for your help.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh006.mp3", 1322390703, 2911971980)
	Dialog.AddOption("You're welcome.", "Dialog10")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm... this is interesting. It may mean nothing at all, but each sample you've brought me has trace elements of a mineral not found naturally in the Peat Bog. It is, however, found in abundance in The Caves.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh007.mp3", 1536841031, 2449487818)
	Dialog.AddOption("What does that mean?", "Dialog13")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    if HasItem(Spawn,4457) then
        RemoveItem(Spawn,4457,4)
    end
    if GetQuestStep(Spawn,Earth)==4 then
	SetStepComplete(Spawn, Earth, 4)
	end
	Dialog.AddDialog("Maybe nothing... just to be safe I think you should let the Qeynos Guard know about this. Speak with Lieutenant Dawson near the gates to Nettleville. She'll decide whether or not this is worth getting in a fuss over. Thanks again for your help. I can't wait to study this more.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh008.mp3", 4173156676, 1061657601)
	Dialog.AddOption("You're welcome.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The plant life here is absolutely astounding.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh000.mp3", 1130721210, 2119698425)
	Dialog.AddOption("What makes it so special?", "Dialog4")
	Dialog.Start()
end



function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, the animal life in the Peat Bog mostly. I'm not as interested in that as I am the plants, but I must admit the size of the creatures here is rather amazing. It urges the mind to come up with theories on what could've caused something like this.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh002.mp3", 1376395536, 341377285)
	Dialog.AddOption("Do you have any theories?", "Dialog3")
	Dialog.Start()
end





--[[

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha001.mp3", "", "", 2621096962, 3551613449, Spawn)
	AddConversationOption(conversation, "Unfortunate news. Someone in Nettleville attempted to perform a Pa'Rok ceremony with tainted dirt.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Ah, wonderful. I have not spoken to her in quite some time. What news does she send?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha002.mp3", "", "", 619900214, 1453098884, Spawn)
	AddConversationOption(conversation, "No, but the ceremony was for naught. Lakosha asked me to visit you because the dirt that corrupted the ceremony came from Peat Bog.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "I'm not familiar with that ceremony, was anybody hurt?")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha003.mp3", "", "", 418560600, 341427965, Spawn)
	AddConversationOption(conversation, "How so?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Oh, I see. I guess that agrees with my findings, unfortunately.")
end

 raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh000.mp3", "The plant life here is absolutely astounding.", "", 1130721210, 2119698425, Spawn)
--]]

