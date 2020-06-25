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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1042.mp3", "", "hello", 0, 0, Spawn)
	if HasCollectionsToHandIn(Spawn) then
		AddConversationOption(conversation, "I have a collection for you.", "TurnInColls")
	end
	AddConversationOption(conversation, "I don't have any at the moment.")
	StartConversation(conversation, NPC, Spawn, "Hello there!  If you have any collections that you've completed, I can take them off your hands and reward you for your time.  I love collecting things!")
end

function TurnInColls(NPC, Spawn)
	HandInCollections(Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right, thanks!")
	StartConversation(conversation, NPC, Spawn, "This is a magnificent find! Here, take this for all your hard work.")
end