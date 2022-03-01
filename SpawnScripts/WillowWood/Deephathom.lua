--[[
	Script Name	: SpawnScripts/WillowWood/Deephathom.lua
	Script Purpose	: Deephathom <Banker>
	Script Author	: Scatman
	Script Date	: 2009.09.15
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

	PlayFlavor(NPC, "voiceover/english/banker_deephathom/qey_village05/banker_deephathom001.mp3", "", "", 1593106270, 3129539503, Spawn)
	AddConversationOption(conversation, "No, I'm not.")
	StartConversation(conversation, NPC, Spawn, "Please tell me you're not trying to get a loan with livestock collateral!")
end