--[[
    Script Name    : SpawnScripts/Commonlands/KarmentheSwindler.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 06:05:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Hey you! I got something you might be interested in...", "", 1689589577, 4560189, Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What are you selling?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Hello there! What can I do for you?")
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is it used for?", "Option2")
		AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "This key... I know, I know. It doesn't look like much, but really it's an exact copy of the real thing.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Perfect, I'm going to need one of those..", "Option3")
		AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "The original was used to open the grate to sewer line number five. You can find the entrance in one of the towers out along the wall in the Commonlands.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Good.")
	StartConversation(conversation, NPC, Spawn, "Well then, I'd be happy to sell you one.")
end


function respawn(NPC)
	spawn(NPC)
end