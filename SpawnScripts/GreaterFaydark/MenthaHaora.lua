--[[
	Script Name	: SpawnScripts/GreaterFaydark/MenthaHaora.lua
	Script Purpose	: Mentha Haora 
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/mentha_haora/_exp03/exp03_rgn_greater_faydark/scp/part_two/mentha/mentha000.mp3", "", "", 2060469955, 1753572931, Spawn)
	AddConversationOption(conversation, "I am XXXXXXXX. What do you mean formerly?", "dlg_22_1")
	StartConversation(conversation, NPC, Spawn, "I am Mentha Haora. Formerly in charge of the counter Crushbone offensive in the area surrounding the Combine Spires.")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/mentha_haora/_exp03/exp03_rgn_greater_faydark/scp/part_two/mentha/mentha001.mp3", "", "", 926564266, 1509556740, Spawn)
	AddConversationOption(conversation, "Well if the orcs are taken care of is there anything else I can help with?", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "There had been a much stronger orc presence here only a short while ago. I broke their camp and scattered their numbers. Unfortunately, when I asked for follow up orders, I was told to remain at Spireshadow Post. They had put someone else closer to the Crushbone threat, and they would be handling it from now on. When I asked who, they told me I didn't need to know! After all I'd done for them...")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/mentha_haora/_exp03/exp03_rgn_greater_faydark/scp/part_two/mentha/mentha002.mp3", "", "", 160244099, 3171785528, Spawn)
	AddConversationOption(conversation, "What do you have that I can do?", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "I suppose. They've given me duties... just not exciting ones. Er, I mean they've given me a lot of exciting things to do, and I would love if you helped me finish them up!")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/mentha_haora/_exp03/exp03_rgn_greater_faydark/scp/part_two/mentha/mentha003.mp3", "", "", 1953644767, 2401370761, Spawn)
	AddConversationOption(conversation, "Sure, I can get the samples.", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "Well, part of the duties of an officer at this post involves the study of the Combine Spires. Specifically, they wanted me to study the scorched skeletons that congregate around the Spires. Hardly boring work for one who has fought the Crushbone! Anyway, if you could gather some samples of scorched skeleton bones, it would help with a test I have to run.")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/mentha_haora/_exp03/exp03_rgn_greater_faydark/scp/part_two/mentha/mentha004.mp3", "", "", 558577322, 2672691340, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_22_5")
	StartConversation(conversation, NPC, Spawn, "Great! The spires are just north of us, I'm sure there will be no shortage of skeletons.")
end

