--[[
	Script Name	: SpawnScripts/GreaterFaydark/VargorntheHistorian.lua
	Script Purpose	: Vargorn the Historian 
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

		PlayFlavor(NPC, "vargorn_the_historian/_exp03/exp03_rgn_greater_faydark/vargorn_the_historian/vargorn001.mp3", "", "", 308911171, 691504057, Spawn)
	AddConversationOption(conversation, "I'm not going to hit you. I didn't think orcs had scholars.", "dlg_3_1")
	AddConversationOption(conversation, "You're lucky I don't kill you, orc.")
	StartConversation(conversation, NPC, Spawn, "Do not hit! Vargorn is a scholar, not a fighter! Vargorn even speak your language, though not as good as he speak orc.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "vargorn_the_historian/_exp03/exp03_rgn_greater_faydark/vargorn_the_historian/vargorn002.mp3", "", "", 3408288477, 2844321717, Spawn)
	AddConversationOption(conversation, "What use is history to a people bent on conquest?", "dlg_3_2")
	AddConversationOption(conversation, "I'll leave you to your books.")
	StartConversation(conversation, NPC, Spawn, "Clan Crushbone far more advanced than other orcs! We know powerful magic and have rich history that go back centuries. Many Crushbone orcs great writers, even in your language!")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "vargorn_the_historian/_exp03/exp03_rgn_greater_faydark/vargorn_the_historian/vargorn003.mp3", "", "", 4079716341, 594828245, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_3_3")
	AddConversationOption(conversation, "I don't have an interest in this.")
	StartConversation(conversation, NPC, Spawn, "Remembering history very important. Helps us not make same mistakes again. But sometimes being historian is hard work.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "vargorn_the_historian/_exp03/exp03_rgn_greater_faydark/vargorn_the_historian/vargorn004.mp3", "", "", 2082002835, 357817721, Spawn)
	AddConversationOption(conversation, "What kind of conflicts?", "dlg_3_4")
	AddConversationOption(conversation, "This doesn't have anything to do with me.")
	StartConversation(conversation, NPC, Spawn, "Clan Crushbone history very complex, not always easy to understand. Lately Vargorn find conflicting writings that not make sense to him.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "vargorn_the_historian/_exp03/exp03_rgn_greater_faydark/vargorn_the_historian/vargorn005.mp3", "", "", 3599587592, 3365249265, Spawn)
	AddConversationOption(conversation, "What sort of papers?", "dlg_3_5")
	AddConversationOption(conversation, "Speaking of going...")
	StartConversation(conversation, NPC, Spawn, "Vargorn... Vargorn better not say too much out loud. Historian who had job before Vargorn went missing after he uncover some lost papers written long ago. Vargorn not want to go missing too!")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "vargorn_the_historian/_exp03/exp03_rgn_greater_faydark/vargorn_the_historian/vargorn006.mp3", "", "", 776831458, 368161193, Spawn)
	AddConversationOption(conversation, "I will go talk to him.", "dlg_3_6")
	AddConversationOption(conversation, "No thanks, run your own errands.")
	StartConversation(conversation, NPC, Spawn, "Vargorn just have a few scraps. They found by friend of mine, Gorreth. He work inside castle to keep it clean. It not safe for Vargorn to talk to Gorreth to see if he find any more. Maybe you do it for me?")
end

