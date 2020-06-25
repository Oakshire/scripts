--[[
	Script Name	: SpawnScripts/FrostfangSea/BlorpisaBogchild.lua
	Script Purpose	: Blorpisa Bogchild 
	Script Author	: theFoof
	Script Date	: 2013.05.20
	Script Notes	: 
--]]

local ArcaneElements = 19

local BearBottoms = 20

local CodChips = 21

local EssentialIngredient = 22

local FieldTesting = 23

local FieldTwo = 24

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	ProvidesQuest(NPC, ArcaneElements)
	ProvidesQuest(NPC, BearBottoms)
	ProvidesQuest(NPC, CodChips)
	ProvidesQuest(NPC, EssentialIngredient)
	ProvidesQuest(NPC, FieldTesting)
	ProvidesQuest(NPC, FieldTwo)
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
    if HasCompletedQuest(Spawn, FieldTwo) == false then
	    AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasCompletedQuest(Spawn, ArcaneElements) == false and HasQuest(Spawn, ArcaneElements) == false then
        PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_001.mp3", "", "", 1215134818, 256392720, Spawn)
	    AddConversationOption(conversation, "Hello Blorpisa, I am " .. GetName(Spawn) .. ".", "Quest1Chat_2")
	    StartConversation(conversation, NPC, Spawn, "Hello! I haven't seen you around here before! I am Blorpisa Bogchild.")
	elseif GetQuestStep(Spawn, ArcaneElements) == 1 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_010.mp3", "", "", 1541998982, 3704557731, Spawn)
	    AddConversationOption(conversation, "No. Where can I find the aged ice slurries?", "Quest1Chat_8")
	    StartConversation(conversation, NPC, Spawn, "Have you collected the aged ice slurry core?")
	elseif GetQuestStep(Spawn, ArcaneElements) == 2 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_002.mp3", "", "", 3029801000, 1524345260, Spawn)
		AddConversationOption(conversation, "I have collected the ore for you.", "Quest1Chat_9")
		StartConversation(conversation, NPC, Spawn, "Have you collected the arcane imbued ore?")
	elseif HasCompletedQuest(Spawn, ArcaneElements) and HasCompletedQuest(Spawn, BearBottoms) == false and HasQuest(Spawn, BearBottoms) == false then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_003.mp3", "", "", 3065502678, 2912351776, Spawn)
		AddConversationOption(conversation, "I'm doing quite well. How are you?", "Quest2Chat_2")
		StartConversation(conversation, NPC, Spawn, "Hello, " .. GetName(Spawn) .. "! How are you faring?")
	elseif GetQuestStep(Spawn, BearBottoms) == 1 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_004.mp3", "", "", 4029927720, 1452950200, Spawn)
		AddConversationOption(conversation, "I have not yet done so. Where can I find the blizzard grizzly cubs?", "Quest2Chat_5")
		StartConversation(conversation, NPC, Spawn, "Have you skinned the pelts for me?")
	elseif GetQuestStep(Spawn, BearBottoms) == 2 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_004.mp3", "", "", 4029927720, 1452950200, Spawn)
		AddConversationOption(conversation, "I have the pelts you requested.", "Quest2Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you skinned the pelts for me?")
	elseif HasCompletedQuest(Spawn, BearBottoms) and HasCompletedQuest(Spawn, CodChips) == false and HasQuest(Spawn, CodChips) == false then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_005.mp3", "", "", 3705783760, 1192084203, Spawn)
		AddConversationOption(conversation, "How are things with you, Blorpisa?", "Quest3Chat_1")
		StartConversation(conversation, NPC, Spawn, "Hello, " .. GetName(Spawn) .. ".")
	elseif GetQuestStep(Spawn, CodChips) == 1 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_006.mp3", "", "", 900575849, 2922187159, Spawn)
		AddConversationOption(conversation, "I have not yet hunted enough cod for everyone's dinner. Where can I find the co again?", "Quest3Chat_4")
		StartConversation(conversation, NPC, Spawn, "Did you get the large Iceclad cod?")
	elseif GetQuestStep(Spawn, CodChips) == 2 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_006.mp3", "", "", 900575849, 2922187159, Spawn)
		AddConversationOption(conversation, "I have enough large cod for everyone to eat well tonight!", "Quest3Chat_5")
		StartConversation(conversation, NPC, Spawn, "Did you get the large Iceclad cod?")
	elseif HasCompletedQuest(Spawn, CodChips) and HasCompletedQuest(Spawn, EssentialIngredient) == false and HasQuest(Spawn, EssentialIngredient) == false then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_007.mp3", "", "", 570631167, 547031581, Spawn)
		AddConversationOption(conversation, "Hello, Blorpisa. How are you?", "Quest4Chat_2")
		StartConversation(conversation, NPC, Spawn, "Greetings, " .. GetName(Spawn) .. ".")
	elseif GetQuestStep(Spawn, EssentialIngredient) == 1 or GetQuestStep(Spawn, EssentialIngredient) == 2 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_008.mp3", "", "", 3240154599, 1916004366, Spawn)
		AddConversationOption(conversation, "Not yet. Where can I find the iceflows and snowpacks?", "Quest4Chat_5")
		StartConversation(conversation, NPC, Spawn, "Have you captured the elementals I asked for, " .. GetName(Spawn) .. ".")
	elseif GetQuestStep(Spawn, EssentialIngredient) == 3 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_008.mp3", "", "", 3240154599, 1916004366, Spawn)
		AddConversationOption(conversation, "I have captured eight elementals for you, four of each kind.", "Quest4Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you captured the elementals I asked for, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, EssentialIngredient) and HasCompletedQuest(Spawn, FieldTesting) == false and HasQuest(Spawn, FieldTesting) == false then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_009.mp3", "", "", 3405427240, 3750540234, Spawn)
		AddConversationOption(conversation, "If you define lovely as freezing cold, then it is indeed lovely.", "Quest5Chat_2")
		AddConversationOption(conversation, "Not so much, no.", "Quest5Chat_2")
		StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. "! It is a most lovely day, is it not?")
	elseif GetQuestStep(Spawn, FieldTesting) == 1 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_010.mp3", "", "", 624684361, 1424465021, Spawn)
		AddConversationOption(conversation, "I have not yet obtained the lillies. Where again can I find them?", "Quest5Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you collected the ice lilies for me?")
	elseif GetQuestStep(Spawn, FieldTesting) == 2 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_010.mp3", "", "", 624684361, 1424465021, Spawn)
		AddConversationOption(conversation, "I have the lilies you requested.", "Quest5Chat_7")
		StartConversation(conversation, NPC, Spawn, "Have you collected the ice lilies for me?")
	elseif HasCompletedQuest(Spawn, FieldTesting) and HasCompletedQuest(Spawn, FieldTwo) == false and HasQuest(Spawn, FieldTwo) == false then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_020.mp3", "", "", 1958149539, 711345401, Spawn)
		AddConversationOption(conversation, "Does that mean it's time for another field test?", "Quest6Chat_2")
		StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. ", I have made the necessary modifications to my Frost-born Ward.")
	elseif GetQuestStep(Spawn, FieldTwo) == 1 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_021.mp3", "", "", 3376846306, 3092977992, Spawn)
		AddConversationOption(conversation, "I do not yet know. Where can I find Pride Overlook?", "Quest6Chat_4")
		StartConversation(conversation, NPC, Spawn, "Did the Frost-born Ward work this time, " .. GetName(Spawn) .. "?")
	elseif GetQuestStep(Spawn, FieldTwo) == 2 then
	    PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_021.mp3", "", "", 3376846306, 3092977992, Spawn)
		AddConversationOption(conversation, "No, your spell did not work. At all.", "Quest6Chat_5")
		StartConversation(conversation, NPC, Spawn, "Did the Frost-born Ward work this time, " .. GetName(Spawn) .. "?")
	end
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_011.mp3", "", "", 846938752, 844089056, Spawn)
	AddConversationOption(conversation, "I'm on my way to New Halas.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Ah! I had not seen you before, but I have heard of you and your accomplishments! This is such a pleasure, " .. GetName(Spawn) .. ". We're lucky to have such a hero within our midst. What brings you to Gwenevyn's Cove?")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_012.mp3", "", "", 3605255838, 2576534049, Spawn)
	AddConversationOption(conversation, "How will you cast the spell on all of the pilgrims?", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "As am I! I've stopped along the way as I've been attempting to create a new spell. It is one that would protect the pilgrims from the bitter winds and frosty landscape of New Halas, as well as protect them from the wild creatures and hostile entities.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_013.mp3", "", "", 970695236, 4167602091, Spawn)
	AddConversationOption(conversation, "What if they can't read? What if they have children with them?", "Quest1Chat_5")
	StartConversation(conversation, NPC, Spawn, "I don't intend to cast it on them all! I will enchant the spell onto parchment for the pilgrims to read aloud when they arrive.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_014.mp3", "", "", 947009240, 1540493739, Spawn)
	AddConversationOption(conversation, "Well this all sounds very technical to me.", "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "Such details! But you do bring up a good point; I will have to make it so that when the spell is read it affects everyone in the area, not just the reader.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_015.mp3", "", "", 1255109690, 1640879678, Spawn)
	AddConversationOption(conversation, "What kind of help do you need?", "Quest1Chat_7")
	AddConversationOption(conversation, "No, sorry, I am in a hurry to get to New Halas.")
	StartConversation(conversation, NPC, Spawn, "Say, if you aren't in a hurry, I could use some help.")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_016.mp3", "", "", 1464127042, 4108357478, Spawn)
	AddConversationOption(conversation, "I sure could.", "OfferArcaneElements")
	AddConversationOption(conversation, "No, unfortunately.")
	StartConversation(conversation, NPC, Spawn, "To make the ink to enchant the spell to paper I need the arcane imbued ore of the rolling stones found southeast of here. Do you think you could go and collect some of the ore for me?")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_016.mp3", "", "", 717321044, 3158147617, Spawn)
	AddConversationOption(conversation, "I shall return to you once I have collected the weapons.")
	StartConversation(conversation, NPC, Spawn, "I'm glad that you have agreed to help the coldain. You can find the slain coldain southeast of here, upon a great battlefield.")
end

function Quest1Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_018.mp3", "", "", 2448606843, 4112204434, Spawn)
	AddConversationOption(conversation, "Let me know if it turns out successful!", "Quest1Chat_10")
	StartConversation(conversation, NPC, Spawn, "Thank you, " .. GetName(Spawn) .. "! I will crumble and crush this ore into a fine powder and then use it to make ink to enchant my spell onto parchment, once I have perfected the spell.")
end

function Quest1Chat_10(NPC, Spawn)
    SetStepComplete(Spawn, ArcaneElements, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_022.mp3", "", "", 2006824864, 3295508205, Spawn)
	AddConversationOption(conversation, "If you need help with anything else, please ask me. I am glad to help others here in New Halas.")
	AddConversationOption(conversation, "Good luck!")
	StartConversation(conversation, NPC, Spawn, "Oh I shall, but I will not be able to test my spell for a while yet. I've got to hop about collecting some more materials first.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_023.mp3", "", "", 1753584306, 4118176236, Spawn)
	AddConversationOption(conversation, "Need any help?", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "I had been working on that protection spell, but now I have been put in charge of making blankets for the people of Gwenevyn's Cove.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_024.mp3", "", "", 4187781831, 3119266103, Spawn)
	AddConversationOption(conversation, "I will go and get the unmarred fur pelts for you.", "OfferBearBottoms")
	AddConversationOption(conversation, "I'm not killing baby bears! Forget it!")
	StartConversation(conversation, NPC, Spawn, "I could use it if you're offering! I need unmarred fur pelts from the blizzard grizzly cubs. These cubs are around a cave that is northwest of Gwenevyn's Cove.")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_025.mp3", "", "", 3290905220, 1893346275, Spawn)
	AddConversationOption(conversation, "I will return to you once I have gathered the pelts.")
	StartConversation(conversation, NPC, Spawn, "Thanks. I know it's distasteful to kill cubs, but I need their softer fur to make blankets. Thank you for doing this for me, " .. GetName(Spawn) .. ".")
end

function Quest2Chat_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will return with the pelts.")
    StartConversation(conversation, NPC, Spawn, "The cubs roam northwest of Gwenevyn's Cove.")
end

function Quest2Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_026.mp3", "", "", 1759018155, 1598876766, Spawn)
	AddConversationOption(conversation, "Thank you. I did my best.", "Quest2Chat_7")
	StartConversation(conversation, NPC, Spawn, "Great! I can get right to work stitching up the blankets. You did a fine job skinning, " .. GetName(Spawn) .. ". None of the edges of the pelts are ragged.")
end

function Quest2Chat_7(NPC, Spawn)
    SetStepComplete(Spawn, BearBottoms, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_028.mp3", "", "", 3080889721, 2381851654, Spawn)
	AddConversationOption(conversation, "Thanks, Blorpisa. I appreciate it.")
	StartConversation(conversation, NPC, Spawn, "No, thank you, " .. GetName(Spawn) .. ". You really are a hero! I don't have much to give you, but please, take this coin for your troubles and one of my accessories.")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_029.mp3", "", "", 1210199796, 2166040902, Spawn)
	AddConversationOption(conversation, "The nerve of some people!", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "As thanks for making the blankets, they've now decided I should prepare dinner!")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_030.mp3", "", "", 14855483, 1166912182, Spawn)
	AddConversationOption(conversation, "The Frostfang Sea didn't seem too cold to me.", "Quest3Chat_3")
	AddConversationOption(conversation, "Brr! I agree it's much too cold. Best of luck with dinner!")
	StartConversation(conversation, NPC, Spawn, "It's as the old saying goes: there's always something more to do around camp. I don't mind cooking over the fire, it's just that there's nothing to cook! I have a delicious recipe for cod, but it's too cold to swim in the Frostfang Sea and I don't know how to use a fishing pole.")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_031.mp3", "", "", 2157156103, 1975601374, Spawn)
	AddConversationOption(conversation, "I can get the Iceclad cod for you.", "OfferCodChips")
	AddConversationOption(conversation, "I can't.  I am already busy, Blorpisa.")
	StartConversation(conversation, NPC, Spawn, "Really? Maybe I'm getting old. If it's not too cold for you, would you mind getting the Iceclad cod that I need for my recipe? I think everyone would like a nice bit of cod and chips for dinner.")
end

function Quest3Chat_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will return with enough cod for everyone's dinner.")
	StartConversation(conversation, NPC, Spawn, "The large Iceclad cod swim in the Frostfang Sea northeast of Gwenevyn's Cove.")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_033.mp3", "", "", 2508783935, 568039203, Spawn)
	AddConversationOption(conversation, "I am glad that I was able to help you out.", "Quest3Chat_6")
	StartConversation(conversation, NPC, Spawn, "Splendid, " .. GetName(Spawn) .. "! I shall get right to work cooking up the fish and chips for dinner.")
end

function Quest3Chat_6(NPC, Spawn)
    SetStepComplete(Spawn, CodChips, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_035.mp3", "", "", 787726717, 3426749776, Spawn)
	AddConversationOption(conversation, "It's more than enough. Thank you, Blorpisa.")
	StartConversation(conversation, NPC, Spawn, "We are truly in your debt, " ..GetName(Spawn) .. ". I've collected some coin from the other citizens of Gwenevyn's Cove. It isn't much, but it's better than nothing, right?")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_036.mp3", "", "", 3721924071, 2621057833, Spawn)
	AddConversationOption(conversation, "Is there anything I can do to help?", "Quest4Chat_3")
	StartConversation(conversation, NPC, Spawn, "I myself am well, but the Frost-born Ward that I've been creating is not going so well. It appears that I am still missing a few key components to the formula.")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_037.mp3", "", "", 2815442129, 1528606877, Spawn)
	AddConversationOption(conversation, "I can capture some elementals for you.", "Quest4Chat_4")
	AddConversationOption(conversation, "Sorry, I'm very busy today. Perhaps I can help you later.")
	StartConversation(conversation, NPC, Spawn, "I've created an Iced Trap to capture a few elementals. If you are not too busy, you could hop west of here and collect iceflows and snowpacks on the Icemane Plains. That would save me a lot of time.")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_038.mp3", "", "", 3909457491, 3153535025, Spawn)
	AddConversationOption(conversation, "I am sure I can handle a few small elementals.", "OfferEssentialIngredient")
	StartConversation(conversation, NPC, Spawn, "Thank you! Just take the Iced Trap and use it on any iceflow or snowpack. They should be instantly attracted to it. I do not anticipate any problems.")
end

function Quest4Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_041.mp3", "", "", 502468794, 246049475, Spawn)
	AddConversationOption(conversation, "I will return once I have captured the elementals.")
	StartConversation(conversation, NPC, Spawn, "The iceflows and snowpacks gather on the Icemane Plains, west of Gwenevyn's Cove.")
end

function Quest4Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_040.mp3", "", "", 3949759324, 1772100940, Spawn)
	AddConversationOption(conversation, "I am glad that you are pleased with my efforts.", "Quest4Chat_7")
	StartConversation(conversation, NPC, Spawn, "Excellent! That's much more than I hoped. With this many elementals I am sure I will be able to progress the Frost-born Ward.")
end

function Quest4Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_042.mp3", "", "", 301178077, 3194637507, Spawn)
	AddConversationOption(conversation, "It is the right thing to do.", "Quest4Chat_8")
	StartConversation(conversation, NPC, Spawn, "I am more than pleased, " .. GetName(Spawn) .. ".  You are saving us!  With every bit of aid you give us here in Gwenevyn's Cove, you help to ensure our survival within this inhospitable land. We are sure to live to see Mithaniel's blessed city of New Halas because of you!")
end

function Quest4Chat_8(NPC, Spawn)
    SetStepComplete(Spawn, EssentialIngredient, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_044.mp3", "", "", 4160372502, 1958782481, Spawn)
	AddConversationOption(conversation, "I will return if you need help.")
	StartConversation(conversation, NPC, Spawn, "If only everyone had your heart, " .. GetName(Spawn) .. ". Now, surely you have other things that must be done on this day. If you find yourself with more free time, I could always use your assistance.")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_045.mp3", "", "", 2755043591, 501739216, Spawn)
	AddConversationOption(conversation, "Sure! This is exciting!", "Quest5Chat_3")
	AddConversationOption(conversation, "No way, get someone else to be your lab rat.")
	StartConversation(conversation, NPC, Spawn, "I have made great progress on the Frost-born Ward! It is finally ready for its first field test. Will you do the honors?")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_046.mp3", "", "", 2185186057, 1637729185, Spawn)
	AddConversationOption(conversation, "I know, Blorpisa.", "Quest5Chat_4")
	AddConversationOption(conversation, "I'll keep that in mind.", "Quest5Chat_4")
	StartConversation(conversation, NPC, Spawn, "Now I make no guarantees that this spell will work. Remember that this is a field test.")
end

function Quest5Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_047.mp3", "", "", 2602829291, 2631146795, Spawn)
	AddConversationOption(conversation, "Is there anything else you need gathered?", "Quest5Chat_5")
	StartConversation(conversation, NPC, Spawn, "Let's see, where should you go to test my spell?")
end

function Quest5Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_048.mp3", "", "", 1989757627, 78481858, Spawn)
	AddConversationOption(conversation, "Where can I find these ice lilies?", "OfferFieldTesting")
	StartConversation(conversation, NPC, Spawn, "Oh, yes! I do need some ice lilies. I feel that they will add a special component to the Frost-born Ward.")
end

function Quest5Chat_6(NPC, Spawn)
    FaceTargget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I shall return with the lilies as soon as I am able")
	StartConversation(conversation, NPC, Spawn, "You can find the ice lilies on the Icemane Plains west of here. I have also refreshed the Frost-born Ward upon you as it seemed to be very weak.")
end

function Quest5Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_050.mp3", "", "", 2480968598, 2345683156, Spawn)
	AddConversationOption(conversation, "It didn't work at all. I was attacked by every lion that I came across.", "Quest5Chat_8")
	StartConversation(conversation, NPC, Spawn, "And how did my spell fare?")
end

function Quest5Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_052.mp3", "", "", 1918897363, 1844692964, Spawn)
	AddConversationOption(conversation, "I understand your dilemma.", "Quest5Chat_9")
	StartConversation(conversation, NPC, Spawn, "That is terrible! I do apologize! This is a very experimental spell, and I've been working as quickly as I can to get it working so that we do not lose yet more pilgrims to the hazards of New Halas.")
end

function Quest5Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_053.mp3", "", "", 4064573044, 3063721552, Spawn)
	AddConversationOption(conversation, "Yes, I can handle lions, bears and other creatures just fine.", "Quest5Chat_10")
	StartConversation(conversation, NPC, Spawn, "Thank you great hero, " .. GetName(Spawn) .. "! Will you continue to help me?")
end

function Quest5Chat_10(NPC, Spawn)
    SetStepComplete(Spawn, FieldTesting, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_054.mp3", "", "", 1222972448, 2143317846, Spawn)
	AddConversationOption(conversation, "I will refresh myself and return to you once I am ready.")
	StartConversation(conversation, NPC, Spawn, "I am glad to hear it! I shall incorporate these ice lilies into the ink for my spell. Return to me when you are recovered enough to do a second field test.")
end

function Quest6Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_055.mp3", "", "", 2588594475, 1367979821, Spawn)
	AddConversationOption(conversation, "Where shall I go to test the spell this time?", "Quest6Chat_3")
	AddConversationOption(conversation, "No, I am not yet ready.")
	StartConversation(conversation, NPC, Spawn, "It does! Are you ready, brave one?")
end

function Quest6Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_056.mp3", "", "", 3655265348, 981674489, Spawn)
	AddConversationOption(conversation, "I shall head to Pride Overlook.", "OfferFieldTwo")
	StartConversation(conversation, NPC, Spawn, "There is an overhang on the Icemane Plains called Pride Overlook. As the name implies, it is within the lions' territory. It is also near the Great Shelf, which is where I plan on going next, as it is the next stop on the pilgrims' path.")
end

function Quest6Chat_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will return to you once I have properly tested your spell.")
	StartConversation(conversation, NPC, Spawn, "Pride Overlook is on the Icemane Plains. It is west of Gwenevyn's Cove. I have also refeshed the Frost-born Ward upon you as it seemed to be very weak.")
end

function Quest6Chat_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_058.mp3", "", "", 3927456133, 2378795664, Spawn)
	AddConversationOption(conversation, "Well, it didn't.", "Quest6Chat_6")
	StartConversation(conversation, NPC, Spawn, "I am terribly sorry! I really thought it would work this time!")
end

function Quest6Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_060.mp3", "", "", 1746628301, 1931600273, Spawn)
	AddConversationOption(conversation, "Maybe I will see you there.", "Quest6Chat_7")
	StartConversation(conversation, NPC, Spawn, "I wonder what could be wrong with it. Hmm... I shall have to find new sources of power for my spell. Fortunately, I am traveling on to the Great Shelf, so perhaps I can continue my work there.")
end

function Quest6Chat_7(NPC, Spawn)
    SetStepComplete(Spawn, FieldTwo, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_061.mp3", "", "", 2498685853, 3116008120, Spawn)
	AddConversationOption(conversation, "Thank you, Blorpisa.")
	StartConversation(conversation, NPC, Spawn, "Thank you for all of your help, " .. GetName(Spawn) .. ". I cannot express how truly grateful I am for all you have done.  It is not much, but please take this as a bit of payment for your troubles.")
	RemoveSpawnAccess(NPC, Spawn)
end

function OfferArcaneElements(NPC, Spawn)
    OfferQuest(NPC, Spawn, ArcaneElements)
end

function OfferBearBottoms(NPC, Spawn)
    OfferQuest(NPC, Spawn, BearBottoms)
end

function OfferCodChips(NPC, Spawn)
    OfferQuest(NPC, Spawn, CodChips)
end

function OfferEssentialIngredient(NPC, Spawn)
    OfferQuest(NPC, Spawn, EssentialIngredient)
end

function OfferFieldTesting(NPC, Spawn)
    OfferQuest(NPC, Spawn, FieldTesting)
end

function OfferFieldTwo(NPC, Spawn)
    OfferQuest(NPC, Spawn, FieldTwo)
end
