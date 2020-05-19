--[[
	Script Name	: SpawnScripts/Castleview/InnkeeperValean.lua
	Script Purpose	: Innkeeper Valean <Housing>
	Script Author	: Scatman
	Script Date	: 2009.10.02
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
	
	AddConversationOption(conversation, "Yes.", "OfferQuest1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ", I am the Innkeeper for this village. We have received word of your arrival and have a room prepared for you. Would you like to know more about housing?")
end

function OfferQuest1(NPC, Spawn)
end

--[[
	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village04/innkeeper001.mp3", "", "", 1553251638, 3978555092)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_7_1")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello there" .. GetName(Spawn) .. ". what can I help you with?")
	--]]