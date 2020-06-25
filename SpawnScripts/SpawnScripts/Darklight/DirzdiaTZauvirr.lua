--[[
	Script Name	: SpawnScripts/DarklightWood/DirzdiaTZauvirr.lua
	Script Purpose	: Dirzdia T'Zauvirr 
	Script Author	: fearfx
	Script Date	: 2017.01.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data

	Smoking the Competition
	Reaping the Benefits of a Monopoly
	So Hot You Catch Them Cooked
	The Big One
	Rich Fish Flesh

--]]

local HopefulNetReturns = 160
local SmokingTheCompetition = 187
local ReapingTheBenefits = 188
local SoHotYouCatch = 189
local TheBigOne = 190
--local RichFishFlesh = 191

function spawn(NPC)
	ProvidesQuest(NPC, SmokingTheCompetition)
	ProvidesQuest(NPC, ReapingTheBenefits)
	ProvidesQuest(NPC, SoHotYouCatch)
	ProvidesQuest(NPC, TheBigOne)
	--ProvidesQuest(NPC, RichFishFlesh)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, HopefulNetReturns) and not HasCompletedQuest(Spawn, HopefulNetReturns) then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery000.mp3", "", "", 169576251, 1164193707, Spawn)
		AddConversationOption(conversation, "Hi. I've a delivery from Aunthrae for you.", "Quest_HopefulNetReturns")
		StartConversation(conversation, NPC, Spawn, "Hello.")
	elseif HasCompletedQuest(Spawn, HopefulNetReturns) and not HasQuest(Spawn, SmokingTheCompetition) and not HasCompletedQuest(Spawn, SmokingTheCompetition) then
	    AddConversationOption(conversation, "Hi.", "Quest_SmokingTheCompetition_01")
	    StartConversation(conversation, NPC, Spawn, "Hello.")
	elseif HasQuest(Spawn, SmokingTheCompetition) and GetQuestStep(Spawn, SmokingTheCompetition) == 2 then
	    AddConversationOption(conversation, "I have. Here you go.", "Quest_ReapingTheBenefits")
	    StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	elseif HasCompletedQuest(Spawn, SmokingTheCompetition) and not HasQuest(Spawn, ReapingTheBenefits) and not HasCompletedQuest(Spawn, ReapingTheBenefits) then
	    AddConversationOption(conversation, "I have. Here you go.", "Quest_ReapingTheBenefits")
	    StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	elseif HasQuest(Spawn, ReapingTheBenefits) and GetQuestStep(Spawn, ReapingTheBenefits) == 2 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia013.mp3", "", "", 4057665445, 4206402151, Spawn)
		AddConversationOption(conversation, "I do. Here you are.", "Quest_SoHotYouCatch")
		StartConversation(conversation, NPC, Spawn, "Do you have them?")
	elseif HasCompletedQuest(Spawn, ReapingTheBenefits) and not HasQuest(Spawn, SoHotYouCatch) and not HasCompletedQuest(Spawn, SoHotYouCatch) then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia013.mp3", "", "", 4057665445, 4206402151, Spawn)
		AddConversationOption(conversation, "I do. Here you are.", "Quest_SoHotYouCatch")
		StartConversation(conversation, NPC, Spawn, "Do you have them?")
	elseif HasQuest(Spawn, SoHotYouCatch) and GetQuestStep(Spawn, SoHotYouCatch) == 2 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia017.mp3", "", "", 614943785, 2190575335, Spawn)
		AddConversationOption(conversation, "I sure did.", "Quest_TheBigOne")
		StartConversation(conversation, NPC, Spawn, "Did you get them?")
	elseif HasCompletedQuest(Spawn, SoHotYouCatch) and not HasQuest(Spawn, TheBigOne) and not HasCompletedQuest(Spawn, TheBigOne) then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia017.mp3", "", "", 614943785, 2190575335, Spawn)
		AddConversationOption(conversation, "I sure did.", "Quest_TheBigOne")
		StartConversation(conversation, NPC, Spawn, "Did you get them?")
	elseif HasQuest(Spawn, TheBigOne) and GetQuestStep(Spawn, TheBigOne) == 2 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia023.mp3", "", "", 2998879726, 1525879375, Spawn)
		AddConversationOption(conversation, "I have, actually.", "Quest_TheBigOne_03")
		StartConversation(conversation, NPC, Spawn, "Have you found my lure?")
	else
	    Say(NPC, "END")
	end

end

--------------------------------------------------------------------------------------
--			Hopeful Net Returns
--------------------------------------------------------------------------------------

function Quest_HopefulNetReturns(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, HopefulNetReturns, 1)
	
	StartConversation(conversation, NPC, Spawn, "Perfect! Thanks! Just put it on the ground there.")
end

--------------------------------------------------------------------------------------
--	      SmokingTheCompetition
--------------------------------------------------------------------------------------

function Quest_SmokingTheCompetition_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Hello.", "Quest_SmokingTheCompetition_02")
	StartConversation(conversation, NPC, Spawn, "Hi.")
end

function Quest_SmokingTheCompetition_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "... goodbye.", "Quest_SmokingTheCompetition_03")
	StartConversation(conversation, NPC, Spawn, "Hello.")
end

function Quest_SmokingTheCompetition_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "What?", "Quest_SmokingTheCompetition_04")
	StartConversation(conversation, NPC, Spawn, "Hey, Wait!")
end

function Quest_SmokingTheCompetition_04(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Why do you ask?", "Quest_SmokingTheCompetition_05")
	StartConversation(conversation, NPC, Spawn, "How good are you at killing?")
end

function Quest_SmokingTheCompetition_05(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "What do you want me to do?", "Quest_SmokingTheCompetition_06")
	StartConversation(conversation, NPC, Spawn, "Fishing is getting more and more difficult as the razormaw in this river reach maturity. They break my lines, steal my lures, and eat all the fish before I have a chance to catch them! But they sure do taste great when smoked!")
end

function Quest_SmokingTheCompetition_06(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "All right, I'll help you.", "QuestOffer_SmokingTheCompetition")
	AddConversationOption(conversation, "Find someone else.")
	StartConversation(conversation, NPC, Spawn, "Kill them for me so I can fish in peace... and so I can have a tasty dinner. What do you say? I'll compensate you for your time, of course.")
end

function QuestOffer_SmokingTheCompetition(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	OfferQuest(NPC, Spawn, SmokingTheCompetition)
	AddConversationOption(conversation, "I'll be back when I've killed them.")
	StartConversation(conversation, NPC, Spawn, "Great! I appreciate it!")
end

--------------------------------------------------------------------------------------
--		Reaping the Benefits of a Monopoly
--------------------------------------------------------------------------------------

function Quest_ReapingTheBenefits(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, SmokingTheCompetition) then
	    SetStepComplete(Spawn, SmokingTheCompetition, 2)
	end
	
	AddConversationOption(conversation, "I'm " .. GetName(Spawn) .. ".", "Quest_ReapingTheBenefits_01")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way. I've been sent out here to catch fish to help feed those stationed at T'Vatar Outpost.")
end

function Quest_ReapingTheBenefits_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
		AddConversationOption(conversation, "All the time.", "Quest_ReapingTheBenefits_02")
		AddConversationOption(conversation, "Sometimes.", "Quest_ReapingTheBenefits_02")
		AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "Oh, I'll never remember that. Tell me, do you fish much?")
end

function Quest_ReapingTheBenefits_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
	    AddConversationOption(conversation, "What kind of help?", "Quest_ReapingTheBenefits_03")
	StartConversation(conversation, NPC, Spawn, "Well, the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function Quest_ReapingTheBenefits_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia011.mp3", "", "", 3261932029, 3599840953, Spawn)
    	AddConversationOption(conversation, "Sure, I'll help.", "QuestOffer_ReapingTheBenefits")
    	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Just help me catch them. Right now I'm trying to catch searing trout. They swim around in the Lower Tendril River. What do you say?")
end

function QuestOffer_ReapingTheBenefits(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

    OfferQuest(NPC, Spawn, ReapingTheBenefits)
	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia012.mp3", "", "", 2680874987, 3116118568, Spawn)
    	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Great! Just bring them back to me when you've caught them.")
end

--------------------------------------------------------------------------------------
--		So Hot You Catch Them Cooked
--------------------------------------------------------------------------------------

function Quest_SoHotYouCatch(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetQuestStep(Spawn, ReapingTheBenefits) == 2 then
	    SetStepComplete(Spawn, ReapingTheBenefits, 2)
	end

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia014.mp3", "", "", 3630010163, 822378916, Spawn)
		AddConversationOption(conversation, "What kind of fish do you need?", "Quest_SoHotYouCatch_01")
	StartConversation(conversation, NPC, Spawn, "Great! These will go a long ways towards feeding the soldiers stationed at T'Vatar Outpost. Now then, if you'd like, you could help me catch some more fish.")
end

function Quest_SoHotYouCatch_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia015.mp3", "", "", 2001952195, 1089349401, Spawn)
		AddConversationOption(conversation, "I can fish them up.", "QuestOffer_SoHotYouCatch")
		AddConversationOption(conversation, "I'd prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Seared char! I know, their name is repetitive! They swim in the Searing Tendril, before it splits off into the Lower Tendril River. If you could fish me up some, that would be great!")
end

function QuestOffer_SoHotYouCatch(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	OfferQuest(NPC, Spawn, SoHotYouCatch)
	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia016.mp3", "", "", 3096333821, 2080368744, Spawn)
	StartConversation(conversation, NPC, Spawn, "Glad to hear it! I'll be waiting here... fishing!")
end

--------------------------------------------------------------------------------------
--		The Big One
--------------------------------------------------------------------------------------

function Quest_TheBigOne(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetQuestStep(Spawn, SoHotYouCatch) == 2 then
	    SetStepComplete(Spawn, SoHotYouCatch, 2)
	end

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia018.mp3", "", "", 2836144377, 248697270, Spawn)
		AddConversationOption(conversation, "Smolderfin?", "Quest_TheBigOne_01")
	StartConversation(conversation, NPC, Spawn, "You're a much better fisher than I am. Maybe that's why I enjoy it though. I can always get better. I bet you could catch Smolderfin!")
end

function Quest_TheBigOne_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia019.mp3", "", "", 1258409578, 147829151, Spawn)
		AddConversationOption(conversation, "How can we catch him, then?", "Quest_TheBigOne_02")
	StartConversation(conversation, NPC, Spawn, "He's a reclusive one, swims around up in Smoldering Lake. I hooked him once, but he took my pole down with him. Eventually it washed ashore and I got it back, but my favorite lure was gone.")
end

function Quest_TheBigOne_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia021.mp3", "", "", 4015813922, 782743353, Spawn)
		AddConversationOption(conversation, "Okay, I'm up for the challenge.", "QuestOffer_TheBigOne")
		AddConversationOption(conversation, "I don't think I'm interested.")
	StartConversation(conversation, NPC, Spawn, "Like I said, he's in Smoldering Lake. But it's rare that he comes out. He likes to eat the smoldering trout, though. If you catch enough of them and drop them in the lake, all bloody and squirming, I bet that will drag him out.")
end

function Quest_TheBigOne_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, TheBigOne, 2)

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia024.mp3", "", "", 4053635028, 357139583, Spawn)
		AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "You did? That's amazing. This is perfect, maybe now I'll finally catch something. Thank you, thank you very much!")
end

function QuestOffer_TheBigOne(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

    OfferQuest(NPC, Spawn, TheBigOne)
	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia022.mp3", "", "", 1365892706, 718371768, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_8_5")
	StartConversation(conversation, NPC, Spawn, "Good luck! Bring me back my lure if you find it.")
end

--[[
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery000.mp3", "", "", 169576251, 1164193707, Spawn)
		AddConversationOption(conversation, "Hi. I've a delivery from Fileyl for you.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Hello.")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia013.mp3", "", "", 4057665445, 4206402151, Spawn)
		AddConversationOption(conversation, "I do. Here you are.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Do you have them?")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia013.mp3", "", "", 4057665445, 4206402151, Spawn)
		AddConversationOption(conversation, "I do. Here you are.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Do you have them?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia000.mp3", "", "", 3120161704, 1555228530, Spawn)
		AddConversationOption(conversation, "Hi.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Hello.")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia017.mp3", "", "", 614943785, 2190575335, Spawn)
		AddConversationOption(conversation, "I sure did.", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "Did you get them?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia017.mp3", "", "", 614943785, 2190575335, Spawn)
		AddConversationOption(conversation, "I sure did.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Did you get them?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia007.mp3", "", "", 1448690893, 2588880650, Spawn)
		AddConversationOption(conversation, "I do, here you go.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia007.mp3", "", "", 1448690893, 2588880650, Spawn)
		AddConversationOption(conversation, "I do, here you go.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia013.mp3", "", "", 4057665445, 4206402151, Spawn)
		AddConversationOption(conversation, "I do. Here you are.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Do you have them?")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery000.mp3", "", "", 169576251, 1164193707, Spawn)
		AddConversationOption(conversation, "Hi. I've a delivery from Fileyl for you.", "dlg_13_1")
		StartConversation(conversation, NPC, Spawn, "Hello.")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery000.mp3", "", "", 169576251, 1164193707, Spawn)
		AddConversationOption(conversation, "Hi. I've a delivery from Fileyl for you.", "dlg_21_1")
		StartConversation(conversation, NPC, Spawn, "Hello.")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia000.mp3", "", "", 3120161704, 1555228530, Spawn)
		AddConversationOption(conversation, "Hi.", "dlg_22_1")
		StartConversation(conversation, NPC, Spawn, "Hello.")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia007.mp3", "", "", 1448690893, 2588880650, Spawn)
		AddConversationOption(conversation, "I do, here you go.", "dlg_23_1")
		StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia007.mp3", "", "", 1448690893, 2588880650, Spawn)
		AddConversationOption(conversation, "I do, here you go.", "dlg_24_1")
		StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia013.mp3", "", "", 4057665445, 4206402151, Spawn)
		AddConversationOption(conversation, "I do. Here you are.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "Do you have them?")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia013.mp3", "", "", 4057665445, 4206402151, Spawn)
		AddConversationOption(conversation, "I do. Here you are.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "Do you have them?")
	end

	if convo==32 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery000.mp3", "", "", 169576251, 1164193707, Spawn)
		AddConversationOption(conversation, "Hi. I've a delivery from Aunthrae for you.", "dlg_32_1")
		StartConversation(conversation, NPC, Spawn, "Hello.")
	end

	if convo==38 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia017.mp3", "", "", 614943785, 2190575335, Spawn)
		AddConversationOption(conversation, "I sure did.", "dlg_38_1")
		StartConversation(conversation, NPC, Spawn, "Did you get them?")
	end

	if convo==39 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia023.mp3", "", "", 2998879726, 1525879375, Spawn)
		AddConversationOption(conversation, "I have, actually.", "dlg_39_1")
		StartConversation(conversation, NPC, Spawn, "Have you found my lure?")
	end

	if convo==47 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia007.mp3", "", "", 1448690893, 2588880650, Spawn)
		AddConversationOption(conversation, "I have.  Here you go.", "dlg_47_1")
		StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	end

	if convo==48 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia007.mp3", "", "", 1448690893, 2588880650, Spawn)
		AddConversationOption(conversation, "I have.  Here you go.", "dlg_48_1")
		StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	end

	if convo==49 then
		PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia007.mp3", "", "", 1448690893, 2588880650, Spawn)
		AddConversationOption(conversation, "I have.  Here you go.", "dlg_49_1")
		StartConversation(conversation, NPC, Spawn, "Have you got the razormaw?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery001.mp3", "", "", 1749958115, 2883042757, Spawn)
		AddConversationOption(conversation, "All right. Goodbye.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Perfect! Thanks! Just put it on the ground there.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery002.mp3", "", "", 2799282957, 2320910908, Spawn)
		AddConversationOption(conversation, "What?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Hey, wait!")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia000.mp3", "", "", 3120161704, 1555228530, Spawn)
		AddConversationOption(conversation, "Hi.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Hello.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
		AddConversationOption(conversation, "What kind of help?")
	StartConversation(conversation, NPC, Spawn, "Well the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia001.mp3", "", "", 1088846584, 3200436101, Spawn)
		AddConversationOption(conversation, "Hello.", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "Hi.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia002.mp3", "", "", 3622946514, 3238136826, Spawn)
		AddConversationOption(conversation, "... goodbye.", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "Hello.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery002.mp3", "", "", 2799282957, 2320910908, Spawn)
		AddConversationOption(conversation, "What?", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "Hey, wait!")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia003.mp3", "", "", 1931781458, 1316667418, Spawn)
		AddConversationOption(conversation, "Why do you ask?", "dlg_0_8")
	StartConversation(conversation, NPC, Spawn, "How good are you at killing?")
end

function dlg_0_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia004.mp3", "", "", 999431120, 423593637, Spawn)
		AddConversationOption(conversation, "What do you want me to do?", "dlg_0_9")
	StartConversation(conversation, NPC, Spawn, "Fishing is getting more and more difficult as the razormaw in this river reach maturity. They break my lines, steal my lures, and eat all the fish before I have a chance to catch them! But they sure do taste great when smoked!")
end

function dlg_0_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia005.mp3", "", "", 3936904424, 544099891, Spawn)
		AddConversationOption(conversation, "All right, I'll help you.", "dlg_0_10")
		AddConversationOption(conversation, "Find someone else.")
	StartConversation(conversation, NPC, Spawn, "Kill them for me so I can fish in peace... and so I can have a tasty dinner. What do you say? I'll compensate you for your time, of course.")
end

function dlg_0_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia006.mp3", "", "", 1689993769, 508680301, Spawn)
		AddConversationOption(conversation, "I'll be back when I've killed them.", "dlg_0_11")
	StartConversation(conversation, NPC, Spawn, "Great! I appreciate it!")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia014.mp3", "", "", 3630010163, 822378916, Spawn)
		AddConversationOption(conversation, "What kind of fish do you need?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Great! These will go a long ways towards feeding the soldiers stationed at T'Vatar Outpost. Now then, if you'd like, you could help me catch some more fish.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia015.mp3", "", "", 2001952195, 1089349401, Spawn)
		AddConversationOption(conversation, "I can fish them up.", "dlg_1_3")
		AddConversationOption(conversation, "I'd prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Seared char! I know, their name is repetitive! They swim in the Searing Tendril, before it splits off into the Lower Tendril River. If you could fish me up some, that would be great!")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia014.mp3", "", "", 3630010163, 822378916, Spawn)
		AddConversationOption(conversation, "What kind of fish do you need?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Great! These will go a long ways towards feeding the soldiers stationed at T'Vatar Outpost. Now then, if you'd like, you could help me catch some more fish.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia015.mp3", "", "", 2001952195, 1089349401, Spawn)
		AddConversationOption(conversation, "I can fish them up.", "dlg_2_3")
		AddConversationOption(conversation, "I'd prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Seared char! I know, their name is repetitive! They swim in the Searing Tendril, before it splits off into the Lower Tendril River. If you could fish me up some, that would be great!")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia016.mp3", "", "", 3096333821, 2080368744, Spawn)
	StartConversation(conversation, NPC, Spawn, "Glad to hear it! I'll be waiting here... fishing!")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia001.mp3", "", "", 1088846584, 3200436101, Spawn)
		AddConversationOption(conversation, "Hello.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Hi.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia018.mp3", "", "", 2836144377, 248697270, Spawn)
		AddConversationOption(conversation, "Smolderfin?", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "You're a much better fisher than I am. Maybe that's why I enjoy it though. I can always get better. I bet you could catch Smolderfin!")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia019.mp3", "", "", 1258409578, 147829151, Spawn)
		AddConversationOption(conversation, "How can we catch him, then?", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "He's a reclusive one, swims around up in Smoldering Lake. I hooked him once, but he took my pole down with him. Eventually it washed ashore and I got it back, but my favorite lure was gone.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia021.mp3", "", "", 4015813922, 782743353, Spawn)
		AddConversationOption(conversation, "Okay, I'm up for the challenge.", "dlg_7_4")
		AddConversationOption(conversation, "I don't think I'm interested.")
	StartConversation(conversation, NPC, Spawn, "Like I said, he's in Smoldering Lake. But it's rare that he comes out. He likes to eat the smoldering trout, though. If you catch enough of them and drop them in the lake, all bloody and squirming, I bet that will drag him out.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia018.mp3", "", "", 2836144377, 248697270, Spawn)
		AddConversationOption(conversation, "Smolderfin?", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "You're a much better fisher than I am. Maybe that's why I enjoy it though. I can always get better. I bet you could catch Smolderfin!")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia019.mp3", "", "", 1258409578, 147829151, Spawn)
		AddConversationOption(conversation, "How can we catch him, then?", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "He's a reclusive one, swims around up in Smoldering Lake. I hooked him once, but he took my pole down with him. Eventually it washed ashore and I got it back, but my favorite lure was gone.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia021.mp3", "", "", 4015813922, 782743353, Spawn)
		AddConversationOption(conversation, "Okay, I'm up for the challenge.", "dlg_8_4")
		AddConversationOption(conversation, "I don't think I'm interested.")
	StartConversation(conversation, NPC, Spawn, "Like I said, he's in Smoldering Lake. But it's rare that he comes out. He likes to eat the smoldering trout, though. If you catch enough of them and drop them in the lake, all bloody and squirming, I bet that will drag him out.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia022.mp3", "", "", 1365892706, 718371768, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_8_5")
	StartConversation(conversation, NPC, Spawn, "Good luck! Bring me back my lure if you find it.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia008.mp3", "", "", 2217132870, 3346276431, Spawn)
		AddConversationOption(conversation, "I'm XXXXXXX.", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
		AddConversationOption(conversation, "No.", "dlg_9_3")
		AddConversationOption(conversation, "Sometimes.")
		AddConversationOption(conversation, "All the time.")
	StartConversation(conversation, NPC, Spawn, "Oh I'll never remember that. Tell me, do you fish much?")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
		AddConversationOption(conversation, "What kind of help?")
	StartConversation(conversation, NPC, Spawn, "Well the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia008.mp3", "", "", 2217132870, 3346276431, Spawn)
		AddConversationOption(conversation, "I'm XXXXXXX.", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
		AddConversationOption(conversation, "No.", "dlg_10_3")
		AddConversationOption(conversation, "Sometimes.")
		AddConversationOption(conversation, "All the time.")
	StartConversation(conversation, NPC, Spawn, "Oh I'll never remember that. Tell me, do you fish much?")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
		AddConversationOption(conversation, "What kind of help?", "dlg_10_4")
	StartConversation(conversation, NPC, Spawn, "Well the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_10_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia011.mp3", "", "", 3261932029, 3599840953, Spawn)
		AddConversationOption(conversation, "Sure, I'll help.", "dlg_10_5")
		AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Just help me catch them. Right now I'm trying to catch searing trout. They swim around in the Lower Tendril River. What do you say?")
end

function dlg_10_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia012.mp3", "", "", 2680874987, 3116118568, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_10_6")
	StartConversation(conversation, NPC, Spawn, "Great! Just bring them back to me when you've caught them.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia014.mp3", "", "", 3630010163, 822378916, Spawn)
		AddConversationOption(conversation, "What kind of fish do you need?", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Great! I hope you enjoyed the fishing here, I certainly do. If you'd like, you could help me catch some more fish.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia015.mp3", "", "", 2001952195, 1089349401, Spawn)
		AddConversationOption(conversation, "I can fish them up.", "dlg_11_3")
		AddConversationOption(conversation, "I'd prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Seared char! I know, their name is repetitive! They swim in the Searing Tendril, before it splits off into the Lower Tendril River. If you could fish me up some, that would be great!")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia016.mp3", "", "", 3096333821, 2080368744, Spawn)
		AddConversationOption(conversation, "I'll be back.", "dlg_11_4")
	StartConversation(conversation, NPC, Spawn, "Glad to hear it! I'll be waiting here... fishing!")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery001.mp3", "", "", 1749958115, 2883042757, Spawn)
		AddConversationOption(conversation, "All right. Goodbye.", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Perfect! Thanks! Just put it on the ground there.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia003.mp3", "", "", 1931781458, 1316667418, Spawn)
		AddConversationOption(conversation, "Why do you ask?", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "How good are you at killing?")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia004.mp3", "", "", 999431120, 423593637, Spawn)
		AddConversationOption(conversation, "What do you want me to do?", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "Fishing is getting more and more difficult as the razormaw in this river reach maturity. They break my lines, steal my lures, and eat all the fish before I have a chance to catch them! But they sure do taste great when smoked!")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia005.mp3", "", "", 3936904424, 544099891, Spawn)
		AddConversationOption(conversation, "All right, I'll help you.", "dlg_13_5")
		AddConversationOption(conversation, "Find someone else.")
	StartConversation(conversation, NPC, Spawn, "Kill them for me so I can fish in peace... and so I can have a tasty dinner. What do you say? I'll compensate you for your time, of course.")
end

function dlg_13_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia006.mp3", "", "", 1689993769, 508680301, Spawn)
		AddConversationOption(conversation, "I'll be back when I've killed them.", "dlg_13_6")
	StartConversation(conversation, NPC, Spawn, "Great! I appreciate it!")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery001.mp3", "", "", 1749958115, 2883042757, Spawn)
		AddConversationOption(conversation, "All right. Goodbye.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "Perfect! Thanks! Just put it on the ground there.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery002.mp3", "", "", 2799282957, 2320910908, Spawn)
		AddConversationOption(conversation, "What?", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "Hey, wait!")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia003.mp3", "", "", 1931781458, 1316667418, Spawn)
		AddConversationOption(conversation, "Why do you ask?", "dlg_21_4")
	StartConversation(conversation, NPC, Spawn, "How good are you at killing?")
end

function dlg_21_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia004.mp3", "", "", 999431120, 423593637, Spawn)
		AddConversationOption(conversation, "What do you want me to do?", "dlg_21_5")
	StartConversation(conversation, NPC, Spawn, "Fishing is getting more and more difficult as the razormaw in this river reach maturity. They break my lines, steal my lures, and eat all the fish before I have a chance to catch them! But they sure do taste great when smoked!")
end

function dlg_21_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia005.mp3", "", "", 3936904424, 544099891, Spawn)
		AddConversationOption(conversation, "All right, I'll help you.", "dlg_21_6")
		AddConversationOption(conversation, "Find someone else.")
	StartConversation(conversation, NPC, Spawn, "Kill them for me so I can fish in peace... and so I can have a tasty dinner. What do you say? I'll compensate you for your time, of course.")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia001.mp3", "", "", 1088846584, 3200436101, Spawn)
		AddConversationOption(conversation, "Hello.", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Hi.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia002.mp3", "", "", 3622946514, 3238136826, Spawn)
		AddConversationOption(conversation, "... goodbye.", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "Hello.")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery002.mp3", "", "", 2799282957, 2320910908, Spawn)
		AddConversationOption(conversation, "What?", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "Hey, wait!")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia003.mp3", "", "", 1931781458, 1316667418, Spawn)
		AddConversationOption(conversation, "Why do you ask?", "dlg_22_5")
	StartConversation(conversation, NPC, Spawn, "How good are you at killing?")
end

function dlg_22_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia004.mp3", "", "", 999431120, 423593637, Spawn)
		AddConversationOption(conversation, "What do you want me to do?", "dlg_22_6")
	StartConversation(conversation, NPC, Spawn, "Fishing is getting more and more difficult as the razormaw in this river reach maturity. They break my lines, steal my lures, and eat all the fish before I have a chance to catch them! But they sure do taste great when smoked!")
end

function dlg_22_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia005.mp3", "", "", 3936904424, 544099891, Spawn)
		AddConversationOption(conversation, "All right, I'll help you.", "dlg_22_7")
		AddConversationOption(conversation, "Find someone else.")
	StartConversation(conversation, NPC, Spawn, "Kill them for me so I can fish in peace... and so I can have a tasty dinner. What do you say? I'll compensate you for your time, of course.")
end

function dlg_22_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia006.mp3", "", "", 1689993769, 508680301, Spawn)
		AddConversationOption(conversation, "I'll be back when I've killed them.", "dlg_22_8")
	StartConversation(conversation, NPC, Spawn, "Great! I appreciate it!")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia008.mp3", "", "", 2217132870, 3346276431, Spawn)
		AddConversationOption(conversation, "I'm Chayne.", "dlg_23_2")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way.")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
		AddConversationOption(conversation, "No.", "dlg_23_3")
		AddConversationOption(conversation, "Sometimes.")
		AddConversationOption(conversation, "All the time.")
	StartConversation(conversation, NPC, Spawn, "Oh I'll never remember that. Tell me, do you fish much?")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
		AddConversationOption(conversation, "What kind of help?")
	StartConversation(conversation, NPC, Spawn, "Well the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_23_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia011.mp3", "", "", 3261932029, 3599840953, Spawn)
		AddConversationOption(conversation, "Sure, I'll help.", "dlg_23_5")
		AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Just help me catch them. Right now I'm trying to catch searing trout. They swim around in the Lower Tendril River. What do you say?")
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia008.mp3", "", "", 2217132870, 3346276431, Spawn)
		AddConversationOption(conversation, "I'm Chayne.", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way.")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
		AddConversationOption(conversation, "No.", "dlg_24_3")
		AddConversationOption(conversation, "Sometimes.")
		AddConversationOption(conversation, "All the time.")
	StartConversation(conversation, NPC, Spawn, "Oh I'll never remember that. Tell me, do you fish much?")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
		AddConversationOption(conversation, "What kind of help?")
	StartConversation(conversation, NPC, Spawn, "Well the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia003.mp3", "", "", 1931781458, 1316667418, Spawn)
		AddConversationOption(conversation, "Why do you ask?", "dlg_24_4")
	StartConversation(conversation, NPC, Spawn, "How good are you at killing?")
end

function dlg_24_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia011.mp3", "", "", 3261932029, 3599840953, Spawn)
		AddConversationOption(conversation, "Sure, I'll help.", "dlg_24_5")
		AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Just help me catch them. Right now I'm trying to catch searing trout. They swim around in the Lower Tendril River. What do you say?")
end

function dlg_24_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia012.mp3", "", "", 2680874987, 3116118568, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_24_6")
	StartConversation(conversation, NPC, Spawn, "Great! Just bring them back to me when you've caught them.")
end

function dlg_24_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia006.mp3", "", "", 1689993769, 508680301, Spawn)
		AddConversationOption(conversation, "I'll be back when I've killed them.", "dlg_24_7")
	StartConversation(conversation, NPC, Spawn, "Great! I appreciate it!")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia014.mp3", "", "", 3630010163, 822378916, Spawn)
		AddConversationOption(conversation, "What kind of fish do you need?", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "Great! I hope you enjoyed the fishing here, I certainly do. If you'd like, you could help me catch some more fish.")
end

function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia015.mp3", "", "", 2001952195, 1089349401, Spawn)
		AddConversationOption(conversation, "I can fish them up.", "dlg_25_3")
		AddConversationOption(conversation, "I'd prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Seared char! I know, their name is repetitive! They swim in the Searing Tendril, before it splits off into the Lower Tendril River. If you could fish me up some, that would be great!")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia014.mp3", "", "", 3630010163, 822378916, Spawn)
		AddConversationOption(conversation, "What kind of fish do you need?", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Great! I hope you enjoyed the fishing here, I certainly do. If you'd like, you could help me catch some more fish.")
end

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia015.mp3", "", "", 2001952195, 1089349401, Spawn)
		AddConversationOption(conversation, "I can fish them up.", "dlg_26_3")
		AddConversationOption(conversation, "I'd prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Seared char! I know, their name is repetitive! They swim in the Searing Tendril, before it splits off into the Lower Tendril River. If you could fish me up some, that would be great!")
end

function dlg_26_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia016.mp3", "", "", 3096333821, 2080368744, Spawn)
		AddConversationOption(conversation, "I'll be back.", "dlg_26_4")
	StartConversation(conversation, NPC, Spawn, "Glad to hear it! I'll be waiting here... fishing!")
end

function dlg_32_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery001.mp3", "", "", 1749958115, 2883042757, Spawn)
		AddConversationOption(conversation, "All right. Goodbye.", "dlg_32_2")
	StartConversation(conversation, NPC, Spawn, "Perfect! Thanks! Just put it on the ground there.")
end

function dlg_32_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia_delivery002.mp3", "", "", 2799282957, 2320910908, Spawn)
		AddConversationOption(conversation, "What?", "dlg_32_3")
	StartConversation(conversation, NPC, Spawn, "Hey, wait!")
end

function dlg_32_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia003.mp3", "", "", 1931781458, 1316667418, Spawn)
		AddConversationOption(conversation, "Why do you ask?", "dlg_32_4")
	StartConversation(conversation, NPC, Spawn, "How good are you at killing?")
end

function dlg_32_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia004.mp3", "", "", 999431120, 423593637, Spawn)
		AddConversationOption(conversation, "What do you want me to do?", "dlg_32_5")
	StartConversation(conversation, NPC, Spawn, "Fishing is getting more and more difficult as the razormaw in this river reach maturity. They break my lines, steal my lures, and eat all the fish before I have a chance to catch them! But they sure do taste great when smoked!")
end

function dlg_32_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia005.mp3", "", "", 3936904424, 544099891, Spawn)
		AddConversationOption(conversation, "All right, I'll help you.", "dlg_32_6")
		AddConversationOption(conversation, "Find someone else.")
	StartConversation(conversation, NPC, Spawn, "Kill them for me so I can fish in peace... and so I can have a tasty dinner. What do you say? I'll compensate you for your time, of course.")
end

function dlg_32_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia006.mp3", "", "", 1689993769, 508680301, Spawn)
		AddConversationOption(conversation, "I'll be back when I've killed them.", "dlg_32_7")
	StartConversation(conversation, NPC, Spawn, "Great! I appreciate it!")
end

function dlg_38_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia018.mp3", "", "", 2836144377, 248697270, Spawn)
		AddConversationOption(conversation, "Smolderfin?", "dlg_38_2")
	StartConversation(conversation, NPC, Spawn, "You're great! A much better fisher than I am, maybe that's why I enjoy it though, I can always get better. I bet you could catch Smolderfin!")
end

function dlg_38_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia019.mp3", "", "", 1258409578, 147829151, Spawn)
		AddConversationOption(conversation, "Maybe I could fish him up for you.", "dlg_38_3")
	StartConversation(conversation, NPC, Spawn, "He's a reclusive one, swims around up in Smoldering Lake. I hooked him once, but he took my pole down with him. Eventually it washed ashore and I got it back, but my favorite lure was gone.")
end

function dlg_38_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia020.mp3", "", "", 1402216958, 1000093253, Spawn)
		AddConversationOption(conversation, "Where can I find him?", "dlg_38_4")
	StartConversation(conversation, NPC, Spawn, "Maybe if you were a giant. Smolderfin is huge. But if you want to try I won't stop you, especially if it means I might get my lure back. I'll just tell you to be careful.")
end

function dlg_38_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia021.mp3", "", "", 4015813922, 782743353, Spawn)
		AddConversationOption(conversation, "Ok, I'm up for the challenge.", "dlg_38_5")
		AddConversationOption(conversation, "I don't think I'm interested.")
	StartConversation(conversation, NPC, Spawn, "Like I said, he's in Smoldering Lake. But it's rare that he comes out. He likes to eat the smoldering trout, though. If you catch enough of them and drop them in the lake, all bloody and squirming, I bet that will drag him out.")
end

function dlg_38_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia022.mp3", "", "", 1365892706, 718371768, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_38_6")
	StartConversation(conversation, NPC, Spawn, "Good luck! Bring me back my lure if you find it.")
end

function dlg_39_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia024.mp3", "", "", 4053635028, 357139583, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_39_2")
	StartConversation(conversation, NPC, Spawn, "You did? That's amazing. This is perfect, maybe now I'll finally catch something. Thank you, thank you very much!")
end

function dlg_47_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia008.mp3", "", "", 2217132870, 3346276431, Spawn)
		AddConversationOption(conversation, "I'm Hacaci.", "dlg_47_2")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way. I've been sent out here to catch fish to help feed those stationed at T'Vatar Outpost.")
end

function dlg_47_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
		AddConversationOption(conversation, "No.", "dlg_47_3")
		AddConversationOption(conversation, "Sometimes.")
		AddConversationOption(conversation, "All the time.")
	StartConversation(conversation, NPC, Spawn, "Oh, I'll never remember that. Tell me, do you fish much?")
end

function dlg_47_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
		AddConversationOption(conversation, "What kind of help?", "dlg_47_4")
	StartConversation(conversation, NPC, Spawn, "Well, the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_47_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia011.mp3", "", "", 3261932029, 3599840953, Spawn)
		AddConversationOption(conversation, "Sure, I'll help.", "dlg_47_5")
		AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Just help me catch them. Right now I'm trying to catch searing trout. They swim around in the Lower Tendril River. What do you say?")
end

function dlg_48_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia008.mp3", "", "", 2217132870, 3346276431, Spawn)
		AddConversationOption(conversation, "I'm Hacaci.", "dlg_48_2")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way. I've been sent out here to catch fish to help feed those stationed at T'Vatar Outpost.")
end

function dlg_48_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
		AddConversationOption(conversation, "No.", "dlg_48_3")
		AddConversationOption(conversation, "Sometimes.")
		AddConversationOption(conversation, "All the time.")
	StartConversation(conversation, NPC, Spawn, "Oh, I'll never remember that. Tell me, do you fish much?")
end

function dlg_48_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
		AddConversationOption(conversation, "What kind of help?")
	StartConversation(conversation, NPC, Spawn, "Well, the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_48_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia011.mp3", "", "", 3261932029, 3599840953, Spawn)
		AddConversationOption(conversation, "Sure, I'll help.", "dlg_48_5")
		AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Just help me catch them. Right now I'm trying to catch searing trout. They swim around in the Lower Tendril River. What do you say?")
end

function dlg_49_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia008.mp3", "", "", 2217132870, 3346276431, Spawn)
		AddConversationOption(conversation, "I'm Hacaci.", "dlg_49_2")
	StartConversation(conversation, NPC, Spawn, "Great! I thought the waters seemed a bit calmer. I'm Dirzdia, by the way. I've been sent out here to catch fish to help feed those stationed at T'Vatar Outpost.")
end

function dlg_49_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia009.mp3", "", "", 389446448, 2794640706, Spawn)
		AddConversationOption(conversation, "No.", "dlg_49_3")
		AddConversationOption(conversation, "Sometimes.")
		AddConversationOption(conversation, "All the time.")
	StartConversation(conversation, NPC, Spawn, "Oh, I'll never remember that. Tell me, do you fish much?")
end

function dlg_49_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia010.mp3", "", "", 2956956838, 3113219938, Spawn)
		AddConversationOption(conversation, "What kind of help?")
	StartConversation(conversation, NPC, Spawn, "Well, the waters here are pretty good for fishing. How would you like to help me reel them in?")
end

function dlg_49_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia011.mp3", "", "", 3261932029, 3599840953, Spawn)
		AddConversationOption(conversation, "Sure, I'll help.", "dlg_49_5")
		AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Just help me catch them. Right now I'm trying to catch searing trout. They swim around in the Lower Tendril River. What do you say?")
end

function dlg_49_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia012.mp3", "", "", 2680874987, 3116118568, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_49_6")
	StartConversation(conversation, NPC, Spawn, "Great! Just bring them back to me when you've caught them.")
end

]]--