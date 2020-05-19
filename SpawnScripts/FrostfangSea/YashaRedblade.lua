--[[
	Script Name	: SpawnScripts/FrostfangSea/YashaRedblade.lua
	Script Purpose	: Yasha Redblade 
	Script Author	: theFoof
	Script Date	: 2013.03.16
	Script Notes	:Ememjr 2017.10.21 add code, to give item if missing from your  inventory on hail
--]]

local HalasianWelcome = 1

local StoneCombat = 2

local CallArms = 3

local BoatloadWork = 4

local FlameOn = 5

local RideGwenevyn = 8

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, StoneCombat)
    ProvidesQuest(NPC, CallArms)
	ProvidesQuest(NPC, BoatloadWork)
	ProvidesQuest(NPC, FlameOn)
	ProvidesQuest(NPC, RideGwenevyn)
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
	if HasQuest(Spawn, HalasianWelcome) then
	    PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_001.mp3", "", "", 1052109202, 2650157895, Spawn)
	    AddConversationOption(conversation, "Yes, and my muscles are a bit stiff.", "CompleteHalasianWelcome1")
	    AddConversationOption(conversation, "Yes, and I heard you could use some help.", "CompleteHalasianWelcome2")
	    StartConversation(conversation, NPC, Spawn, "Whoa!  You finally woke, eh?")
	elseif HasCompletedQuest(Spawn, HalasianWelcome) and HasCompletedQuest(Spawn, StoneCombat) == false and HasQuest(Spawn, StoneCombat) == false then
	    PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_001.mp3", "", "", 1052109202, 2650157895, Spawn)
	    AddConversationOption(conversation, "Yes, and my muscles are a bit stiff.", "Quest2Chat_0_1")
	    AddConversationOption(conversation, "Yes, and I heard you could use some help.", "Quest2Chat_1_1")
	    StartConversation(conversation, NPC, Spawn, "Whoa!  You finally woke, eh?")
    elseif GetQuestStep(Spawn, StoneCombat) == 4 then
	    AddConversationOption(conversation, "Yes. I defeated my opponent.", "CompleteStoneCombat")
	    StartConversation(conversation, NPC, Spawn, "Have you passed the test that Trainer Ragnhild Stonefist set before you?")
    elseif HasCompletedQuest(Spawn, StoneCombat) and HasCompletedQuest(Spawn, CallArms) == false and HasQuest(Spawn, CallArms) == false then
        Quest3Chat_0_1(NPC, Spawn)
    elseif GetQuestStep(Spawn, CallArms) == 2 then
        PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
	    AddConversationOption(conversation, "I killed many of the attacking orcs.", "FinishedCallArms")
	    StartConversation(conversation, NPC, Spawn, "How did you fare, " .. GetName(Spawn) .. "?  Have the attacking orcs been defeated?")
	elseif HasCompletedQuest(Spawn, CallArms) and HasCompletedQuest(Spawn, BoatloadWork) == false and HasQuest(Spawn, BoatloadWork) == false then
	    Quest4Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, BoatloadWork) == 2 then
		PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
		AddConversationOption(conversation, "I hope so.", "Quest4Chat_6")
		StartConversation(conversation, NPC, Spawn, "Thank Marr you have returned with the planks of wood, " .. GetName(Spawn) .. "!  This new barricade will certainly help us keep the orcs at bay.")
	elseif GetQuestStep(Spawn, BoatloadWork) == 3 then
             if HasItem(Spawn, 46842) == false then
			StartConversation(conversation, NPC, Spawn, "Set the new barricade down south of me where the break in the barricade is lit by two torches.")
		    SummonItem(Spawn, 46842, 1)
		else
	    StartConversation(conversation, NPC, Spawn, "Set the new barricade down south of me where the break in the barricade is lit by two torches.")
		end
	elseif GetQuestStep(Spawn, BoatloadWork) == 4 then
	    SetStepComplete(Spawn, BoatloadWork, 4)
		PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
		AddConversationOption(conversation, "I have been glad to help.", "Quest5Chat_1")
		AddConversationOption(conversation, "It has been rewarding.")
		StartConversation(conversation, NPC, Spawn, "You really are a blessing from Marr, " .. GetName(Spawn) .. "!  We cannot thank you enough for all that you have done to provide for us and keep us safe.")
	elseif HasCompletedQuest(Spawn, BoatloadWork) and HasCompletedQuest(Spawn, FlameOn) == false and HasQuest(Spawn, FlameOn) == false then
	    Quest5Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, FlameOn) == 1 then
		PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_028.mp3", "", "", 3869056834, 2852458001, Spawn)
		AddConversationOption(conversation, "Where is it again?", "Quest5Chat_3")
		AddConversationOption(conversation, "How do I climb up to it?", "Quest5Chat_4")
		AddConversationOption(conversation, "I'll light it, Yasha.")
		StartConversation(conversation, NPC, Spawn, "We are counting on you to light the signal fire!")
	elseif GetQuestStep(Spawn, FlameOn) == 3 then
	    PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_030.mp3", "", "", 1552005531, 3390176496, Spawn)
		AddConversationOption(conversation, "I encountered some of the orcs up there!", "Quest5Chat_5")
		StartConversation(conversation, NPC, Spawn, "The signal fire burns bright, " .. GetName(Spawn) .. ".  But what took so long?  I was growing concerned.")
	elseif HasCompletedQuest(Spawn, FlameOn) and HasQuest(Spawn, RideGwenevyn) == false and HasCompletedQuest(Spawn, RideGwenevyn) == false then
	    Quest6Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, RideGwenevyn) == 1 then
	    PlayFlavor(NPC, "", "You'll find the Gwenavyne II at the southern most tip of Pilgrims' Landing.  It will take you over to Erollis.", "nod", 1689589577, 4560189, Spawn)
	elseif HasCompletedQuest(Spawn, RideGwenevyn) then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1041.mp3", "I have no doubt the fates have something great in store for you!", "", 0, 0, Spawn)
	else
	    local choice = math.random(1,3)
	    if choice == 1 then
	        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1041.mp3", "", "", 0, 0, Spawn)
	    elseif choice == 2 then
		    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1041.mp3", "", "", 0, 0, Spawn)
	    elseif choice == 3 then
		    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1041.mp3", "", "", 0, 0, Spawn)
		end
    end
end

function CompleteHalasianWelcome1(NPC, Spawn) 
	SetStepComplete(Spawn, HalasianWelcome, 1)
	Quest2Chat_0_1(NPC, Spawn)
end

function CompleteHalasianWelcome2(NPC, Spawn)
    SetStepComplete(Spawn, HalasianWelcome, 1)
	Quest2Chat_1_1(NPC, Spawn)
end

function CompleteStoneCombat(NPC, Spawn)
    SetStepComplete(Spawn, StoneCombat, 4)
    Quest3Chat_0_1(NPC, Spawn)
end

function Quest2Chat_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_002.mp3", "", "", 395241080, 1989878493, Spawn)
	AddConversationOption(conversation, "That would be great!", "Quest2Chat_1_1")
	AddConversationOption(conversation, "Not quite yet.")
	StartConversation(conversation, NPC, Spawn, "That's no surprise considering the work out that they must have endured swimming and dragging those others ashore the way you did.  You looking to work 'em out a bit?")
end

function Quest2Chat_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_005.mp3", "", "", 3031703897, 849787882, Spawn)
	AddConversationOption(conversation, "I'll go speak with her, right now.", "OfferStoneCombat")
	AddConversationOption(conversation, "I don't think I'm up for this. Good bye.")
	StartConversation(conversation, NPC, Spawn, "You heard correctly.  But first I need to ensure that you are ready to enter the fray.  Go speak to Trainer Ragnhild Stonefist.  She's east of me at the other end of the ship's hull.  She'll teach you the basics of combat.")
end

function Quest3Chat_0_1(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()

        PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_009.mp3", "", "", 3426547133, 152454946, Spawn)
	AddConversationOption(conversation, "That's true.", "Quest3Chat_1_1")
	AddConversationOption(conversation, "I am more than warmed up.", "Quest3Chat_1_1")
	StartConversation(conversation, NPC, Spawn, "I bet your muscles aren't so stiff after that warm up.")
end

function Quest3Chat_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_010.mp3", "", "", 1856638395, 3517818586, Spawn)
	AddConversationOption(conversation, "Is it orcs?", "Quest3Chat_2_1")
	AddConversationOption(conversation, "Perfect!  Who is it?", "Quest3Chat_2_2")
	StartConversation(conversation, NPC, Spawn, "Good, 'cause there's a real foe around here for you to face.")
end

function Quest3Chat_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_012.mp3", "", "", 1278159585, 3525975110, Spawn)
	AddConversationOption(conversation, "There are orcs attacking?!", "Quest3Chat_3_1")
	AddConversationOption(conversation, "I am not ready to face orcs!")
	StartConversation(conversation, NPC, Spawn, "The tenacious orcs!  The mangy beasts started rushing our shore shortly after you swam ashore carrying the others.  They must have realized how strong this outpost was becoming.")
end


function Quest3Chat_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_011.mp3", "", "", 1164815048, 3310979023, Spawn)
	AddConversationOption(conversation, "Then we must face them!", "Quest3Chat_3_1")
	AddConversationOption(conversation, "I am not ready to face orcs.")
	StartConversation(conversation, NPC, Spawn, "Yes!  The mangy beasts started rushing our shore shortly after you swam ashore carrying the others.  They must have realized how strong this outpost was becoming.")
end

function Quest3Chat_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_013.mp3", "", "", 4060266194, 2101228978, Spawn)
	AddConversationOption(conversation, "Right away!", "OfferCallArms")
	StartConversation(conversation, NPC, Spawn, "Yes, indeed!  Fall upon the Ry'Gorr centurions that are rushing the barricades southeast of me.  Return to me when you have done this.")
end

function FinishedCallArms(NPC, Spawn)
	if GetQuestStep(Spawn, CallArms) == 2 then
        SetStepComplete(Spawn, CallArms, 2)
    end
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
	AddConversationOption(conversation, "I did.", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "Ah, I wish I would have seen it!  You must have unleashed an impressive fury upon those murderous meat slabs.")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
	AddConversationOption(conversation, "You want me to kill some more?", "Quest4Chat_2")
	AddConversationOption(conversation, "What can we do about it?", "Quest4Chat_3")
	StartConversation(conversation, NPC, Spawn, "But I am afraid that is not the last we will see of them.  Even now, another wave of them may be crashing upon our shores!")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
	AddConversationOption(conversation, "I can do that.", "Quest4Chat_4")
	AddConversationOption(conversation, "I am not interested in crafting.", "Quest4Chat_5")
	StartConversation(conversation, NPC, Spawn, "I had something else in mind, " .. GetName(Spawn) .. ".  The barricades that are holding back the orcs were frantically crafted out of debris and boat wreckage.  There are several of them that need to be replaced.")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
	AddConversationOption(conversation, "I can do that.", "Quest4Chat_4")
	AddConversationOption(conversation, "I am not interested in crafting.", "Quest4Chat_5")
	StartConversation(conversation, NPC, Spawn, "We must fortify our defenses!  The barricades that are holding back the orcs were frantically crafted out of debris and boat wreckage.  There are several of them that need to be replaced.")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
	AddConversationOption(conversation, "Right away!", "OfferBoatloadWork")
	AddConversationOption(conversation, "Maybe later, Yasha.")
	StartConversation(conversation, NPC, Spawn, "I am relieved to hear you say that, " .. GetName(Spawn) .. ".  Gather planks of wood from the bow of the old boat wreckage west of me.  I'll make them into a makeshift barricade.")
end

function Quest4Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
	AddConversationOption(conversation, "Right away!", "OfferBoatloadWork")
	AddConversationOption(conversation, "Maybe later, Yasha.")
	StartConversation(conversation, NPC, Spawn, "That's fine, " .. GetName(Spawn) .. ".  I'll craft the makeshift barricade.  I just need you to gather planks of wood from the bow of the old boat wreckage west of me.")
end

function Quest4Chat_6(NPC, Spawn)
    SetStepComplete(Spawn, BoatloadWork, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_014.mp3", "", "", 2562189235, 2582498054, Spawn)
	AddConversationOption(conversation, "Will do!")
	StartConversation(conversation, NPC, Spawn, "Take this makeshift barricade piece and set it in the frozen tundra south of me where the break in the barricade line is lit by two torches.")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_025.mp3", "", "", 1803586212, 1797757498, Spawn)
	AddConversationOption(conversation, "What for?", "Quest5Chat_2")
	AddConversationOption(conversation, "Sounds easy.  I'll do it.", "Quest5Chat_3")
	AddConversationOption(conversation, "I am not able to help you right now.")
	StartConversation(conversation, NPC, Spawn, "Wait a moment!  Your timing is perfect, " .. GetName(Spawn) .. ".  We need someone to light the signal fire atop the cliff to the east.")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_026.mp3", "", "", 3324242342, 3751082906, Spawn)
	AddConversationOption(conversation, "To warn them.", "Quest5Chat_3")
	StartConversation(conversation, NPC, Spawn, "It is to alert the fledgling city of New Halas of the orcs that have been attacking our outpost.")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_028.mp3", "", "", 3869056834, 2852458001, Spawn)
	AddConversationOption(conversation, "I'll light it, Yasha.", "OfferFlameOn")
	AddConversationOption(conversation, "How do I climb?", "Quest5Chat_4")
	StartConversation(conversation, NPC, Spawn, "Venture east and you will find an imposing wall of ice with a rope ladder scaling it.  Climb the ladder to the ice shelf above.  The signal fire is up there.")
end

function Quest5Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_029.mp3", "", "", 476266339, 1999686318, Spawn)
	AddConversationOption(conversation, "That's good to know.", "OfferFlameOn")
	StartConversation(conversation, NPC, Spawn, "That's easy!  If a vertical surface can be climbed all you need to do is approach it.  You will find that you are a natural at it and that you have just as much control over what direction you wish to travel on the vertical surfaces as you do over horizontal ones.")
end

function Quest5Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, FlameOn, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_031.mp3", "", "", 517725875, 2427954496, Spawn)
	AddConversationOption(conversation, "Thank you.", "Quest6Chat_1")
	AddConversationOption(conversation, "I'm not sure that's true.", "Quest6Chat_1")
	StartConversation(conversation, NPC, Spawn, "Holy Twins!  You killed them, didn't you?!  I knew you were brought to this floating island by the fates and now you have proven it!")
end

function Quest6Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_032.mp3", "", "", 4231067263, 531833046, Spawn)
	AddConversationOption(conversation, "How do I get there?", "Quest6Chat_2")
	AddConversationOption(conversation, "Thank you, again.", "OfferRidegwenevyn")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Report to Wregan Firebeard.  He is at a small camp site at Gwenevyn's Cove, preparing to guide the latest group of pilgrims to the city.  If you hurry, you should be able to catch him before they embark on their trek.")
end

function Quest6Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_033.mp3", "", "", 1250945947, 234141592, Spawn)
	AddConversationOption(conversation, "Thank you, again.", "OfferRidegwenevyn")
	AddConversationOption(conversation, "Can't I swim over there?", "OfferRidegwenevynTwo")
	StartConversation(conversation, NPC, Spawn, "Get aboard the small ferry craft that we have pieced together at the southern most tip of Pilgrims' Landing.  It will take you over to Erollis.  The camp site's fire should be noticeable from the beach.")
end

function OfferStoneCombat(NPC, Spawn)
    if HasCompletedQuest(Spawn, HalasianWelcome) then
	OfferQuest(NPC, Spawn, StoneCombat)
	end
end

function OfferCallArms(NPC, Spawn)
    if HasCompletedQuest(Spawn, StoneCombat) then
        OfferQuest(NPC, Spawn, CallArms)
    end
end

function OfferBoatloadWork(NPC, Spawn)
    if HasCompletedQuest(Spawn, CallArms) then
	    OfferQuest(NPC, Spawn, BoatloadWork)
	end
end

function OfferFlameOn(NPC, Spawn)
    if HasCompletedQuest(Spawn, BoatloadWork) and HasQuest(Spawn, FlameOn) == false then
	    OfferQuest(NPC, Spawn, FlameOn)
	end
end

function OfferRidegwenevyn(NPC, Spawn)
    if HasCompletedQuest(Spawn, FlameOn) then
	    OfferQuest(NPC, Spawn, RideGwenevyn)
	end
end

function OfferRidegwenevynTwo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasCompletedQuest(Spawn, FlameOn) then
	    OfferQuest(NPC, Spawn, RideGwenevyn)
	end
	
	PlayFlavor(NPC, "yasha_redblade/halas/pilgrims_landing/redblade_034.mp3", "", "", 4096485687, 3591012782, Spawn)
	AddConversationOption(conversation, "Oh, okay.")
	StartConversation(conversation, NPC, Spawn, "You can, sure.  But I wouldn't suggest it.  The water is freezing.")
end