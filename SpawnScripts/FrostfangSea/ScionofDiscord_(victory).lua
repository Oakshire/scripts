--[[
	Script Name	: SpawnScripts/FrostfangSea/ScionofDiscord.lua
	Script Purpose	: Scion of Discord <Victory Appraiser>
	Script Author	: Foof
	Script Date	: 2013.10.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end
--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1026.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Victory! ", "dlg_31_1")
	AddConversationOption(conversation, "I am not interested in what you offer...")
	StartConversation(conversation, NPC, Spawn, "The will of Discord is to raise leaders among the masses.  You can fight aimlessly in battle, or you can lead your team to victory!  The choice is yours.")
end

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What is there for me to do? ", "dlg_31_2")
	AddConversationOption(conversation, "On second thought, I can't at this time. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "Great choice!  You are a fine specimen, fine indeed.  I can sense that you are not someone that likes to fail.   That is good for you and me.    ")
end

function dlg_31_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Discord will be honored with a victory! ", "dlg_31_3")
	AddConversationOption(conversation, "I am not sure I can do that right now. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "It is simple, win!  You must make your way through the battle and lead your team to victory.   Each day will bring a different challenge.  Are you ready to begin?  ")
end

function dlg_31_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	StartConversation(conversation, NPC, Spawn, "Discord be with you!")
end
--]]
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1026.mp3", "", "", 0, 0, Spawn)
--]]

