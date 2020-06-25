--[[
	Script Name	: SpawnScripts/FrostfangSea/OricaDeadshot.lua
	Script Purpose	: Orica Deadshot <Guardians of Herga's Choke>
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

		PlayFlavor(NPC, "orica_deadshot/halas/great_shelf/orica_deadshot/orica_deadshot001.mp3", "", "", 3100922751, 3756102154, Spawn)
	    AddConversationOption(conversation, "Yes.  Here you go.", "Chat")
	    AddConversationOption(conversation, "I must be going.  Goodbye.")
	    StartConversation(conversation, NPC, Spawn, "Are those the supplies we've been waiting for?")
	end
end

function Chat(NPC, Spawn)
	SetStepComplete(Spawn, DemandSupplies, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "orica_deadshot/halas/great_shelf/orica_deadshot/orica_deadshot002.mp3", "", "", 17831415, 4241254330, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Thank goodness!  We need these glimmer visors to reliably see the orcs that have been trying to flank us.  Yer a life-saver, " .. GetName(Spawn) .. "!")
end