--[[
	Script Name	: SpawnScripts/Baubbleshire/ArbuthnotJumroller.lua
	Script Purpose	: Arbuthnot Jumroller 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	GenericHail(NPC, Spawn)
	AddConversationOption(conversation, "Thanks, but I need to leave now.")
	StartConversation(conversation, NPC, Spawn, "Well, then, what can I do for you?")
end