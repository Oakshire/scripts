--[[
    Script Name    : SpawnScripts/Oakmyst/CallaBadgerbane.lua
    Script Author  : Ememjr
    Script Date    : 2020.05.08 04:05:01
    Script Purpose : 
                   : 
--]]

local HarvestTutorial = 11

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, HarvestTutorial)
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
	if GetQuestStep(Spawn, HarvestTutorial) == 8 then
	    SetStepComplete(Spawn, HarvestTutorial, 8)
		conversation = CreateConversation()
		
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you.")
		StartConversation(conversation, NPC, Spawn, "Excellent work learning about harvesting!  As a reward, allow me to offer you this box for storing harvested items.  It's quite heavy, so I suggest you put it in your bank rather than carrying it, but it has plenty of storage room for harvests.")
	else
	    BaseChat(NPC, Spawn)
	end
end

function collections_chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happens next?", "collections_chat_2")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function collections_chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I complete the collection?", "collections_chat_3")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function collections_chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "harvests_chat_1")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

function harvests_chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are harvestables used for?", "harvests_chat_2")
	StartConversation(conversation, NPC, Spawn, "Harvestables are natural resources that can be found around most parts of the outdoors.  You have harvesting skills that allow you collect them. These can be seen by opening your Character window (C), clicking on the Skills tab, and selecting the General skills. Rocks increase mining, logs increase foresting, dens increase trapping, fish increase fishing, and shrubs increase gathering.")
end

function harvests_chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "OfferHarvesttutorial")
	StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills.  They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions.  Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function harvests_chat_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections now.", "collections_chat_1")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area.  If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end

function elemental_chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Oh... Well you were talking about collections?", "BaseChat")
	StartConversation(conversation, NPC, Spawn, "It is bothersome, but I have seen worse. That is why I love collections so much. It helps me to forget...")
end

function BaseChat(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections.", "collections_chat_1")
	AddConversationOption(conversation, "I'd like to learn about harvesting.", "harvests_chat_1")
	AddConversationOption(conversation, "Aren't you worried about the elemental attacks?", "elemental_chat_1")
	AddConversationOption(conversation, "I've no time to chat right now.")
	StartConversation(conversation, NPC, Spawn, "I am able to answer any questions you have about collections or harvesting.")
end

function OfferHarvesttutorial(NPC, Spawn)
    if HasCompletedQuest(Spawn, HarvestTutorial) == false and HasQuest(Spawn, HarvestTutorial) == false then
        OfferQuest(NPC, Spawn, HarvestTutorial)
    end
	harvests_chat_3(NPC, Spawn)
end	

