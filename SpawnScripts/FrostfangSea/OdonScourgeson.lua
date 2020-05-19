--[[
	Script Name	: SpawnScripts/FrostfangSea/OdonScourgeson.lua
	Script Purpose	: Odon Scourgeson 
	Script Author	: theFoof
	Script Date	: 2013.06.16
	Script Notes	: 
--]]

local NothingWaste = 56

local WhirlingTime = 70

local HighlyMaterials = 74

local CampsideSpores = 75

local BelowWaves = 59

local RyGorrTaking = 76

local WatchBelow = 77

local RyGorrOperations = 60

function spawn(NPC)
	ProvidesQuest(NPC, WhirlingTime)
	ProvidesQuest(NPC, HighlyMaterials)
	ProvidesQuest(NPC, CampsideSpores)
	ProvidesQuest(NPC, RyGorrTaking)
	ProvidesQuest(NPC, WatchBelow)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, NothingWaste) and not HasCompletedQuest(Spawn, WhirlingTime) and not HasQuest(Spawn, WhirlingTime) then
		PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_001.mp3", "", "", 1144750617, 3119311088, Spawn)
		AddConversationOption(conversation, "Well said, child of Marr!", "Quest1Chat_1")
		AddConversationOption(conversation, "For the right cause.", "Quest1Chat_5")
		AddConversationOption(conversation, "I hope the Ry'Gorr think so!", "Quest1Chat_6")
		AddConversationOption(conversation, "I would prefer another day.")
		StartConversation(conversation, NPC, Spawn, "It's a good day to die!")
	elseif GetQuestStep(Spawn, WhirlingTime) == 1 and not HasItem(Spawn, 6556) then
		PlayFlavor(NPC, "", "It's an awfully big challenge to apply the Draught of Whirling ice if you don't have it with you.  Now be more careful with this vial of the dram!", "laugh", 0, 0, Spawn)
		SummonItem(Spawn, 6556)
	elseif GetQuestStep(Spawn, WhirlingTime) == 1 and HasItem(Spawn, 6556) then
		PlayFlavor(NPC, "", "Be sure to apply the Draught of Whirling Ice at the locations on the beach marked by a glowing green arrow shaft.", "agree", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, WhirlingTime) == 2 then
		PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_012.mp3", "", "", 3270179329, 857883489, Spawn)
		AddConversationOption(conversation, "Yes, the confused orcs were easy pickings.", "Quest1Chat_7")
		StartConversation(conversation, NPC, Spawn, "How did the Draught of Whirling Ice fare, " .. GetName(Spawn) .. "?  Did it work as we had hoped?")
	elseif HasCompletedQuest(Spawn, WhirlingTime) and not HasCompletedQuest(Spawn, HighlyMaterials) and not HasQuest(Spawn, HighlyMaterials) then
		Quest2Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, HighlyMaterials) == 3 then
		PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_017.mp3", "", "", 1752904205, 2236174308, Spawn)
		AddConversationOption(conversation, "You were right.  There was a Ry'Gorr encampment over there.", "Quest2Chat_3")
		StartConversation(conversation, NPC, Spawn, "What did you find on Jagged Daggers, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, HighlyMaterials) and not HasCompletedQuest(Spawn, CampsideSpores) and not HasQuest(Spawn, CampsideSpores) then
		PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_019.mp3", "", "", 1424971577, 1250350308, Spawn)
    	AddConversationOption(conversation, "He sent me to hunt the Ry'Gorr on Jagged Daggers isle.", "Quest3Chat_1")
    	AddConversationOption(conversation, "I don't have time to talk right now.")
    	StartConversation(conversation, NPC, Spawn, "What did the mighty coldain want with you, " .. GetName(Spawn) .. "?")
	elseif GetQuestStep(Spawn, CampsideSpores) == 1 then
		PlayFlavor(NPC, "", "Be sure to spread the crustose spores on any Ry'Gorr provisions that you find on the iceberg floating nearby.", "nod", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, CampsideSpores) == 2 then
		PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_029.mp3", "", "", 2107393600, 3625608222, Spawn)
		AddConversationOption(conversation, "They did!", "Quest3Chat_9")
		StartConversation(conversation, NPC, Spawn, "Did the spores spread all over their provisions, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, CampsideSpores) and HasCompletedQuest(Spawn, BelowWaves) and not HasCompletedQuest(Spawn, RyGorrTaking) and not HasQuest(Spawn, RyGorrTaking) then
		PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_031.mp3", "", "", 2821703573, 187787464, Spawn)
		AddConversationOption(conversation, "I was exploring the caves below Erollis.", "Quest4Chat_1")
		AddConversationOption(conversation, "Killing orcs, of course!", "Quest4Chat_4")
		AddConversationOption(conversation, "That's my secret.  Good day.")
		StartConversation(conversation, NPC, Spawn, "Where have you been, " .. GetName(Spawn) .. "?")
	elseif GetQuestStep(Spawn, RyGorrTaking) == 1 then
		PlayFlavor(NPC, "", "Good luck stealing the imbued digging tools that the Ry'Gorr are using to dig their nefarious tunnels below Erollis.", "hello", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, RyGorrTaking) == 2 then
		AddConversationOption(conversation, "I did, along with their explosive barrels.", "Quest4Chat_5")
		StartConversation(conversation, NPC, Spawn, "You found the magically imbued tools that the Ry'Gorr were using to dig with, didn't you, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, RyGorrTaking) and HasCompletedQuest(Spawn, RyGorrOperations) and not HasQuest(Spawn, WatchBelow) and not HasCompletedQuest(Spawn, WatchBelow) then
		AddConversationOption(conversation, "It is true.", "Quest5Chat_1")
		AddConversationOption(conversation, "No.  You're as crazy as Knut.")
		StartConversation(conversation, NPC, Spawn, "Is it true, " .. GetName(Spawn) .. "?  Did you really find some crazed crystal men deeper within this chunk of floating rock?")
	elseif GetQuestStep(Spawn, WatchBelow) == 1 then
		PlayFlavor(NPC, "", "Good luck harevesting the glimmering velium from within the Velinoid Catacombs.", "hello", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, WatchBelow) == 2 then
		PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_043.mp3", "", "", 4171793069, 3413255044, Spawn)
		AddConversationOption(conversation, "I was, Odon.", "Quest5Chat_4")
		StartConversation(conversation, NPC, Spawn, "Were you able to harvest any glimmering velium from within the Velinoid Catacombs?")
	elseif HasCompletedQuest(Spawn, WatchBelow) and not HasQuest(Spawn, WatchBelow) then
		Quest5Chat_5(NPC, Spawn)
	else
		PlayFlavor(NPC, "", "Go see Thirin, I think he could use your help.", "point", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_004.mp3", "", "", 1709766346, 172975097, Spawn)
	AddConversationOption(conversation, "So, let's not be the ones to fall.", "Quest1Chat_2")
	AddConversationOption(conversation, "If you say so.  I have to go now.")
	StartConversation(conversation, NPC, Spawn, "But the longer we live, the more battles we win, and the more honor we bring our ancestors and the gods.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_008.mp3", "", "", 2616918524, 807359858, Spawn)
	AddConversationOption(conversation, "Do you have any specific plans?", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Aye!  Let's send these Ry'Gorr back to the vile pits of putrescence they crawled out of!")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_009.mp3", "", "", 3949479903, 2077309090, Spawn)
	AddConversationOption(conversation, "How will they help?", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "That I do, " .. GetName(Spawn) .. "!  I am quite the accomplished spell weaver and potion maker.  And I have a draught that can create whirlstorms of ice and fog.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_010.mp3", "", "", 2575484340, 3344993647, Spawn)
	AddConversationOption(conversation, "Oh, that sounds great!", "OfferWhirlingTime")
	AddConversationOption(conversation, "I am not going towards that beach!  No way.")
	StartConversation(conversation, NPC, Spawn, "You will release them at specific spots upon the nearby beach front, where the orcs are attacking.  Within the fog and confusion our forces will have the upper hand!")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_005.mp3", "", "", 292963711, 1258540494, Spawn)
	AddConversationOption(conversation, "On that, we agree.", "Quest1Chat_2")
	AddConversationOption(conversation, "If you say so.  I have to go now.")
	StartConversation(conversation, NPC, Spawn, "There is no cause more right than keeping our budding city safe from destruction and chaos.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_006.mp3", "", "", 3024969642, 2041615693, Spawn)
	AddConversationOption(conversation, "On that, we agree.", "Quest1Chat_2")
	AddConversationOption(conversation, "If you say so.  I have to go now.")
	StartConversation(conversation, NPC, Spawn, "Har!  Since they are going to be the ones dying!  I like the way you think!  We must keep our budding city safe from destruction and chaos.")
end

function Quest1Chat_7(NPC, Spawn)
	SetStepComplete(Spawn, WhirlingTime, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_013.mp3", "", "", 2453186461, 1568033116, Spawn)
	AddConversationOption(conversation, "Right!", "Quest2Chat_1")
	StartConversation(conversation, NPC, Spawn, "Good!  And let that be a lesson to you: Never underestimate the natural elements.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_014.mp3", "", "", 4142819387, 1980291564, Spawn)
	AddConversationOption(conversation, "It stands to reason.", "Quest2Chat_2")
	AddConversationOption(conversation, "Yes.  But I don't care.")
	StartConversation(conversation, NPC, Spawn, "This has me thinking, " .. GetName(Spawn) .. ".  If we can use the natural elements of ice and fog as sight barriers then the orcs can too.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_015.mp3", "", "", 3627942377, 4151235206, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferHighlyMaterials")
	AddConversationOption(conversation, "I am not going over to that orc infested island.  No way!")
	StartConversation(conversation, NPC, Spawn, "They could be hiding an entire encampment on that fog-blanketed chunk of ice across the water.  I am needed here to create healing draughts for the wounded, but if you can venture over to Jagged Daggers then we can find out if that is why they continue to bombard our defenses here.")
end

function Quest2Chat_3(NPC, Spawn)
	SetStepComplete(Spawn, HighlyMaterials, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_018.mp3", "", "", 3574043874, 440859829, Spawn)
	AddConversationOption(conversation, "Yes, I did.")
	StartConversation(conversation, NPC, Spawn, "But you found it and destroyed it?")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_020.mp3", "", "", 17932445, 4044568976, Spawn)
	AddConversationOption(conversation, "What do you mean?", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "You are going to give old Orcbane a run for his title if you keep that up!  Of course, that may not be a good thing if it makes you as crazy as it has made him.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_021.mp3", "", "", 748617031, 40578181, Spawn)
	AddConversationOption(conversation, "What makes you say that?", "Quest3Chat_3")
	AddConversationOption(conversation, "I didn't.  Oh, wait... Yes, I did.", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "The man was a celebrated warrior - a clan hero!   But the years and battles have taken their toll.  One too many hits to that thick skull, if'n you ask me.")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_022.mp3", "", "", 3153750446, 2946380071, Spawn)
	AddConversationOption(conversation, "I agree.", "Quest3Chat_4")
	AddConversationOption(conversation, "Well, let's just consider him eccentric.", "Quest3Chat_5")
	StartConversation(conversation, NPC, Spawn, "He swears on Greyvax's grave that his bear pelt talks to him!  That's evidence enough, friend.")
end

function Quest3Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_023.mp3", "", "", 1008524247, 3710738942, Spawn)
	AddConversationOption(conversation, "Nutty Knut.  I get it.", "Quest3Chat_6")
	StartConversation(conversation, NPC, Spawn, "The man is drinking from a cracked stein, I tell you.")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_024.mp3", "", "", 626779963, 1838376893, Spawn)
	AddConversationOption(conversation, "Thank you.", "Quest3Chat_6")
	StartConversation(conversation, NPC, Spawn, "You are suggesting we agree to disagree.  I've never seen much reason for it, but since it is old Orcbane, I will.")
end

function Quest3Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_025.mp3", "", "", 2325720721, 1852675464, Spawn)
	AddConversationOption(conversation, "Actually, yes.  I saw several Ry'Gorr orcs amassing supplies.", "Quest3Chat_7")
	StartConversation(conversation, NPC, Spawn, "Heh.  So, did you find anything interesting on Jagged Daggers isle?")
end

function Quest3Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_026.mp3", "", "", 3614477806, 1870107129, Spawn)
	AddConversationOption(conversation, "Right.  I'm the one yapping like a hound.", "Quest3Chat_8")
	AddConversationOption(conversation, "Excuse me?", "Quest3Chat_8")
	StartConversation(conversation, NPC, Spawn, "You what?! "  .. GetName(Spawn) .. ", you've got to learn to share the important information.  Don't stand about yapping on like some excited hound when there is fighting to be had!")
end

function Quest3Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_027.mp3", "", "", 1143831396, 1034337351, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferCampsideSpores")
	AddConversationOption(conversation, "I have destroyed enough of their stuff, already.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "I forgive you.  Now, this is the perfect time to employ another form of natural element in our ongoing battle against the Ry'Gorr.  We are going to destroy their provisions!")
end

function Quest3Chat_9(NPC, Spawn)
	SetStepComplete(Spawn, CampsideSpores, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_030.mp3", "", "", 23529339, 1329281501, Spawn)
	AddConversationOption(conversation, "Right.")
	StartConversation(conversation, NPC, Spawn, "We learned about those little buggers the hard way, but at least we can use them for our own good.")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_033.mp3", "", "", 3483970131, 1743071905, Spawn)
	AddConversationOption(conversation, "Yes.  And the Ry'Gorr have been making them bigger.", "Quest4Chat_2")
	StartConversation(conversation, NPC, Spawn, "There are caves under this floating island?")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_034.mp3", "", "", 491076810, 2688982472, Spawn)
	AddConversationOption(conversation, "Apparently, they are.", "Quest4Chat_3")
	AddConversationOption(conversation, "Me either.", "Quest4Chat_3")
	StartConversation(conversation, NPC, Spawn, "Dear Marr!  They have been attempting to hold our attention on top with skirmishes while all along they have been digging tunnels from below?!  I never thought them so sneaky.")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_035.mp3", "", "", 3997881517, 11859709, Spawn)
	AddConversationOption(conversation, "I sure can, Odon.", "OfferRyGorrTaking")
	AddConversationOption(conversation, "I am not willing to go back down there.  No way!")
	StartConversation(conversation, NPC, Spawn, "They must be using special tools, some magically imbued ones, to dig through the velium and ice that make this floating rock.  Will you enter the caves and steal any such tools that you find?  That will slow their progress while others can go in and hunt them.")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_032.mp3", "", "", 775129944, 2032173914, Spawn)
	AddConversationOption(conversation, "In the caves below Erollis.", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "I would expect nothing less!  Tell me, where were you slaying the beasts?")
end

function Quest4Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, RyGorrTaking, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_037.mp3", "", "", 3945219846, 2009013253, Spawn)
	AddConversationOption(conversation, "Thank you.")
	AddConversationOption(conversation, "I'm beginning to think so, too.")
	StartConversation(conversation, NPC, Spawn, "That is excellent, my friend!  I am more certain today that your arrival here was not just a roll of luck, but predestined by the gods.")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_039.mp3", "", "", 1313157093, 2613440725, Spawn)
	AddConversationOption(conversation, "I don't know, but they looked like it.", "Quest5Chat_2")
	StartConversation(conversation, NPC, Spawn, "They are made of velium?")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_040.mp3", "", "", 1326282045, 1993468470, Spawn)
	AddConversationOption(conversation, "Oh, what are you thinking?", "Quest5Chat_3")
	AddConversationOption(conversation, "That would be nice.", "Quest5Chat_3")
	StartConversation(conversation, NPC, Spawn, "Amazing.  If it isn't one threat to our struggling city, it's another!  But just maybe there is something to be gained here.")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_041.mp3", "", "", 513600053, 106599260, Spawn)
	AddConversationOption(conversation, "I'll harvest some from within the Velinoid Catacombs for you.", "OfferWatchBelow")
	AddConversationOption(conversation, "It's too dangerous.  Count me out!")
	StartConversation(conversation, NPC, Spawn, "Velium is a prized element, " .. GetName(Spawn) .. ".  I am willing to bet that there's a hefty copper to be made from velium harvested at such a location.  Velium steeped in such potent arcanum must be even more desirable!")
end

function Quest5Chat_4(NPC, Spawn)
	SetStepComplete(Spawn, WatchBelow, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_044.mp3", "", "", 4176364117, 3019596787, Spawn)
	AddConversationOption(conversation, "You're welcome.", "Quest5Chat_5")
	StartConversation(conversation, NPC, Spawn, "Ah!  Look how it gleams, " .. GetName(Spawn) .. "!  I am sure it will help to bankroll our operation here.  Thank you.")
end

function Quest5Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_045.mp3", "", "", 653096289, 4240580228, Spawn)
	AddConversationOption(conversation, "Sure, I am!", "OfferWatchBelow")
	AddConversationOption(conversation, "No.  I am not.")
	StartConversation(conversation, NPC, Spawn, "Are you willing to return to the Velinoid Catacombs in order to collect us more glimmering velium, " .. GetName(Spawn) .. "?")
end

function OfferWhirlingTime(NPC, Spawn)
	OfferQuest(NPC, Spawn, WhirlingTime)
end

function OfferHighlyMaterials(NPC, Spawn)
	OfferQuest(NPC, Spawn, HighlyMaterials)
end

function OfferCampsideSpores(NPC, Spawn)
	OfferQuest(NPC, Spawn, CampsideSpores)
end

function OfferRyGorrTaking(NPC, Spawn)
	OfferQuest(NPC, Spawn, RyGorrTaking)
end

function OfferWatchBelow(NPC, Spawn)
	OfferQuest(NPC, Spawn, WatchBelow)
end