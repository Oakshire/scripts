--[[
	Script Name	: SpawnScripts/FrostfangSea/FlibbitQuagmarr.lua
	Script Purpose	: Flibbit Quagmarr 
	Script Author	: theFoof
	Script Date	: 2013.05.21
	Script Notes	:
--]]
local IcemanesCometh = 18

local UnbearableProblem = 25

local LostFroglok = 26

local AbsentEffigy = 27

local BarteringCrystals = 28

local Pelted = 29

local GreatShelf = 30

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
    ProvidesQuest(NPC, UnbearableProblem)
	ProvidesQuest(NPC, LostFroglok)
	ProvidesQuest(NPC, AbsentEffigy)
	ProvidesQuest(NPC, BarteringCrystals)
	ProvidesQuest(NPC, Pelted)
	ProvidesQuest(NPC, GreatShelf)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if not HasCompletedQuest(Spawn, GreatShelf) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    if HasCompletedQuest(Spawn, UnbearableProblem) == false and HasQuest(Spawn, UnbearableProblem) == false then
	    PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_001.mp3", "", "", 3105180851, 2650595838, Spawn)
	    AddConversationOption(conversation, "Indeed I have. I am " .. GetName(Spawn) .. ".", "Quest1Chat_1")
	    AddConversationOption(conversation, "No, I am not a disciple of Marr. My name's " .. GetName(Spawn) .. ".", "Quest1Chat_2")
	    StartConversation(conversation, NPC, Spawn, "Good day, traveler. I am Flibbit Quagmarr and this is my son, Splorpy. Have you come to Erollis Isle to pay tribute to the Marrs?")
	elseif GetQuestStep(Spawn, UnbearableProblem) == 1 then
	    PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_002.mp3", "", "", 524114756, 2569165165, Spawn)
		AddConversationOption(conversation, "No, I cannot say that the path is safe. Where can I find the blizzard grizzlies?", "Quest1Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you cleared a safe path for the pilgrims?")
	elseif GetQuestStep(Spawn, UnbearableProblem) == 2 then
	    PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_003.mp3", "", "", 2615004659, 1301088947, Spawn)
		AddConversationOption(conversation, "I have killed many grizzlies and have made the path to New Halas much safer for the pilgrims.", "Quest1Chat_7")
		StartConversation(conversation, NPC, Spawn, "Have you killed the pilgrim-eating grizzlies, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, UnbearableProblem) and HasCompletedQuest(Spawn, LostFroglok) == false and HasQuest(Spawn, LostFroglok) == false then
	    Quest2Chat_2(NPC, Spawn)
	elseif HasQuest(Spawn, LostFroglok) and GetQuestStep(Spawn, LostFroglok) < 3 then
	    PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_005.mp3", "", "", 1521546792, 2428780589, Spawn)
		AddConversationOption(conversation, "Not yet, I am still gathering information.", "Quest2Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you found my son?")
	elseif GetQuestStep(Spawn, LostFroglok) == 3 then
	    PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_006.mp3", "", "", 2660653144, 1586161380, Spawn)
		AddConversationOption(conversation, "I found him southwest of here. He said he was scared off by a large man with a beard.", "Quest2Chat_7")
		StartConversation(conversation, NPC, Spawn, "Splorpy! You have returned my son to me, " .. GetName(Spawn) .. "!")
	elseif HasCompletedQuest(Spawn, LostFroglok) and not HasCompletedQuest(Spawn, AbsentEffigy) and not HasQuest(Spawn, AbsentEffigy) then
	    PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_007.mp3", "", "", 226527743, 1076016282, Spawn)
		AddConversationOption(conversation, "I'm finding enough work to keep myself busy for a little while. How are you and Splorpy faring?", "Quest3Chat_2")
		StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. ", how are you finding Gwenevyn's Cove?")
	elseif GetQuestStep(Spawn, AbsentEffigy) == 1 then
	    AddConversationOption(conversation, "Not yet. Where do you suppose I should look?", "Quest3Chat_4")
		StartConversation(conversation, "Have you had any luck finding the Effigy of Mithaniel?")
	elseif GetQuestStep(Spawn, AbsentEffigy) == 2 then
		PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_009.mp3", "", "", 3889781371, 2180434460, Spawn)
		AddConversationOption(conversation, "I do! I found it in a frigid whirlstorm, just as you suspected.", "Quest3Chat_5")
		StartConversation(conversation, NPC, Spawn, "I don't suppose you have any word about the Effigy of Mithaniel?")
	elseif HasCompletedQuest(Spawn, AbsentEffigy) and not HasCompletedQuest(Spawn, BarteringCrystals) and not HasQuest(Spawn, BarteringCrystals) then
		Quest4Chat_2(NPC, Spawn)
	elseif GetQuestStep(Spawn, BarteringCrystals) == 1 then
		AddConversationOption(conversation, "No, I haven't. Where can I find them again?", "Quest4Chat_7")
		StartConversation(conversation, NPC, Spawn, "Have you found any of the strange ice crystals?")
	elseif GetQuestStep(Spawn, BarteringCrystals) == 2 then
		PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_012.mp3", "", "", 664563942, 2094087421, Spawn)
		AddConversationOption(conversation, "I did find some of the strange ice crystals. Oddly enough, they do not melt from heat and while I am no alchemist, I think it means they are not made of ice.", "Quest4Chat_8")
		StartConversation(conversation, NPC, Spawn, "Have you had any luck finding the ice crystals?")
	elseif HasCompletedQuest(Spawn, BarteringCrystals) and not HasCompletedQuest(Spawn, Pelted) and not HasQuest(Spawn, Pelted) then
		PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_013.mp3", "", "", 1522544075, 2501686362, Spawn)
		AddConversationOption(conversation, "Hello, Flibbit.", "Quest5Chat_1")
		StartConversation(conversation, NPC, Spawn, "Greetings, " .. GetName(Spawn) .. ", hero of Gwenevyn's Cove!")
	elseif GetQuestStep(Spawn, Pelted) == 1 then
		AddConversationOption(conversation, "I have not yet collected all of the pelts. Where can I find the cubs?", "Quest5Chat_5")
		StartConversation(conversation, NPC, Spawn, "Do you have the icemane cub pelts?")
	elseif GetQuestStep(Spawn, Pelted) == 2 then
		PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_015.mp3", "", "", 2399568158, 1310414572, Spawn)
	    AddConversationOption(conversation, "I have collected the icemane cub pelts that you requested.", "Quest5Chat_6")
	    StartConversation(conversation, NPC, Spawn, "Do you have any news for me?")
	elseif HasCompletedQuest(Spawn, Pelted) and not HasCompletedQuest(Spawn, IcemanesCometh) then
		PlayFlavor(NPC, "", "Our fellow pilgrim, Verien Skysigh, has been asking for your attention. I think he requires your aid, brave one.", "", 0, 0, Spawn)
	elseif HasCompletedQuest(Spawn, Pelted) and HasCompletedQuest(Spawn, IcemanesCometh) and not HasCompletedQuest(Spawn, GreatShelf) and not HasQuest(Spawn, GreatShelf) then
		PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_016.mp3", "", "", 3282158766, 1454461175, Spawn)
		AddConversationOption(conversation, "That's great news, Flibbit!", "Quest6Chat_1")
		StartConversation(conversation, NPC, Spawn, "The time has finally come for my son Splorpy and I to leave Gwenevyn's Cove and continue on our pilgrimage to New Halas.")
	elseif GetQuestStep(Spawn, GreatShelf) == 1 then
		Quest6Chat_6(NPC, Spawn)
	elseif GetQuestStep(Spawn, GreatShelf) == 2 then
		PlayFlavor(NPC, "", "I will meet you at the Great Shelf!", "", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_019.mp3", "", "", 3157384930, 341257107, Spawn)
	AddConversationOption(conversation, "What is wrong with the path?", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Ah! Your name we have heard, " .. GetName(Spawn) .."! News of your exploits has traveled far. My son and I have made the pilgrimage to Erollis Isle and we plan on finding a place to live in New Halas. Unfortunately, we cannot continue on to New Halas until the path is made safe once again.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_020.mp3", "", "", 3443691770, 4044378382, Spawn)
	AddConversationOption(conversation, "My reasons are my own, but I will help any pilgrims in need.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Then what is your purpose here?")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_021.mp3", "", "", 2518687003, 3994330850, Spawn)
	AddConversationOption(conversation, "What would you have me do?", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "Many pilgrims that have tried to make their way to New Halas have sadly fallen along the way. The grizzlies are eating their remains. Though it may be the natural way of life, it has accustomed the bears to the taste of the pilgrims' flesh, making the bears very dangerous to travelers in this area.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_022.mp3", "", "", 2370229113, 461588246, Spawn)
	AddConversationOption(conversation, "I understand. I shall clear a safe path for the pilgrims and return to you once I have finished.", "OfferUnbearableProblem")
	AddConversationOption(conversation, "What's the Cairn of the Huntress?", "Quest1Chat_5")
	AddConversationOption(conversation, "I'm not going to fight bears!")
	StartConversation(conversation, NPC, Spawn, "Please clear out the blizzard grizzlies around Gwenevyn's Cove so that the pilgrims traveling through this area are not hunted by the grizzly bears. It is unfortunate that the grizzlies must be killed, but the pilgrimage to the Cairn of The Huntress is of more importance.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_062.mp3", "", "", 2223435732, 36629853, Spawn)
	AddConversationOption(conversation, "No wonder it is so important that I clear a safe path for the pilgrims.", "OfferUnbearableProblem")
	AddConversationOption(conversation, "Forget it.  I'm not going to fight bears!")
	StartConversation(conversation, NPC, Spawn, "The Cairn of The Huntress is the temple erected by Mithaniel Marr, god of valor, in honor of his fallen sister, Erollisi Marr, The Loving Huntress.  It awaits us within the city of New Halas!")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I shall continue to hunt the pilgrim-eating grizzlies.")
	StartConversation(conversation, NPC, Spawn, "They hunt and roam southwest of here.")
end

function Quest1Chat_7(NPC, Spawn)
    SetStepComplete(Spawn, UnbearableProblem, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_025.mp3", "", "", 2597773991, 3326444156, Spawn)
	AddConversationOption(conversation, "Thank you, Flibbit.", "Quest2Chat_1")
	StartConversation(conversation, NPC, Spawn, "I am glad to hear it! Now my son and I can prepare to break camp and continue on our pilgrimage. I cannot spare much coin, so please take one of the helms that I have been mending.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_063.mp3", "", "", 1125643024, 3387202205, Spawn)
	AddConversationOption(conversation, "What is it?  Who?", "Quest2Chat_2")
	AddConversationOption(conversation, "I'll leave you alone now.")
	StartConversation(conversation, NPC, Spawn, "Wait!  Where did he go?!")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_004.mp3", "", "", 2980400722, 2578144339, Spawn)
	AddConversationOption(conversation, "Someone has taken Splorpy?", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. "! Help me! My son has been taken!")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_026.mp3", "", "", 2928995229, 3951798794, Spawn)
	AddConversationOption(conversation, "What can I do to help?", "Quest2Chat_4")
	AddConversationOption(conversation, "Good luck finding him.")
	StartConversation(conversation, NPC, Spawn, "I cannot find him! I left our tent to go and collect some more wood for the fire, as it was my turn to do so, and now he is gone!")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_027.mp3", "", "", 3820799248, 3563722850, Spawn)
	AddConversationOption(conversation, "Is there anyone I can ask at Gwenevyn's Cove that might know where Splorpy has gone?", "Quest2Chat_5")
	StartConversation(conversation, NPC, Spawn, "You must find him! Oh, if he has been eaten by a blizzard grizzly I will never forgive myself!")
end

function Quest2Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_028.mp3", "", "", 968886797, 3430688549, Spawn)
	AddConversationOption(conversation, "I will ask Sigbrith if she has seen Splorpy and then I will go out and look for him.", "OfferLostFroglok")
	StartConversation(conversation, NPC, Spawn, "You could ask Sigbrith MacInnes. She is friendly towards us pilgrims. Perhaps she saw something while I was getting firewood.")
end

function Quest2Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_029.mp3", "", "", 1372379832, 3108068275, Spawn)
	AddConversationOption(conversation, "I will return once I have found Splorpy.")
	StartConversation(conversation, NPC, Spawn, "Please hurry!")
end

function Quest2Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_031.mp3", "", "", 1539671456, 2276621725, Spawn)
	AddConversationOption(conversation, "He said it was not a barbarian.", "Quest2Chat_8")
	StartConversation(conversation, NPC, Spawn, "A barbarian?")
end

function Quest2Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_032.mp3", "", "", 1459827383, 2517890106, Spawn)
	AddConversationOption(conversation, "I am planning on ending up there myself.", "Quest2Chat_9")
	StartConversation(conversation, NPC, Spawn, "How odd. I wonder what it was he saw. The wilderness is no place for children! I will be glad when we have safely arrived in New Halas.")
end

function Quest2Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_033.mp3", "", "", 2748996768, 1461112434, Spawn)
	AddConversationOption(conversation, "I could not stand by and do nothing.", "Quest2Chat_10")
	StartConversation(conversation, NPC, Spawn, "Perhaps we could go together when the time comes. I am but a poor pilgrim and could use your fighting skill. You never know what other dangers are out there on the ice shelf. Anyway, I thank you for finding my son and returning him to me safe and sound.")
end

function Quest2Chat_10(NPC, Spawn)
    SetStepComplete(Spawn, LostFroglok, 3)
	Despawn(GetSpawn(Spawn, 4701835))
	AddSpawnAccess(GetSpawnByLocationID(GetZone(NPC), 5217), Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_034.mp3", "", "", 54813479, 1970991654, Spawn)
	AddConversationOption(conversation, "Thank you, Flibbit.")
	StartConversation(conversation, NPC, Spawn, "Thank you, " .. GetName(Spawn) .. ". I know it isn't much, but I have some coin to give. Please take them as a token of my thanks.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_035.mp3", "", "", 3761564927, 3120365260, Spawn)
	AddConversationOption(conversation, "What do you need help with?", "Quest3Chat_3")
	AddConversationOption(conversation, "I'm a bit busy right now, perhaps later.")
	StartConversation(conversation, NPC, Spawn, "We are doing very well. I have been taking stock of our supplies, and while they have been depleted during our long stay in Gwenevyn's Cove, I hope that we can restock soon and be on our way. Say, can you spare a moment to help us?")
end 

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_036.mp3", "", "", 357106938, 4264008220, Spawn)
	AddConversationOption(conversation, "I could keep an eye out for it.", "OfferAbsentEffigy")
	StartConversation(conversation, NPC, Spawn, "Splorpy had a little metal Effigy of Mithaniel that he always carried in his pocket. Unfortunately he has lost it somewhere on the ice shelf.")
end

function Quest3Chat_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I shall look for it amongst the frigid whirlstorms, then.")
	StartConversation(conversation, "I figure it's probably been picked up in an eddy of one of those frigid whirlstorms you see ripping about across the ice shelf.")
end

function Quest3Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, AbsentEffigy, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_039.mp3", "", "", 3267108505, 3934101762, Spawn)
	AddConversationOption(conversation, "I am glad to be able to return it to Splorpy.", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "You are good to my son and me. I shall not forget your kindness, " .. GetName(Spawn) .. ".")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_064.mp3", "", "", 1699103453, 3563523529, Spawn)
	AddConversationOption(conversation, "Yes, I am.  Do you need anything else for your pilgrimage?", "Quest4Chat_3")
	AddConversationOption(conversation, "No, I am not.")
	StartConversation(conversation, NPC, Spawn, "Are you free to help us, further?")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_010.mp3", "", "", 3573239731, 1050060111, Spawn)
	AddConversationOption(conversation, "Hello, Flibbit. Do you need anything else for your pilgrimage?", "Quest4Chat_3")
	StartConversation(conversation, NPC, Spawn, "Good day, brave " .. GetName(Spawn) .. ".")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_040.mp3", "", "", 893544611, 973431140, Spawn)
	AddConversationOption(conversation, "Is there anything I can help with?", "Quest4Chat_4")
	AddConversationOption(conversation, "Me too!  I really must be going.")
	StartConversation(conversation, NPC, Spawn, "Actually I do. There are still a few things I must do before Splorpy and I can continue on our pilgrimage.")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_041.mp3", "", "", 3728599078, 2071611089, Spawn)
	AddConversationOption(conversation, "I could head out that way and collect them for you.", "Quest4Chat_5")
	StartConversation(conversation, NPC, Spawn, "Well, I saw some mercenaries carrying a strange ice crystal. When I inquired where they got it from, I was informed that they grow on the Icemane Plains. Unfortunately, I am no warrior so I cannot venture out there to collect them myself.")
end

function Quest4Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_042.mp3", "", "", 641871546, 1699897380, Spawn)
	AddConversationOption(conversation, "What do you hope to do with them?", "Quest4Chat_6")
	StartConversation(conversation, NPC, Spawn, "If you would be so kind, I would greatly appreciate it.")
end

function Quest4Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_043.mp3", "", "", 972157207, 757922985, Spawn)
	AddConversationOption(conversation, "I will look for these strange ice crystals upon the Icemane Plains.", "OfferBarteringCrystals")
	AddConversationOption(conversation, "On second thought, this is not a task I want to do.")
	StartConversation(conversation, NPC, Spawn, "Assuming they have no alchemical properties, I shall try to use them to trade for goods, room and board in New Halas. I hope that it will give us a better start there.")
end

function Quest4Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I shall continue my search for the ice crystals.")
	StartConversation(conversation, NPC, Spawn, "You can find the crystals south of here, on the Icemane Plains.")
end

function Quest4Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_046.mp3", "", "", 1845183249, 3762123225, Spawn)
	AddConversationOption(conversation, "Good luck with your experiments.", "Quest4Chat_9")
	StartConversation(conversation, NPC, Spawn, "That is odd indeed. I shall have to study these further. Unfortunately, my field kit is not up to this level of work, but perhaps I can discover the most basic properties of these crystals.")
end

function Quest4Chat_9(NPC, Spawn)
	SetStepComplete(Spawn, BarteringCrystals, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_047.mp3", "", "", 235665494, 154066582, Spawn)
	AddConversationOption(conversation, "It was no problem for me to collect the crystals.", "Quest5Chat_1")
	StartConversation(conversation, NPC, Spawn, "Thank you, " .. GetName(Spawn) .. ". Please accept this as a token of my gratitude.")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_048.mp3", "", "", 146466973, 1233162393, Spawn)
	AddConversationOption(conversation, "And what is that?", "Quest5Chat_2")
	AddConversationOption(conversation, "Unfortunately, I am too busy to help you, right now.")
	StartConversation(conversation, NPC, Spawn, "I only have one final task to complete before Splorpy and I can continue on our pilgrimage.")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_049.mp3", "", "", 1000986096, 336825003, Spawn)
	AddConversationOption(conversation, "What do you need to repair it?", "Quest5Chat_3")
	StartConversation(conversation, NPC, Spawn, "Splorpy’s jacket has become torn. He cannot go across the ice shelf with a hole in his jacket, and so we are delayed until I can repair it.")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_050.mp3", "", "", 2187218830, 3343226771, Spawn)
	AddConversationOption(conversation, "I wish you would have told me this before; I could have gotten you pelts while I was collecting the ice crystals.", "Quest5Chat_4")
	StartConversation(conversation, NPC, Spawn, "I need the pelts from icemane cubs. Their fur is soft and the leather will be supple enough to make a coat jacket small enough for Splorpy.")
end

function Quest5Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_051.mp3", "", "", 1105807509, 509218310, Spawn)
	AddConversationOption(conversation, "I shall collect the icemane cub pelts so that you may repair Splorpy's jacket.", "OfferPelted")
	AddConversationOption(conversation, "Maybe I can help you later.")
	StartConversation(conversation, NPC, Spawn, "I do apologize, had I discovered the tear earlier I would have asked you then.")
end

function Quest5Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will return with the pelts you requested.")
	StartConversation(conversation, NPC, Spawn, "They are south of here, on the Icemane Plains.")
end

function Quest5Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_054.mp3", "", "", 3723222510, 1362601367, Spawn)
	AddConversationOption(conversation, "Thank you, Flibbit.", "Quest5Chat_7")
	StartConversation(conversation, NPC, Spawn, "Thank you, " .. GetName(Spawn) .. "! Now I can finish Splorpy's jacket as well as something else I have been working on. I have salvaged some accessories, perhaps you can find a use for one of them?")
end

function Quest5Chat_7(NPC, Spawn)
	SetStepComplete(Spawn, Pelted, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_055.mp3", "", "", 160665426, 3368306133, Spawn)
	AddConversationOption(conversation, "I am glad that I was able to help you and your son on your pilgrimage.")
	StartConversation(conversation, NPC, Spawn, "You deserve so much more! This trinket was the least I could do to repay you for all the help you have given my son and me.")
end

function Quest6Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_056.mp3", "", "", 1415595156, 2895327505, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "Quest6Chat_2")
	StartConversation(conversation, NPC, Spawn, "It is great news indeed. I would ask for your help one last time, " .. GetName(Spawn) .. ".")
end

function Quest6Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_057.mp3", "", "", 3437714001, 1568066083, Spawn)
	AddConversationOption(conversation, "Why would you split up with your son?", "Quest6Chat_4")
	AddConversationOption(conversation, "Wait, where is the Great Shelf?", "Quest6Chat_3")
	StartConversation(conversation, NPC, Spawn, "I need you to protect my son, Splorpy. I am no fighter and the ice shelf is a dangerous place. If you would escort my son to the next stop along the pilgrimage, the Great Shelf, I would be most appreciative.")
end

function Quest6Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_065.mp3", "", "", 4039927754, 4221565751, Spawn)
	AddConversationOption(conversation, "Thanks for the directions. Why would you split up with your son?", "Quest6Chat_4")
	StartConversation(conversation, NPC, Spawn, "The Great Shelf is west of here, across the Icemane Planes. There is a small cave full of other pilgrims, its entrance is marked with small torch beacons.")
end

function Quest6Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_058.mp3", "", "", 749342367, 3777170220, Spawn)
	AddConversationOption(conversation, "Okay, I will take little Splorpy to the Great Shelf.", "OfferGreatShelf")
	AddConversationOption(conversation, "Oh, no!  I am not going to be responsible for this little guy.")
	StartConversation(conversation, NPC, Spawn, "I know that he will be safer with you. You have the experience, the skills and the knowledge necessary to escort him safely to the Great Shelf.")
end

function Quest6Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I am. Is Splorpy ready to go?", "Quest6Chat_6")
	StartConversation(conversation, NPC, Spawn, "Are you ready, " .. GetName(Spawn) .. "?")
end

function Quest6Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "See you there!", "Quest6Chat_7")
	StartConversation(conversation, NPC, Spawn, "He is. Take care, I shall see you both at the Great Shelf!")
end

function Quest6Chat_7(NPC, Spawn)
	SetStepComplete(Spawn, GreatShelf, 1)
	RemoveSpawnAccess(GetSpawnByLocationID(GetZone(Spawn), 5217), Spawn)
	RemoveSpawnAccess(GetSpawnByLocationID(GetZone(Spawn), 5221), Spawn)
	local pet = SpawnMob(GetZone(Spawn), 4701835, 0, 70.45, 28.55, -347.46, 84)
	SetTempVariable(Spawn, "splorp", pet)
	SetFollowTarget(pet, Spawn)
	ToggleFollow(pet)
end

function OfferAbsentEffigy(NPC, Spawn)
    OfferQuest(Spawn, AbsentEffigy)
end

function OfferUnbearableProblem(NPC, Spawn)
    OfferQuest(NPC, Spawn, UnbearableProblem)
end

function OfferLostFroglok(NPC, Spawn)
    OfferQuest(NPC, Spawn, LostFroglok)
end

function OfferAbsentEffigy(NPC, Spawn)
	OfferQuest(NPC, Spawn, AbsentEffigy)
end

function OfferBarteringCrystals(NPC, Spawn)
	OfferQuest(NPC, Spawn, BarteringCrystals)
end

function OfferPelted(NPC, Spawn)
	OfferQuest(NPC, Spawn, Pelted)
end

function OfferGreatShelf(NPC, Spawn)
	OfferQuest(NPC, Spawn, GreatShelf)
end