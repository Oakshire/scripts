--[[
	Script Name	: SpawnScripts/FrostfangSea/TorliBlackbow.lua
	Script Purpose	: Torli Blackbow 
	Script Author	: theFoof
	Script Date	: 2013.06.13
	Script Notes	: 
--]]

local SeekingEducation = 63

local NapEvigis = 64

function spawn(NPC)
	ProvidesQuest(NPC, NapEvigis)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if GetQuestStep(Spawn, SeekingEducation) == 1 then
	    PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_001.mp3", "", "", 3560007019, 2375962342, Spawn)
	    AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ".  I was sent by Thirin Veliumdelver.", "Quest1Chat_1")
    	StartConversation(conversation, NPC, Spawn, "Who have we here?")
	elseif GetQuestStep(Spawn, SeekingEducation) == 2 then
	    PlayFlavor(NPC, "", "Speak with Gerla Meltwater.  She is our wisest spellweaver.  You'll find her in Glacierbane's Vault, in New Halas.", "nod", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, SeekingEducation) == 3 then
		PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_008.mp3", "", "", 3421952794, 3873415326, Spawn)
		AddConversationOption(conversation, "She sent me back with this satchel for you.", "Quest1Chat_7")
		StartConversation(conversation, NPC, Spawn, "Ye return, " .. GetName(Spawn) .. "!  Tell me, what did Spellweaver Meltwater advise?")
	elseif HasCompletedQuest(Spawn, SeekingEducation) and not HasCompletedQuest(Spawn, NapEvigis) and not HasQuest(Spawn, NapEvigis) then
		Quest2Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, NapEvigis) == 1 then
		PlayFlavor(NPC, "", "Brell's blessings upon ye as ye face Evigis, brave one!", "agree", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, NapEvigis) == 2 then
		AddConversationOption(conversation, "I did. Evigis the Ancient slumbers, once more.", "Quest2Chat_4")
		StartConversation(conversation, NPC, Spawn, "Ye return and such a sight ye are!  Did you succeed, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, NapEvigis) then
		PlayFlavor(NPC, "", "My, look what drifted in with the snow!  Welcome back, brave one!", "hello", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_002.mp3", "", "", 1601353175, 2170594653, Spawn)
	AddConversationOption(conversation, "We found a large ice and velium elemental living below New Halas!", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Veliumdelver?  That stubborn stone's stationed at Cragged Spine.  Why would he send ye to me?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_003.mp3", "", "", 3538220054, 491792113, Spawn)
	AddConversationOption(conversation, "It killed Ordin Sleetfoot.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Are you certain, " .. GetName(Spawn) .. "?")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_004.mp3", "", "", 1850979310, 1092709933, Spawn)
	AddConversationOption(conversation, "We could go in and kill it.", "Quest1Chat_4")
	AddConversationOption(conversation, "Me too.", "Quest1Chat_5")
	StartConversation(conversation, NPC, Spawn, "Brell damn it!  If the ongoing struggle with the brutal Ry'Gorr wasn't enough.  I am glad ye told me.  I just wish I knew what to do.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_005.mp3", "", "", 2755216840, 3266695694, Spawn)
	AddConversationOption(conversation, "I know.", "Quest1Chat_5")
	AddConversationOption(conversation, "It was worth a shot.", "Quest1Chat_5")
	AddConversationOption(conversation, "Says you.", "Quest1Chat_5")
	StartConversation(conversation, NPC, Spawn, "Ha!  Violence is an answer, but not necessarily THE answer, brave one.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_006.mp3", "", "", 2649012761, 1864543312, Spawn)
	AddConversationOption(conversation, "Glacierbane's Vault?", "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "Speak with Gerla Meltwater.  She is our wisest spellweaver.  You'll find her in Glacierbane's Vault, in New Halas.")
end

function Quest1Chat_6(NPC, Spawn)
	SetStepComplete(Spawn, SeekingEducation, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_007.mp3", "", "", 1644016563, 4176143932, Spawn)
	AddConversationOption(conversation, "I'll speak with her.")
	StartConversation(conversation, NPC, Spawn, "It is our house of arcane knowledge and library to the Spear of the Spellweavers, our battle hardened mages.  She'll know what to do.")
end

function Quest1Chat_7(NPC, Spawn)
	if HasItem(Spawn, 7666) then
		RemoveItem(Spawn, 7666)
	end
	SetStepComplete(Spawn, SeekingEducation, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_009.mp3", "", "", 2780367632, 539709516, Spawn)
	AddConversationOption(conversation, "Thank you.", "Quest2Chat_1")
	StartConversation(conversation, NPC, Spawn, "Thank ye, and take this.  I got a feeling it will be useful.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_010.mp3", "", "", 1175740555, 3997329463, Spawn)
	AddConversationOption(conversation, "What do you mean?", "Quest2Chat_2")
	StartConversation(conversation, NPC, Spawn, "Once more it seems we must lean on you, brave one.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_011.mp3", "", "", 772395501, 910422100, Spawn)
	AddConversationOption(conversation, "What did it say?", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "Gerla's satchel contained a potion and a note.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_012.mp3", "", "", 1978800607, 2542267623, Spawn)
	AddConversationOption(conversation, "I can do that!", "OfferNapEvigis")
	AddConversationOption(conversation, "I am not going back down there.  No way!")
	StartConversation(conversation, NPC, Spawn, "We must induce slumber, once more!  Cast this spell upon the elemental, but first ye must be sure to tire it out.  Inflict upon it great harm thus making it susceptible to the potion's magick.")
end

function Quest2Chat_4(NPC, Spawn)
	SetStepComplete(Spawn, NapEvigis, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thank you.")
	AddConversationOption(conversation, "I did what I could.")
	AddConversationOption(conversation, "They had better!")
	StartConversation(conversation, NPC, Spawn, "That is a relief to one and all!  Ye've accomplished great things on our floating land.  No doubt songs of your success will be sung at The Ice Breaker this night!")
end

function OfferNapEvigis(NPC, Spawn)
	OfferQuest(NPC, Spawn, NapEvigis)
end