--[[
	Script Name	: SpawnScripts/Graystone/Coppershot.lua
	Script Purpose	: Coppershot <Bartender>
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

	PlayFlavor(NPC, "voiceover/english/bartender_coppershot/qey_village03/bartendercoppershot000.mp3", "", "", 2171336743, 1878294501, Spawn)
	AddConversationOption(conversation, "I'm not looking for trouble.", "dlg_13_1")
	AddConversationOption(conversation, "This is not my kind of place.")
	StartConversation(conversation, NPC, Spawn, "If yer comin' in here to fight an' make trouble, the Graystone Watch will toss you out on your backside!")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_coppershot/qey_village03/bartendercoppershot002.mp3", "", "", 3971179899, 2182118596, Spawn)
	AddConversationOption(conversation, "Frozen Tundra Tavern? Are you from the northlands?", "dlg_13_2")
	AddConversationOption(conversation, "I hear ya.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Frozen Tundra Tavern where the grog flows like the Ocean of Tears.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/bartender_coppershot/qey_village03/bartendercoppershot003.mp3", "", "", 2445961475, 534113227, Spawn)
	AddConversationOption(conversation, "Sounds wise--good marketing.")
	StartConversation(conversation, NPC, Spawn, "I can't stand the ice! Give me halls of stone! The barbarians seem to prefer the name and I prefer their coin.")
end