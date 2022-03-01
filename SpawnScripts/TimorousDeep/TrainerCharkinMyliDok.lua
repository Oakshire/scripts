--[[
	Script Name	: SpawnScripts/TimorousDeep/TrainerCharkinMyliDok.lua
	Script Purpose	: Trainer Charkin Myli'Dok <Harvesting and Collections>
	Script Author	: John Adams
	Script Date	: 2009.03.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "beckon", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "beckon", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "beckon", 0, 0, Spawn)
	end

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections.", "dlg_13_1")
	AddConversationOption(conversation, "I'd like to learn about harvesting.", "dlg_13_4")
	AddConversationOption(conversation, "I've no time to chat right now.")
	StartConversation(conversation, NPC, Spawn, "I am able to answer any questions you have about collections or harvesting.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What happens next?", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How do I complete the collection?", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "dlg_13_4")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What are harvestables used for?", "dlg_13_5")
	StartConversation(conversation, NPC, Spawn, "Harvestables come in five forms, each tied to its own respective skill. These skills can be seen by opening your Skills window by pressing the P key, clicking on the Skills tab and selecting your General skills. Rocks increase mining, logs increase foresting, dens increase trapping, fish increase fishing, and plants increase gathering.")
end

function dlg_13_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "dlg_13_6")
	StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills.  They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions.  Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function dlg_13_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'd like to learn about collections now.", "dlg_13_7")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area.  If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end