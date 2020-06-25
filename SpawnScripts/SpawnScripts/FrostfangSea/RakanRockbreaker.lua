--[[
	Script Name	: SpawnScripts/FrostfangSea/RakanRockbreaker.lua
	Script Purpose	: Rakan Rockbreaker <Coldain Quartermaster>
	Script Author	: theFoof
	Script Date	: 2013.06.01
	Script Notes	: 
--]]


-- add in repeatable quest dialogue when available

local DemandSupplies = 45

local FoilingFlank = 46

function spawn(NPC)
    ProvidesQuest(NPC, DemandSupplies)
	ProvidesQuest(NPC, FoilingFlank)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasCompletedQuest(Spawn, DemandSupplies) and not HasQuest(Spawn, DemandSupplies) then
        PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker001.mp3", "", "", 2002637275, 536344722, Spawn)
	    AddConversationOption(conversation, "What supplies?", "Quest1Chat_1")
	    AddConversationOption(conversation, "I'm busy at the moment.  Goodbye.")
	    StartConversation(conversation, NPC, Spawn, "We've got to hurry!  These supplies need to be delivered to the front lines, and quickly.")
    elseif HasQuest(Spawn, DemandSupplies) and GetQuestStep(Spawn, DemandSupplies) < 3 then
		PlayFlavor(NPC, "", "Ye've got to hurry! They need those supplies and they need em now!", "threaten", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, DemandSupplies) == 3 then
        PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker006.mp3", "", "", 3102394371, 3200634636, Spawn)
	    AddConversationOption(conversation, "I went as quickly as I could.", "Quest1Chat_4")
	    AddConversationOption(conversation, "They have the supplies they needed.", "Quest1Chat_4")
	    StartConversation(conversation, NPC, Spawn, "Yer back!  I trust ye delivered the supplies to the coldain soldiers.")
	elseif HasCompletedQuest(Spawn, DemandSupplies) and not HasQuest(Spawn, FoilingFlank) then
		Quest2Chat_2(NPC, Spawn)
	elseif HasQuest(Spawn, FoilingFlank) and GetQuestStep(Spawn, FoilingFlank) ~= 3 then
		PlayFlavor(NPC, "", "As we speak, those snow glimmered runners are making their way up the choke!", "tap foot", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, FoilingFlank) == 3 then
		PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker015.mp3", "", "", 26313219, 1364697377, Spawn)
		AddConversationOption(conversation, "Of course.", "Quest2Chat_4")
		AddConversationOption(conversation, "It wasn't easy, but I took care of them.", "Quest2Chat_4")
		StartConversation(conversation, NPC, Spawn, "Yer back, and in one piece.  Were ye successful in yer task?  Did ye take care of the orcs?")
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker002.mp3", "", "", 2334563481, 118587127, Spawn)
	AddConversationOption(conversation, "What are glimmer visors?", "Quest1Chat_2")
	AddConversationOption(conversation, "I'll deliver the supplies for you.", "Quest1Chat_3")
	AddConversationOption(conversation, "I'm busy at the moment.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Reforged weapons for the soldiers, and glimmer visors for the archers.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker003.mp3", "", "", 2462675267, 3917758225, Spawn)
	AddConversationOption(conversation, "I'll deliver the supplies for you.", "Quest1Chat_3")
	AddConversationOption(conversation, "I'm busy at the moment.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The visors allow our archers to see the Ry'Gorr orcs that have been camouflaged by a snow glimmer.  Otherwise they'll get through and flank our forces.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker004.mp3", "", "", 3607684996, 3048983099, Spawn)
	AddConversationOption(conversation, "I'll do just that.", "OfferDemandSupplies")
	AddConversationOption(conversation, "You can count on me.", "OfferDemandSupplies")
	StartConversation(conversation, NPC, Spawn, "Perfect.  Bring these supplies to our defenders perched at the peak of Herga's Choke.  The leaders will take the goods off your hands and distribute them to the coldain.")
end

function Quest1Chat_4(NPC, Spawn)
	SetStepComplete(Spawn, DemandSupplies, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker007.mp3", "", "", 84500025, 397416081, Spawn)
	AddConversationOption(conversation, "Was there something else you needed?", "Quest2Chat_1")
	AddConversationOption(conversation, "I'm afraid I must be going.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Phew!  That's a relief.  We just might be able to stop them for awhile longer.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker008.mp3", "", "", 3124701734, 1733764756, Spawn)
	AddConversationOption(conversation, "So you need me to deal with them?", "Quest2Chat_3")
	AddConversationOption(conversation, "This is too much for me to handle.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The Ry'Gorr have figured out a way to make themselves all but invisible, and are charging up the choke.  ")
end

function Quest2Chat_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker010.mp3", "", "", 3359211699, 295105343, Spawn)
	AddConversationOption(conversation, "Was there something else you needed?", "Quest2Chat_1")
	AddConversationOption(conversation, "I'm afraid I must be going.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Yer a fine sort fer delivering those supplies, " .. GetName(Spawn) .. ".  Unfortunately, our troubles are far from over.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker011.mp3", "", "", 268182012, 816884804, Spawn)
	AddConversationOption(conversation, "I'd be happy to try.", "OfferFoilingFlank")
	AddConversationOption(conversation, "This is too much for me to handle.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "We need to deal with them, as well as the orcs that are maintaining the portal at the pinnacle of Herga's Choke.  Our coldain forces are barely able to keep up with the unending onslaught, but perhaps ye can break the stalemate.")
end

function Quest2Chat_4(NPC, Spawn)
	SetStepComplete(Spawn, FoilingFlank, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "rakan_rockbreaker/halas/great_shelf/rakan_rockbreaker/rakan_rockbreaker017.mp3", "", "", 101832850, 1600602204, Spawn)
	AddConversationOption(conversation, "Victory is certain.")
	AddConversationOption(conversation, "I'm happy to have helped.")
	StartConversation(conversation, NPC, Spawn, "I knew we could count on ye," .. GetName(Spawn) .. "!  The battle for the portal is surely ours now.")
end

function OfferDemandSupplies(NPC, Spawn)
    OfferQuest(NPC, Spawn, DemandSupplies)
end

function OfferFoilingFlank(NPC, Spawn)
	OfferQuest(NPC, Spawn, FoilingFlank)
end
