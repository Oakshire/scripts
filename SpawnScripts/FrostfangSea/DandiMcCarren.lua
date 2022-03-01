--[[
	Script Name	: SpawnScripts/FrostfangSea/DandiMcCarren.lua
	Script Purpose	: Dandi McCarren 
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
	if HasQuest(Spawn, TrustIssues) and not QuestStepIsComplete(Spawn, TrustIssues, 2) then
		PlayFlavor(NPC, "dandi_mccarren/halas/new_halas_guard_house/dandi_mccarren001.mp3", "", "", 4065222914, 2283262367, Spawn)
		AddConversationOption(conversation, "I have a few questions.", "Quest1Chat_1")
		AddConversationOption(conversation, "Can you tell me what you're doing here?", "Quest1Chat_6")
		AddConversationOption(conversation, "This isn't worth it.  Nevermind.")
		StartConversation(conversation, NPC, Spawn, "I've got a lot of work to do.  Can you make this quick?")
	elseif HasQuest(Spawn, TrustIssues) then
		PlayFlavor(NPC, "", "You're still here?", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1009.mp3", "I can hammer metal faster than you can blink.", "", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dandi_mccarren/halas/new_halas_guard_house/dandi_mccarren002.mp3", "", "", 2997702054, 4169410593, Spawn)
	AddConversationOption(conversation, "Why did you come to Erollis? ", "Quest1Chat_2")
	AddConversationOption(conversation, "Why don't you leave?", "Quest1Chat_2")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "It'll be faster to answer your questions than to shoo you away, I'm sure.  What do you want?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dandi_mccarren/halas/new_halas_guard_house/dandi_mccarren004.mp3", "", "", 2246027108, 3016893607, Spawn)
	AddConversationOption(conversation, "I do know what that's like.", "Quest1Chat_3")
	AddConversationOption(conversation, "I don't know what that's like.", "Quest1Chat_3")
	AddConversationOption(conversation, "I'll ask the questions here!", "Quest1Chat_8")
	StartConversation(conversation, NPC, Spawn, "Let me put it this way:  do you know what it's like to be displaced from your homeland?  Have you felt like you don't belong?")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dandi_mccarren/halas/new_halas_guard_house/dandi_mccarren006.mp3", "", "", 234929252, 3290173917, Spawn)
	AddConversationOption(conversation, "True, there's no city quite like New Halas.", "Quest1Chat_4")
	AddConversationOption(conversation, "So this is where you want to settle down?", "Quest1Chat_4")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "Well that's what it was like, for me, before Erollis was discovered.  I'd done my fair share of traveling and called a few different cities 'home', but it never sat right.  It never felt like home.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dandi_mccarren/halas/new_halas_guard_house/dandi_mccarren007.mp3", "", "", 2015097155, 2674343560, Spawn)
	AddConversationOption(conversation, "What do you like about Erollis?", "Quest1Chat_5")
	AddConversationOption(conversation, "What books did you read?", "Quest1Chat_7")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "From the stories passed down by my Nana, and from the books I've read, this town is about as close to Old Halas as we're likely to get.  Life here is what it was like to be a barbarian five hundred years ago.")
end

function Quest1Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, TrustIssues, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dandi_mccarren/halas/new_halas_guard_house/dandi_mccarren009.mp3", "", "", 2546556899, 2243252862, Spawn)
	AddConversationOption(conversation, "Yes, thank you.")
	AddConversationOption(conversation, "That's what I needed to know.")
	StartConversation(conversation, NPC, Spawn, "I like the crunch of snow under my feet.  I like the sturdy stone structures.  I like being close to my community.  I like sitting around the fire listening to the wind whipping outside.  I like tartan kilts and hard scotch.  Does that answer your question?")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Um...I'm taking a poll.", "Quest1Chat_1")
	AddConversationOption(conversation, "There's no need to get upset!", "Quest1Chat_1")
	AddConversationOption(conversation, "I was just leaving.")
	StartConversation(conversation, NPC, Spawn, "What am I doing here?  What are YOU doing here?")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What do you like about Erollis?", "Quest1Chat_5")
	AddConversationOption(conversation, "Whatever, I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "A collection of quaint and curious volumes of forgotten lore.  I doubt you've heard of them.")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I was just leaving.")
	StartConversation(conversation, NPC, Spawn, "Bah.  Get out of my sight!")
end
