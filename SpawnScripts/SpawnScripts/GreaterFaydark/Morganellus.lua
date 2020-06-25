--[[
	Script Name	: SpawnScripts/GreaterFaydark/Morganellus.lua
	Script Purpose	: Morganellus 
	Script Author	: John Adams
	Script Date	: 2009.02.05
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

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/morganellus/_exp03/exp03_rgn_greater_faydark/shroomba/morganellus/morganellus000.mp3", "", "", 1586930709, 170726345, Spawn)
	AddConversationOption(conversation, "Hello, Morganellus. I am " .. GetName(Spawn) .. ".", "dlg_10_1")
	AddConversationOption(conversation, "Child of the heavens?")
	StartConversation(conversation, NPC, Spawn, "Hello, child of the heavens. I am Morganellus.")

end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/morganellus/_exp03/exp03_rgn_greater_faydark/shroomba/morganellus/morganellus001.mp3", "", "", 3125158687, 308390783, Spawn)
	AddConversationOption(conversation, "Your friend?", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "It is pleasing to know you. This is a land we share, it would be well that we get along. Of this I find you will agree. In Dyer Mycoria we are taught to respect the children of the heavens, that is you. You should find yourself there sometime, it is pleasant to the senses when you are there. You should visit my friend.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/morganellus/_exp03/exp03_rgn_greater_faydark/shroomba/morganellus/morganellus002.mp3", "", "", 3545587475, 669880313, Spawn)
	AddConversationOption(conversation, "I will visit Agarighus.", "dlg_10_3")
	StartConversation(conversation, NPC, Spawn, "Agarighus. He tends to our groves in Dyer Mycoria, others--those others you see here--tend to groves outside Dyer Mycoria. This is a nice arrangement, I think.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/morganellus/_exp03/exp03_rgn_greater_faydark/shroomba/morganellus/morganellus003.mp3", "", "", 2602618474, 1319117149, Spawn)
	AddConversationOption(conversation, "Do you want me to tell Agarighus that you say hello?", "dlg_10_4")
	StartConversation(conversation, NPC, Spawn, "That is pleasing to know. To the east and to the south--both at the same time--you will come to a path that leads away from here, you children call it Echo Echo Canyon. In the canyon are two caves, take the second, and go south once within them, that way is quicker.")
end

function dlg_10_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/morganellus/_exp03/exp03_rgn_greater_faydark/shroomba/morganellus/morganellus004.mp3", "", "", 2956711105, 2602303407, Spawn)
	AddConversationOption(conversation, "All right, I'll just find him.")
	StartConversation(conversation, NPC, Spawn, "Why would I want that? You are going to Dyer Mycoria, not me.")
end

