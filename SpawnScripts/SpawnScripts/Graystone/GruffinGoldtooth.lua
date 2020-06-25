--[[
	Script Name	: SpawnScripts/Graystone/GruffinGoldtooth.lua
	Script Purpose	: Gruffin Goldtooth 
	Script Author	: John Adams
	Script Date	: 2008.09.21
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

	PlayFlavor(NPC, "voiceover/english/gruffin_goldtooth/qey_village03/gruffingoldtooth001.mp3", "", "", 997482113, 2338709603, Spawn)
	AddConversationOption(conversation, "I'll leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hey there, young 'in.  Don't mind ole' Gruffin.  I'm just inspecting these here mineral veins.  This bedrock is going to be especially useful for building new homes for refugees and citizens alike.")
end