--[[
	Script Name	: SpawnScripts/FrostfangSea/PretchonIronstein.lua
	Script Purpose	: Pretchon Ironstein 
	Script Author	: theFoof
	Script Date	: 2013.08.19
	Script Notes	: 
--]]

local TrustIssues = 85

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, TrustIssues) and not QuestStepIsComplete(Spawn, TrustIssues, 4) then
		PlayFlavor(NPC, "pretchon_ironstein/halas/new_halas_guard_house/pretchon_ironstein001.mp3", "", "", 1138921900, 154999598, Spawn)
		AddConversationOption(conversation, "I have a few questions.", "Quest1Chat_1")
		AddConversationOption(conversation, "Can you tell me what you're doing here?", "Quest1Chat_1")
		AddConversationOption(conversation, "Greetings, Pretch!", "Quest1Chat_5")
		AddConversationOption(conversation, "Maybe this wasn't such a good idea.  Goodbye.")
		StartConversation(conversation, NPC, Spawn, "Have we met before?  My friends call me Pretch, but ye can call me Pretchon Ironstein.")
	elseif HasQuest(Spawn, TrustIssues) then
		PlayFlavor(NPC, "", "Ye got yer answers.  What do ye want now?", "hello", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "May yer ore be rich, and yer stein be full.", "hello", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pretchon_ironstein/halas/new_halas_guard_house/pretchon_ironstein003.mp3", "", "", 3031154636, 3454544430, Spawn)
	AddConversationOption(conversation, "Why did you come to Erollis?", "Quest1Chat_2")
	AddConversationOption(conversation, "Why don't you leave?", "Quest1Chat_3")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "Sure, so long as ye make it quick.  What would ye like to know?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pretchon_ironstein/halas/new_halas_guard_house/pretchon_ironstein004.mp3", "", "", 2078038730, 2967258030, Spawn)
	AddConversationOption(conversation, "Ah, I see.  Well, why don't you leave?", "Quest1Chat_3")
	AddConversationOption(conversation, "This can only go downhill from here.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Seeing as how this floating rock is a chunk of my homeland, I've always been here.  Yer the newcomer, " .. GetName(Spawn) .. ".")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pretchon_ironstein/halas/new_halas_guard_house/pretchon_ironstein005.mp3", "", "", 2277034168, 2486010941, Spawn)
	AddConversationOption(conversation, "Can you explain that further?", "Quest1Chat_4")
	AddConversationOption(conversation, "Sorry for your misfortune.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Where would we go?  This is all that we have left of Velious, and now we're making the best of an awful situation.")
end

function Quest1Chat_4(NPC, Spawn)
	SetStepComplete(Spawn, TrustIssues, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pretchon_ironstein/halas/new_halas_guard_house/pretchon_ironstein006.mp3", "", "", 28333391, 3841310148, Spawn)
	AddConversationOption(conversation, "Good day and goodbye.")
	StartConversation(conversation, NPC, Spawn, "Look.  I intend to smash the Ry'Gorr, drink ale, and sail this floating isle until it sinks.  Good day.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pretchon_ironstein/halas/new_halas_guard_house/pretchon_ironstein002.mp3", "", "", 524764574, 2567502776, Spawn)
	AddConversationOption(conversation, "I have a few questions.", "Quest1Chat_1")
	AddConversationOption(conversation, "This can only go downhill from here.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Ah, yer a prankster, I see.  Well, I'll be calling ye Wolfmeat.  What can I do for ye, Wolfmeat?")
end