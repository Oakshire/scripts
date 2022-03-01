--[[
	Script Name	: SpawnScripts/NorthQeynos/P.T.Irontoe.lua
	Script Purpose	: P.T. Irontoe 
	Script Author	: Dorbin
	Script Date	: 2022.01.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,0)

	if choice == 1 then
	else
	end

		PlayFlavor(NPC, "voiceover/english/p.t._irontoe/qey_harbor/ptirontoe000.mp3", "", "", 63213082, 3865796457, Spawn)
		AddConversationOption(conversation, "I'm shoving off. Good day. ")
	StartConversation(conversation, NPC, Spawn, "Listen here! This here's my pub. We'll have no busting heads and barstools in here. And never break rule number one: Never pester the owner.")
	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/p.t._irontoe/qey_harbor/ptirontoe000.mp3", "", "", 63213082, 3865796457, Spawn)
		AddConversationOption(conversation, "I'm shoving off. Good day. ")
		StartConversation(conversation, NPC, Spawn, "Listen here! This here's my pub. We'll have no busting heads and barstools in here. And never break rule number one: Never pester the owner.")
	end

end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/p.t._irontoe/qey_harbor/ptirontoe002.mp3", "", "", 63213082, 3865796457, Spawn)
		AddConversationOption(conversation, "I'm leaving.", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Pummeling time: The time it's gonna be if you don't stop pestering me. Shove off!")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/p.t._irontoe/qey_harbor/ptirontoe002.mp3", "", "", 63213082, 3865796457, Spawn)
		AddConversationOption(conversation, "I'm leaving.", "dlg_35_2")
	StartConversation(conversation, NPC, Spawn, "Pummeling time: The time it's gonna be if you don't stop pestering me. Shove off!")
end

