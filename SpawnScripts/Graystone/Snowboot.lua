--[[
	Script Name	: SpawnScripts/Graystone/Snowboot.lua
	Script Purpose	: Snowboot <Armorsmith>
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

	PlayFlavor(NPC, "voiceover/english/armorsmith_snowboot/qey_village03/armorsmithsnowboot.mp3", "", "", 3584987348, 1438770677, Spawn)
	AddConversationOption(conversation, "Sorry to disturb you!")
	StartConversation(conversation, NPC, Spawn, "Aye, what is it? I've got to be fitting this elven lass, and I haven't got all day! Come on, out with it!")
end