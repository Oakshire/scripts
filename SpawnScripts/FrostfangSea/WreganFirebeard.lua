--[[
	Script Name	: SpawnScripts/FrostfangSea/WreganFirebeard.lua
	Script Purpose	: Wregan Firebeard 
	Script Author	: theFoof
	Script Date	: 2013.05.14
	Script Notes	: 
--]]

local RideGwenevyn = 8

local BeetsAlternative = 13

local SiftingGarbage = 14

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	ProvidesQuest(NPC, BeetsAlternative)
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function SpawnAccess(NPC, Spawn)
    if HasCompletedQuest(Spawn, BeetsAlternative) or GetQuestStep(Spawn, BeetsAlternative) == 3 then
	    if HasCompletedQuest(Spawn, SiftingGarbage) == false and GetQuestStep(Spawn, SiftingGarbage) ~= 2 then
		    AddSpawnAccess(GetSpawn(NPC, 4701834), Spawn)
		end
	else
	    AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, BeetsAlternative) == false and HasCompletedQuest(Spawn, BeetsAlternative) == false then
        Quest1Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, RideGwenevyn) == 1 then
	    Quest1Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, BeetsAlternative) == 1 then
	    PlayFlavor(NPC, "", "As soon as you get those tundra beets we'll be able to embark on our journey.", "tapfoot", 1689589577, 4560189, Spawn)
	end
end	
	
function Quest1Chat_1(NPC, Spawn)
    if GetQuestStep(Spawn, RideGwenevyn) ==  1 then
	    SetStepComplete(Spawn, RideGwenevyn, 1)
	end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "wregan_firebeard/halas/gwenevyns_cove/wregan_firebeard_001.mp3", "", "", 1553579040, 3434703804, Spawn)
    AddConversationOption(conversation, "Yes.", "Quest1Chat_2")
    AddConversationOption(conversation, "You could say that.", "Quest1Chat_2")
    StartConversation(conversation, NPC, Spawn, "Another pilgrim, I take it?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "wregan_firebeard/halas/gwenevyns_cove/wregan_firebeard_002.mp3", "", "", 1986724829, 1256857659, Spawn)
	AddConversationOption(conversation, "Why's that?", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Well, you're lucky you arrived when you did.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "wregan_firebeard/halas/gwenevyns_cove/wregan_firebeard_003.mp3", "", "", 931801191, 1464668700, Spawn)
	AddConversationOption(conversation, "You were going to leave without enough provisions?", "Quest1Chat_4")
	AddConversationOption(conversation, "Why didn't you have the others gather what is needed?", "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "We were about ready to set out for our treacherous pilgrimage to the city of New Halas.  Unfortunately, if your plans were to join us then you need to help us fill our packs with provisions for the trip.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "wregan_firebeard/halas/gwenevyns_cove/wregan_firebeard_005.mp3", "", "", 3666066743, 675613480, Spawn)
	AddConversationOption(conversation, "Oh, so I'll be gathering the stuff I need for this trip?", "OfferBeetsAlternative")
	AddConversationOption(conversation, "I am here to hunt not gather!", "Quest1Chat_5")
	StartConversation(conversation, NPC, Spawn, "No.  We already have enough provisions for those that were already here, but you are another mouth to feed.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "wregan_firebeard/halas/gwenevyns_cove/wregan_firebeard_006.mp3", "", "", 3776727269, 3608373686, Spawn)
	AddConversationOption(conversation, "Oh, so I'll be gathering the stuff I need for this trip?", "OfferBeetsAlternative")
	AddConversationOption(conversation, "I am still not convinced.  I'm going to go now.")
	StartConversation(conversation, NPC, Spawn, "There will be plenty of opportunity for hunting and fighting, eager one.  The journey to the city is dangersome, full of wild beasts and harsh elements.  That is why we must prepare ourselves now.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "wregan_firebeard/halas/gwenevyns_cove/wregan_firebeard_004.mp3", "", "", 2820759679, 594607724, Spawn)
	AddConversationOption(conversation, "Oh, so I'll be gathering the stuff I need for this trip?", "OfferBeetsAlternative")
	AddConversationOption(conversation, "I am here to hunt not gather!", "Quest1Chat_5")
	StartConversation(conversation, NPC, Spawn, "I did.  They gathered the provisions that they will need for the journey, but you are another mouth to feed.")
end

function OfferBeetsAlternative(NPC, Spawn)
    if HasQuest(Spawn, BeetsAlternative) == false and HasCompletedQuest(Spawn, BeetsAlternative) == false then
	    OfferQuest(NPC, Spawn, BeetsAlternative)
	end
end
