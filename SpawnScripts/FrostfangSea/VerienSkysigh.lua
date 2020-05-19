--[[
	Script Name	: SpawnScripts/FrostfangSea/VerienSkysigh.lua
	Script Purpose	: Verien Skysigh 
	Script Author	: theFoof
	Script Date	: 2013.05.18
	Script Notes	: 
--]]
local BeetsAlternative = 13

local SiftingGarbage = 14

local PilgrimPathfinder = 15

local PilgrimScout = 16

local PilgrimPelts = 17

local IcemanesCometh = 18

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	ProvidesQuest(NPC, SiftingGarbage)
	ProvidesQuest(NPC, PilgrimPathfinder)
	ProvidesQuest(NPC, PilgrimScout)
	ProvidesQuest(NPC, PilgrimPelts)
	ProvidesQuest(NPC, IcemanesCometh)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if GetQuestStep(Spawn, BeetsAlternative) == 3 then
	    hailed(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    if GetQuestStep(Spawn, BeetsAlternative) == 3 then
        PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_001.mp3", "", "", 144081749, 1511716196, Spawn)
	    AddConversationOption(conversation, "Are you sure it wasn't an orc?", "Quest1Chat_2")
	    StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. ", it was horrible!  A blizzard grizzly attacked Wregan!")
	elseif HasCompletedQuest(Spawn, BeetsAlternative) and HasQuest(Spawn, SiftingGarbage) == false and HasCompletedQuest(Spawn, SiftingGarbage) == false then
	    PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_001.mp3", "", "", 144081749, 1511716196, Spawn)
	    AddConversationOption(conversation, "Are you sure it wasn't an orc?", "Quest1Chat_2")
	    StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. ", it was horrible!  A blizzard grizzly attacked Wregan!")
	elseif GetQuestStep(Spawn, SiftingGarbage) == 2 then
	    PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_006.mp3", "", "", 3934649254, 1217703045, Spawn)
		AddConversationOption(conversation, "Not that I know of.  There were plenty of bones and discarded items but nothing that seemed orcish.", "Quest3Chat_1")
		StartConversation(conversation, NPC, Spawn, "Did you find any sign of orcs within the blizzard grizzly den?")
	elseif HasCompletedQuest(Spawn, SiftingGarbage) and HasQuest(Spawn, PilgrimPathfinder) == false and HasCompletedQuest(Spawn, PilgrimPathfinder) == false then
	    PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_008.mp3", "", "", 3063047585, 4165639354, Spawn)
		AddConversationOption(conversation, "That makes sense.", "Quest3Chat_3")
		StartConversation(conversation, NPC, Spawn, "Ah, I think I have figured out our next step, " .. GetName(Spawn) .. ".  We do not know the safest way to New Halas!  We were relying on Wregan Firebeard for that knowledge.  And we do not know where the orcs may have gone.  We need to get the lay of the land.")
	elseif GetQuestStep(Spawn, PilgrimPathfinder) == 1 then
	    PlayFlavor(NPC, "", "Atop the grizzly den you should be able to spot our best path across the land, and it may offer you some knowledge into where the orcs went.", "hello", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, PilgrimPathfinder) == 2 then
	    Quest3Chat_4(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, PilgrimPathfinder) and HasQuest(Spawn, PilgrimScout) == false and HasCompletedQuest(Spawn, PilgrimScout) == false then
	    Quest4Chat_2(NPC, Spawn)
	elseif GetQuestStep(Spawn, PilgrimScout) == 1 then
	    PlayFlavor(NPC, "", "Return to me as soon as you have confirmed that we can traverse the western side of the isle by taking the path that hugs the wall of ice and rock.", "hello", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, PilgrimScout) == 2 then
	    PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_016.mp3", "", "", 1416497004, 1412694978, Spawn)
		AddConversationOption(conversation, "No.  Unfortunately, there is no way through.  It is a dead end.", "Quest4Chat_4")
		StartConversation(conversation, NPC, Spawn, "What did you find, " .. GetName(Spawn) .. "?  Is the path clear for us to take?")
	elseif HasCompletedQuest(Spawn, PilgrimScout) and HasQuest(Spawn, PilgrimPelts) == false and HasCompletedQuest(Spawn, PilgrimPelts) == false then
	    Quest5Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, PilgrimPelts) == 1 then
	    PlayFlavor(NPC, "", "I hope that you are able to find the big icemane cats Wregan spoke of. We need those pelts.", "hello", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, PilgrimPelts) == 2 then
	    PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_024.mp3", "", "", 1000859746, 2735177816, Spawn)
		AddConversationOption(conversation, "I do!", "Quest5Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you the icemane cat pelts necessary for the frogloks, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, PilgrimPelts) and HasQuest(Spawn, IcemanesCometh) == false and HasCompletedQuest(Spawn, IcemanesCometh) == false then
	    Quest6Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, IcemanesCometh) == 1 then
	    AddConversationOption(conversation, "No. I'll be back with one.")
		StartConversation(conversation, NPC, Spawn, "Do you have a cub trailing behind?")
	elseif GetQuestStep(Spawn, IcemanesCometh) == 2 then
	    PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_034.mp3", "", "", 1379708225, 648722209, Spawn)
		AddConversationOption(conversation, "Gladly!", "Quest6Chat_5")
		AddConversationOption(conversation, "It would be rude of me not to accept this gift.", "Quest6Chat_5")
		StartConversation(conversation, NPC, Spawn, "You have provided us with enough icemane cubs, " .. GetName(Spawn) .. ".  Please take this as a token of our appreciation.  We are all very grateful for what you have done.")
	elseif HasCompleteQuest(Spawn, IcemanesCometh) then
	    PlayFlavor(NPC, "", "I have alerted Pilgrims' Landing of all that transpired here, and of the orc prints you found.", "", 0, 0, Spawn)
	end
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_002.mp3", "", "", 3370476937, 2935818226, Spawn)
	AddConversationOption(conversation, "I found orc footprints when I was harvesting the tundra beets.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Oh, yes!  The bear was still standing over him when the guard here spotted... Wait!  Why would you think it was an orc?!")
end

function Quest1Chat_3(NPC, Spawn)
    if GetQuestStep(Spawn, BeetsAlternative) == 3 then
	    SetStepComplete(Spawn, BeetsAlternative, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_003.mp3", "", "", 490895384, 2888964692, Spawn)
	AddConversationOption(conversation, "That sounds plausible.", "Quest2Chat_1")
	AddConversationOption(conversation, "I'm not staying here to find out.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Ack!  That is not good.  No, not at all.  That may even explain the grizzly attack!  Perhaps they have been displaced from their den or pushed into attacking, whipped into a frenzy, if you would, by the orcs' presence?")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_004.mp3", "", "", 788435827, 360271773, Spawn)
	AddConversationOption(conversation, "I'll do that.", "OfferSiftingGarbage")
	AddConversationOption(conversation, "The guard here can do it.", "Quest2Chat_2")
	StartConversation(conversation, NPC, Spawn, "Then someone must delve into the blizzard grizzly den in search for any sign of the orcs in there.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_005.mp3", "", "", 1213684046, 759187296, Spawn)
	AddConversationOption(conversation, "Since you put it that way, I'll do it.", "OfferSiftingGarbage")
	AddConversationOption(conversation, "I can't agree to this.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Oh, no.  We cannot afford to give up our guard here.  We will be at the mercy of the wilds if that were the case.  We are depending on you, Ocahao.")
end

function Quest3Chat_1(NPC, Spawn)
    SetStepComplete(Spawn, SiftingGarbage, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_007.mp3", "", "", 162612722, 573249743, Spawn)
	AddConversationOption(conversation, "I do not know.", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "Then they must be somewhere else.  But where?")
end

function Quest3Chat_2(NPC, Spawn)
    PlayFlavor(NPC, "", "Let me think on this a moment", "think", 0, 0, Spawn)
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_009.mp3", "", "", 4139445726, 3566440142, Spawn)
	AddConversationOption(conversation, "I'll be sure to take in the view while I'm there.", "OfferPilgrimPathfinder")
	AddConversationOption(conversation, "I am not going to scale the blizzard grizzly cave.")
	StartConversation(conversation, NPC, Spawn, "Hike up to the top of the blizzard grizzly den.  The higher vantage point should allow you to find our best path across the land, and may offer you some knowledge into where the orcs went.")
end

function Quest3Chat_4(NPC, Spawn)
    PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_010.mp3", "", "", 649282566, 2245924889, Spawn)
	AddConversationOption(conversation, "No.  But I did see a path we may be able to take.", "Quest3Chat_5")
	StartConversation(conversation, NPC, Spawn, "Tell me, what did you find atop the blizzard grizzly den, " .. GetName(Spawn) .. "?  Any sign of the orcs?")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_011.mp3", "", "", 3584109077, 3566409712, Spawn)
	AddConversationOption(conversation, "The western shore leads into the dangerous plains ahead, but there seems to be a path leading into the hills above it.", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "Well, at least we have that.  Where must we go?")
end

function Quest4Chat_1(NPC, Spawn)
    if GetQuestStep(Spawn, PilgrimPathfinder) == 2 then
	    SetStepComplete(Spawn, PilgrimPathfinder, 2)
	end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_012.mp3", "", "", 3213043201, 2009251303, Spawn)
	AddConversationOption(conversation, "I hope so, Verien.", "Quest4Chat_2")
	StartConversation(conversation, NPC, Spawn, "If that is the case then we may just stand a better chance of surviving the trek to the city by taking that hill trail.")
end

function Quest4Chat_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_013.mp3", "", "", 45193987, 852341503, Spawn)
	AddConversationOption(conversation, "Yeah, that is true.", "Quest4Chat_3")
	AddConversationOption(conversation, "We must take the chance.", "Quest4Chat_3")
	StartConversation(conversation, NPC, Spawn, "Higher lands of snow are not necessarily the safest of conditions though, you know.")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_014.mp3", "", "", 4224224424, 1811407629, Spawn)
	AddConversationOption(conversation, "I can do that for us.", "OfferPilgrimScout")
	AddConversationOption(conversation, "No.  There are others that can do that.")
	StartConversation(conversation, NPC, Spawn, "Will you please go scout out the path you spotted from atop the blizzard grizzly cave?  Once you have confirmed that it is as clear as you suspect, then return to us and we will make our way.")
end

function Quest4Chat_4(NPC, Spawn)
    if GetQuestStep(Spawn, PilgrimScout) == 2 then
        SetStepComplete(Spawn, PilgrimScout, 2)
	end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_017.mp3", "", "", 2885535176, 962895283, Spawn)
	AddConversationOption(conversation, "It seems the only choice.", "Quest5Chat_1")
	StartConversation(conversation, NPC, Spawn, "As I had thought, it was too good to be true.  Then we have only one choice.  We must go west through the dangerous plains if we hope to reach the city of New Halas.")
end

function Quest5Chat_1(NPC, Spawn)
	conversation = CreateConversation()

        PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_018.mp3", "", "", 4165854, 1367268200, Spawn)
	AddConversationOption(conversation, "I don't know either.", "Quest5Chat_2")
	AddConversationOption(conversation, "I have made it deep into their cave.", "Quest5Chat_5")
	AddConversationOption(conversation, "You need to face your own fears.")
	StartConversation(conversation, NPC, Spawn, "But I do not know how we are going to make it past the grizzlies.  Their hunger seems insatiable!")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_019.mp3", "", "", 655764296, 405564965, Spawn)
	AddConversationOption(conversation, "But that's just me.  That's not all of you, too.", "Quest5Chat_3")
	StartConversation(conversation, NPC, Spawn, "But wait, you must know something about it.  You made it deep into their cave!  You have obviously learned how to fight them and how to navigate around them when possible.")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_021.mp3", "", "", 4164608708, 1805231816, Spawn)
	AddConversationOption(conversation, "This is nothing like a swamp.", "Quest5Chat_4")
	StartConversation(conversation, NPC, Spawn, "Good point.  I will have to think on this a while.  In the mean time, the froglok pilgrims are becoming cold.  Their amphibious bodies were not blessed by Marr with much protection from the elements.")
end

function Quest5Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_022.mp3", "", "", 208330103, 1632388719, Spawn)
	AddConversationOption(conversation, "I'm your lion hunter!", "OfferPilgrimPelts")
	AddConversationOption(conversation, "I am no lion hunter.")
	StartConversation(conversation, NPC, Spawn, "Exactly.  Wregan had promised to hunt them up some lion pelts to keep them warm.  He had said that they were not far from here, but we have never seen any.  Will you journey ahead and slay any of the big icemane cats you find?")
end

function Quest5Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_020.mp3", "", "", 1987107371, 160133318, Spawn)
	AddConversationOption(conversation, "But that's just me.  That's not all of you, too.", "Quest5Chat_3")
	StartConversation(conversation, NPC, Spawn, "That's right, you have.  And you have survived the hike atop of their cave.  You have obviously learned how to fight them and how to navigate around them when possible.")
end

function Quest5Chat_6(NPC, Spawn)
    SetStepComplete(Spawn, PilgrimPelts, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_025.mp3", "", "", 555682283, 4098507949, Spawn)
	AddConversationOption(conversation, "That would be nice.", "Quest6Chat_1")
	StartConversation(conversation, NPC, Spawn, "Ah, this is wonderful!  In fact, you may have returned with enough fur for us to craft you something, too.")
end

function Quest6Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_026.mp3", "", "", 3888781085, 2569289661, Spawn)
	AddConversationOption(conversation, "No.  Why?", "Quest6Chat_2")
	StartConversation(conversation, NPC, Spawn, "Did you see any of the ferocious grizzlies amongst the icemane cats?")
end

function Quest6Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_027.mp3", "", "", 2243105575, 903335403, Spawn)
	AddConversationOption(conversation, "It would seem so.", "Quest6Chat_3")
	AddConversationOption(conversation, "If you say so.", "Quest6Chat_3")
	StartConversation(conversation, NPC, Spawn, "I have been giving some thought to how we may increase our safety while we journey past the grizzlies.  The bears have learned to steer clear of the icemane cats, as you can attest.")
end

function Quest6Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_028.mp3", "", "", 3038823377, 2150811874, Spawn)
	AddConversationOption(conversation, "How are we to fool the cats into doing that?", "Quest6Chat_4")
	AddConversationOption(conversation, "I do not like the sound of this plan. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "So, if we have some of the cats working as our chaperones, then we should make it past the grizzlies.")
end

function Quest6Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_029.mp3", "", "", 1710780263, 712522304, Spawn)
	AddConversationOption(conversation, "I'll do that.", "OfferIcemanesCometh")
	AddConversationOption(conversation, "Oh, no way!  I am not agreeing to this one.")
	StartConversation(conversation, NPC, Spawn, "There is no fooling them.  I'm suggesting you take this binding tether and leash icemane cubs with it. ")
end

function Quest6Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_035.mp3", "", "", 1914930424, 1171502027, Spawn)
	AddConversationOption(conversation, "I can do it.", "Quest6Chat_6")
	AddConversationOption(conversation, "Then I wish you good luck.", "CompleteIcemanesCometh")
	StartConversation(conversation, NPC, Spawn, "And now that I know that these pilgrims will be in safe hands, I must venture back to Pilgrims' Landing.  Someone must alert them of all that has transpired here, and of the orc prints you found.")
end

function Quest6Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "verien_skysigh/halas/gwenevyns_cove/verien_skysigh_036.mp3", "", "", 491269098, 2938508945, Spawn)
	AddConversationOption(conversation, "Then I wish you good luck.", "CompleteIcemanesCometh")
	StartConversation(conversation, NPC, Spawn, "No.  I will not stand in the way of your travels any further.")
end

function CompleteIcemanesCometh(NPC, Spawn)
    SetStepComplete(Spawn, IcemanesCometh, 2)
	RemoveSpawnAccess(NPC, Spawn)
end

function OfferSiftingGarbage(NPC, Spawn)
    OfferQuest(NPC, Spawn, SiftingGarbage)
end

function OfferPilgrimPathfinder(NPC, Spawn)
    OfferQuest(NPC, Spawn, PilgrimPathfinder)
end

function OfferPilgrimScout(NPC, Spawn)
    OfferQuest(NPC, Spawn, PilgrimScout)
end

function OfferPilgrimPelts(NPC, Spawn)
    OfferQuest(NPC, Spawn, PilgrimPelts)
end

function OfferIcemanesCometh(NPC, Spawn)
    OfferQuest(NPC, Spawn, IcemanesCometh)
end
