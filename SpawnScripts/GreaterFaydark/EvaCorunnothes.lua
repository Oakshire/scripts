--[[
	Script Name	: SpawnScripts/GreaterFaydark/EvaCorunnothes.lua
	Script Purpose	: Eva Corunno'thes <High Priestess of Growth>
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1053.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You're Tunare's prophet.", "dlg_19_1")
	AddConversationOption(conversation, "I'm sorry to bother you.  Excuse me.")
	StartConversation(conversation, NPC, Spawn, "Tunare's blessings be with you.  How may I assist you?")
	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1053.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're Tunare's prophet.", "dlg_20_1")
		AddConversationOption(conversation, "I'm sorry to bother you.  Excuse me.")
		StartConversation(conversation, NPC, Spawn, "Tunare's blessings be with you.  How may I assist you?")
	end

end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_19_2")
	AddConversationOption(conversation, "I'm not sure.")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "Correct.  I am the High Priestess of Growth, one of Tunare's faithful.  Are you a follower of the Mother of All as well?")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I follow Tunare?")
	AddConversationOption(conversation, "I must think about this.", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "The blessings of Tunare surround us, for she is not only Mother of All, but goddess of Growth and Nature.  If you wish to become one of her devotees, you need but ask me and I will help you find the way.")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "May I learn more about the Mother of All and Growth?", "dlg_19_4")
	AddConversationOption(conversation, "I need to think about this before I continue.")
	StartConversation(conversation, NPC, Spawn, "The way of Tunare is not an easy path.  There are those who would foul the soil, destroy nature's bounty and claim that it is 'progress.'  The Mother of All will not sit idly by and watch what she has given us be ruined.")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "She is deserving of our faith.", "dlg_19_5")
	AddConversationOption(conversation, "And Growth?")
	AddConversationOption(conversation, "I'll be on my way now.")
	StartConversation(conversation, NPC, Spawn, "The Mother of All is a name for our sacred lady, Tunare, Goddess of Life and Growth.  She resides upon the Plane of Growth and watches over all of her creations.  She is awakening from her long slumber to once again bless her faithful followers.")
end

function dlg_19_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "And now she will return?")
	AddConversationOption(conversation, "I'll be on my way now.", "dlg_19_6")
	StartConversation(conversation, NPC, Spawn, "Growth is the power of creation, a force that maintains and empowers all living things.  It is Tunare's gift to us, that Norrath continue to thrive even during her long absence.")
end

function dlg_19_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be on my way now.", "dlg_19_7")
	StartConversation(conversation, NPC, Spawn, "Faith and patience are always rewarded, .. GetName(Spawn) .. .  Though the gods, for whatever purpose, withdrew from our realms, they are returning.  No one is more deserving of our service than Tunare.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_20_2")
	AddConversationOption(conversation, "I'm not sure.")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "Correct.  I am the High Priestess of Growth, one of Tunare's faithful.  Are you a follower of the Mother of All as well?")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I follow Tunare?", "dlg_20_3")
	AddConversationOption(conversation, "I must think about this.")
	StartConversation(conversation, NPC, Spawn, "The blessings of Tunare surround us, for she is not only Mother of All, but goddess of Growth and Nature.  If you wish to become one of her devotees, you need but ask me and I will help you find the way.")
end

function dlg_20_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "May I learn more about the Mother of All and Growth?", "dlg_20_4")
	AddConversationOption(conversation, "I need to think about this before I continue.")
	StartConversation(conversation, NPC, Spawn, "The way of Tunare is not an easy path.  There are those who would foul the soil, destroy nature's bounty and claim that it is 'progress.'  The Mother of All will not sit idly by and watch what she has given us be ruined.")
end

function dlg_20_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "She is deserving of our faith.", "dlg_20_5")
	AddConversationOption(conversation, "And Growth?")
	AddConversationOption(conversation, "I'll be on my way now.")
	StartConversation(conversation, NPC, Spawn, "The Mother of All is a name for our sacred lady, Tunare, Goddess of Life and Growth.  She resides upon the Plane of Growth and watches over all of her creations.  She is awakening from her long slumber to once again bless her faithful followers.")
end

function dlg_20_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be on my way now.", "dlg_20_6")
	StartConversation(conversation, NPC, Spawn, "Faith and patience are always rewarded, .. GetName(Spawn) .. .  Though the gods, for whatever purpose, withdrew from our realms, they are returning.  No one is more deserving of our service than Tunare.")
end

