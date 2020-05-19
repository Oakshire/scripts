--[[
	Script Name	: SpawnScripts/Castleview/ApprenticeBoggi.lua
	Script Purpose	: Apprentice Boggi 
	Script Author	: Scatman
	Script Date	: 2009.10.03
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

	PlayFlavor(NPC, "voiceover/english/apprentice_boggi/qey_village04/apprenticeboggi.mp3", "", "", 1068299089, 2686342617)
	AddConversationOption(conversation, "I think I'll let you get back to resting your \"injury.\" Good bye.")
	StartConversation(conversation, NPC, Spawn, "Oh! Hello! I wasn't... um... napping. I was just resting my injured leg. That's it!")
end