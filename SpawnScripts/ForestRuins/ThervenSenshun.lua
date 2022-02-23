--[[
	Script Name	: SpawnScripts/ForestRuins/ThervenSenshun.lua
	Script Purpose	: Therven Senshun 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0)
	AddConversationOption(conversation, "What do you need?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Hello there! Have you got time to lend a hand?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Interesting. What did you need from me?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Well, I'm trying some new leather tanning methods and in my work I've found that some of my techniques create an amazingly soft product when used on turtle shells. Amazing, I know! I'm not sure what use it may have, but I'd like to perfect the process anyway.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, I'll do it.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Well, this process is delicate and requires a lot of time. That means that I'm unable to hunt the turtles around here. If you could hunt them for me I would be grateful.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Excellent! If you could get me six leathershell snapper shells and six stoneshell snapper shells I think that would be enough to finalize this process. You can find them in the pond northwest of here.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay!")
	StartConversation(conversation, NPC, Spawn, "Bring them back as soon as you get them!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "This stuff is much harder to work with than I anticipated.", "", 1689589577, 4560189)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0)
--]]

