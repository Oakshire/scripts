--[[
	Script Name	: SpawnScripts/FrostfangSea/DagbartFalkren.lua
	Script Purpose	: Dagbart Falkren <Collector>
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1046.mp3", "", "hello", 0, 0, Spawn)
	if HasCollectionsToHandIn(Spawn) then
		AddConversationOption(conversation, "I have a collection for you.", "TurnInColls")
	end
        AddConversationOption(conversation, "What collections?", "whatcollections")
	AddConversationOption(conversation, "Goodbye!")
	StartConversation(conversation, NPC, Spawn, "What are you looking at? Stay away from me, and keep your hands off my collections, you scumbag!")
end

function TurnInColls(NPC, Spawn)
	HandInCollections(Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right, thanks!")
	StartConversation(conversation, NPC, Spawn, "This is a magnificent find! Here, take this for all your hard work.")
end

function whatcollections(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()

AddConversationOption(conversation, "I'll just be on my way.")
StartConversation(conversation, NPC, Spawn, "What collections?  What do you mean, ''What collections?'' My collections, you fool! If you think you're going to get them from me, you're wrong!   But if you have something to donate, then maybe we can talk.")
end
