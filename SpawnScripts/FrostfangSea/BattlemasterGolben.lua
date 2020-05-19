--[[
	Script Name	: SpawnScripts/FrostfangSea/BattlemasterGolben.lua
	Script Purpose	: Battlemaster Golben <Guardians of Herga's Choke>
	Script Author	: theFoof
	Script Date	: 2013.06.01
	Script Notes	: 
--]]
local DemandSupplies = 45

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasQuest(Spawn, DemandSupplies) and GetQuestStep(Spawn, DemandSupplies) < 3 then
	    conversation = CreateConversation()

		PlayFlavor(NPC, "battlemaster_golben/halas/great_shelf/battlemaster_golben/battlemaster_golben001.mp3", "", "", 62773900, 972998516, Spawn)
	    AddConversationOption(conversation, "Yes, here are the supplies.", "Chat")
	    AddConversationOption(conversation, "I must be going.")
	    StartConversation(conversation, NPC, Spawn, "I've got no time and even less patience.  Did Rockbreaker send ye?")
	end
end

function Chat(NPC, Spawn)
	SetStepComplete(Spawn, DemandSupplies, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlemaster_golben/halas/great_shelf/battlemaster_golben/battlemaster_golben002.mp3", "", "", 2225057385, 3178461226, Spawn)
	AddConversationOption(conversation, "Glad to help.")
	StartConversation(conversation, NPC, Spawn, "Thank Brell!  Our blades are dull and our quivers empty.  These new weapons will allow us to keep the orcs at bay awhile longer.")
end