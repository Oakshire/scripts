--[[
	Script Name	: SpawnScripts/FrostfangSea/BroganMacLellan.lua
	Script Purpose	: Brogan MacLellan 
	Script Author	: theFoof
	Script Date	: 2013.08.19
	Script Notes	:
--]]

local TrustIssues = 85

local TrustedReferral = 86

function spawn(NPC)
	ProvidesQuest(NPC, TrustIssues)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, TrustIssues) and not HasQuest(Spawn, TrustIssues) then
		PlayFlavor(NPC, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan001.mp3", "", "", 2714538944, 2338955741, Spawn)
		AddConversationOption(conversation, "It isn't for everyone.", "Quest1Chat_1")
		AddConversationOption(conversation, "'Paradise' is subjective.", "Quest1Chat_4")
		AddConversationOption(conversation, "The population is mostly barbarians, right?", "Quest1Chat_5")
		AddConversationOption(conversation, "I'm not interested in figuring this out.")
		StartConversation(conversation, NPC, Spawn, "It's a diverse group of fellers living together on this frigid rock.  There are a number of folks like me, sure. But what do the other inhabitants see in Erollis?  Why do they stay here?  It's not like this is a verdant paradise.")
	elseif HasQuest(Spawn, TrustIssues) and GetQuestStep(Spawn, TrustIssues) < 5 then
		PlayFlavor(NPC, "", "Talk to them, and find out why they're here.", "hello", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, TrustIssues) == 5 then
		AddConversationOption(conversation, "They've all got valid reasons for staying in Erollis.", "Quest1Chat_9")
		AddConversationOption(conversation, "There is a rich history for this place, and each newcomer is a part of it.", "Quest1Chat_9")
		AddConversationOption(conversation, 'Not surprisingly, everyone has their own motivation and "angle".', "Quest1Chat_9")
		StartConversation(conversation, NPC, Spawn, "Back already, " .. GetName(Spawn) .. "?  Well, don't be shy.  What did you find out?")
	elseif HasCompletedQuest(Spawn, TrustIssues) and not HasCompletedQuest(Spawn, TrustedReferral) and not HasQuest(Spawn, TrustedReferral) then
		Quest2Chat_1(NPC, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan003.mp3", "", "", 111727266, 1713011810, Spawn)
	AddConversationOption(conversation, "Marr blessed this place.", "Quest1Chat_2")
	AddConversationOption(conversation, "Some find frontier life exciting.", "Quest1Chat_6")
	AddConversationOption(conversation, "I prefer natural skins and furs to cotton fabric.", "Quest1Chat_7")
	AddConversationOption(conversation, "Perhaps some other time. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "You've got that right.  And I'm not just talking about the obvious need for skins and furs, which aren't everyone's mug of ale.  Erollis is isolated, and it's a hostile environment.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan006.mp3", "", "", 385456101, 752051368, Spawn)
	AddConversationOption(conversation, "I wonder why the others are here.", "Quest1Chat_3")
	AddConversationOption(conversation, "I'm not interested in figuring this out.")
	StartConversation(conversation, NPC, Spawn, "Yeah, he plopped down a fetching statue and showed pilgrims the way here, but that doesn't make the environment any more palatable.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan005.mp3", "", "", 3080293935, 4050287444, Spawn)
	AddConversationOption(conversation, "Sure. I wouldn't mind learning their motives as well.", "OfferTrustIssues")
	AddConversationOption(conversation, "Why not?  Could meet some interesting people.", "OfferTrustIssues")
	AddConversationOption(conversation, "Might as well.  I don't trust them either.", "OfferTrustIssues")
	AddConversationOption(conversation, "I'd rather not get too close to strangers.")
	StartConversation(conversation, NPC, Spawn, "Yeah, I'd like to learn each major faction's angle.  Call me paranoid, but I'd feel safer knowing more about the motivations of the folks that share the town.  Care to do a little asking around?")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan002.mp3", "", "", 1097446882, 2575906543, Spawn)
	AddConversationOption(conversation, "I wonder why the others are here.", "Quest1Chat_3")
	AddConversationOption(conversation, "I'm not interested in figuring this out.")
	StartConversation(conversation, NPC, Spawn, "True.  It looks an awful lot like the Halas of old, or so I've gathered, which is what drew me here.  You could say it's my paradise.  But not even my people can agree to appreciate this weather.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan004.mp3", "", "", 1786838303, 2147071004, Spawn)
	AddConversationOption(conversation, "I wonder why the others are here.", "Quest1Chat_3")
	AddConversationOption(conversation, "I'm not interested in figuring this out.")
	StartConversation(conversation, NPC, Spawn, "Eh.  We make up around half the population, give or take.  The rest is primarily frogloks and coldain with a smattering of other offshore races mixed in.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan007.mp3", "", "", 1338892240, 118117761, Spawn)
	AddConversationOption(conversation, "It might be worth looking into people's motivations.", "Quest1Chat_3")
	AddConversationOption(conversation, "I'm not interested in figuring this out.")
	StartConversation(conversation, NPC, Spawn, "The thrill-seekers and folks looking to start a new life, possibly.  Though, I don't trust the former and the latter make me nervous.")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan008.mp3", "", "", 618404562, 3809310014, Spawn)
	AddConversationOption(conversation, "And it's comfortable, to boot!", "Quest1Chat_8")
	AddConversationOption(conversation, "But fashion alone isn't a reason to live on Erollis, is it?", "Quest1Chat_3")
	AddConversationOption(conversation, "I'm not interested in figuring this out.")
	StartConversation(conversation, NPC, Spawn, "You and me both.  There's nothing like supple hide and animal hair to ward off the winter's chill, especially when it comes to footwear.")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Glad you liked it.", "Quest1Chat_3")
	AddConversationOption(conversation, "I'm too busy chuckling to go on.  Let me catch my breath.")
	StartConversation(conversation, NPC, Spawn, "If words were weapons, that pun would have slain me where I stood.")
end

function Quest1Chat_9(NPC, Spawn)
	SetStepComplete(Spawn, TrustIssues, 5)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm not sure that can be helped.", "Quest2Chat_1")
	AddConversationOption(conversation, "You have real trust issues, MacLellan.", "Quest2Chat_1")
	AddConversationOption(conversation, "Trust is a commodity that we can't always afford.", "Quest2Chat_1")
	StartConversation(conversation, NPC, Spawn, "Hmm.  I supposed we're all new here, in one way or another, but I still don't trust the others.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Is there anything else I can do for you?", "Quest2Chat_2")
	AddConversationOption(conversation, "I'm glad I could.  Good day, Brogan.")
	StartConversation(conversation, NPC, Spawn, "I may be reluctant to trust the others here, but you've proven yourself to me.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Sure.", "Quest2Chat_5")
	AddConversationOption(conversation, "I hadn't thought of it.", "Quest2Chat_4")
	AddConversationOption(conversation, "No.  Not yet.", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "Not for me, " .. GetName(Spawn) .. ".  Are you willing to travel to another land?")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Well, come back to me when you are looking to travel.", "agree", 0, 0, Spawn)
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "More coin would be useful.", "Quest2Chat_5")
	AddConversationOption(conversation, "That's true.", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "Well, when you need more coin you will.")
end

function Quest2Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I can do that.", "OfferTrustedReferral")
	AddConversationOption(conversation, "Where's that?", "Quest2Chat_6")
	AddConversationOption(conversation, "I have no plans to travel to Butcherblock.")
	StartConversation(conversation, NPC, Spawn, "Then I suggest you speak with my cousin, Belinda.  She's at the docks in the Butcherblock Mountains.")
end

function Quest2Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I can do that.", "OfferTrustedReferral")
	AddConversationOption(conversation, "I have no plans to travel to Butcherblock.")
	StartConversation(conversation, NPC, Spawn, "Butcherblock Mountains is on the continent of Faydwer.  You can travel there by taking the griffon down at the Erollis docks.")
end

function OfferTrustedReferral(NPC, Spawn)
	OfferQuest(NPC, Spawn, TrustedReferral)
end

function OfferTrustIssues(NPC, Spawn)
	SendPopUpMessage(Spawn, "This quest is not implemented yet. Requires NPC in Butcherblock.", 255, 0, 0)
	--OfferQuest(NPC, Spawn, TrustIssues)
end