--[[
	Script Name	: SpawnScripts/GreaterFaydark/TrainerEivarraLaceleaf.lua
	Script Purpose	: Trainer Eivarra Laceleaf <Harvest and Collections Diva>
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/trainers/intro_collection_harvesting_collect_5c4e2fe9.mp3", "None of the rest of you touch these collectibles! They're mine!", "", 2808230529, 2769568795, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/trainers/intro_collection_harvesting_collect_df57b24b.mp3", "I'm hurrying!  Don't rush me.", "", 3622690165, 1121532609, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra001.mp3", "", "", 1784643111, 2793677851, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections.", "dlg_73_1")
	AddConversationOption(conversation, "I'd like to learn about harvesting.")
	AddConversationOption(conversation, "I've no time to chat right now.")
	StartConversation(conversation, NPC, Spawn, "Don't be shy! Come closer, m'dear, and I'd be happy to answer any questions you have about collections or harvesting!")
	if convo==74 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra001.mp3", "", "", 1784643111, 2793677851, Spawn)
		AddConversationOption(conversation, "I'd like to learn about collections.", "dlg_74_1")
		AddConversationOption(conversation, "I'd like to learn about harvesting.")
		AddConversationOption(conversation, "I've no time to chat right now.")
		StartConversation(conversation, NPC, Spawn, "Don't be shy! Come closer, m'dear, and I'd be happy to answer any questions you have about collections or harvesting!")
	end

	if convo==88 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra001.mp3", "", "", 1784643111, 2793677851, Spawn)
		AddConversationOption(conversation, "I'd like to learn about collections.", "dlg_88_1")
		AddConversationOption(conversation, "I'd like to learn about harvesting.")
		AddConversationOption(conversation, "I've no time to chat right now.")
		StartConversation(conversation, NPC, Spawn, "Don't be shy! Come closer, m'dear, and I'd be happy to answer any questions you have about collections or harvesting!")
	end

end

function dlg_73_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra002.mp3", "", "", 1395864315, 2817792447, Spawn)
	AddConversationOption(conversation, "What happens next?", "dlg_73_2")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function dlg_73_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra003.mp3", "", "", 3674289603, 3031375930, Spawn)
	AddConversationOption(conversation, "How do I complete the collection?", "dlg_73_3")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function dlg_73_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra004.mp3", "", "", 863765125, 2737196345, Spawn)
	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "dlg_73_4")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

function dlg_73_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are harvestables used for?", "dlg_73_5")
	StartConversation(conversation, NPC, Spawn, "Harvestables come in five forms, each tied to its own respective skill. These skills can be seen by opening your Skills window by pressing the P key, clicking on the Skills tab and selecting your General skills. Rocks increase mining, logs increase foresting, dens increase trapping, fish increase fishing, and plants increase gathering.")
end

function dlg_73_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra006.mp3", "", "", 237784044, 654858074, Spawn)
	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "dlg_73_6")
	StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills.  They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions.  Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function dlg_73_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra007.mp3", "", "", 3552014978, 1436740562, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections now.", "dlg_73_7")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area.  If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end

function dlg_74_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are harvestables used for?")
	StartConversation(conversation, NPC, Spawn, "Harvestables come in five forms, each tied to its own respective skill. These skills can be seen by opening your Skills window by pressing the P key, clicking on the Skills tab and selecting your General skills. Rocks increase mining, logs increase foresting, dens increase trapping, fish increase fishing, and plants increase gathering.")
end

function dlg_74_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra006.mp3", "", "", 237784044, 654858074, Spawn)
	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "dlg_74_3")
	StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills.  They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions.  Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function dlg_74_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra007.mp3", "", "", 3552014978, 1436740562, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections now.", "dlg_74_4")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area.  If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end

function dlg_74_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra002.mp3", "", "", 1395864315, 2817792447, Spawn)
	AddConversationOption(conversation, "What happens next?", "dlg_74_5")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function dlg_74_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra003.mp3", "", "", 3674289603, 3031375930, Spawn)
	AddConversationOption(conversation, "How do I complete the collection?", "dlg_74_6")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function dlg_74_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra004.mp3", "", "", 863765125, 2737196345, Spawn)
	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "dlg_74_7")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

function dlg_88_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are harvestables used for?")
	StartConversation(conversation, NPC, Spawn, "Harvestables come in five forms, each tied to its own respective skill. These skills can be seen by opening your Skills window by pressing the P key, clicking on the Skills tab and selecting your General skills. Rocks increase mining, logs increase foresting, dens increase trapping, fish increase fishing, and plants increase gathering.")
end

function dlg_88_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra006.mp3", "", "", 237784044, 654858074, Spawn)
	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "dlg_88_3")
	StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills.  They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions.  Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function dlg_88_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra007.mp3", "", "", 3552014978, 1436740562, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections now.", "dlg_88_4")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area.  If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end

function dlg_88_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra002.mp3", "", "", 1395864315, 2817792447, Spawn)
	AddConversationOption(conversation, "What happens next?", "dlg_88_5")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function dlg_88_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra003.mp3", "", "", 3674289603, 3031375930, Spawn)
	AddConversationOption(conversation, "How do I complete the collection?", "dlg_88_6")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function dlg_88_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/tutorials/qst_eivarra/qst_eivarra004.mp3", "", "", 863765125, 2737196345, Spawn)
	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "dlg_88_7")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/trainers/intro_collection_harvesting_collect_df57b24b.mp3", "I'm hurrying!  Don't rush me.", "", 3622690165, 1121532609, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_eivarra_laceleaf/_exp03/exp03_cty_kelethin/trainers/intro_collection_harvesting_collect_5c4e2fe9.mp3", "None of the rest of you touch these collectibles! They're mine!", "", 2808230529, 2769568795, Spawn)
--]]

