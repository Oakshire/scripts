--[[
	Script Name	: SpawnScripts/GreaterFaydark/MasterBowyerMossberge.lua
	Script Purpose	: Master Bowyer Mossberge 
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

		PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge001.mp3", "", "", 3127429571, 2993577902, Spawn)
	AddConversationOption(conversation, "Who are the Faydark's Champions?", "dlg_83_1")
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "These new carpentry devices are great, but I prefer the old traditional ways of making bows.  There is nothing like taking a plain old piece of wood and with your whittling knife, shape and transform it into a bow of beauty and power.  The Faydark's Champions understood that quite well.")
	if convo==84 then
		PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge001.mp3", "", "", 3127429571, 2993577902, Spawn)
		AddConversationOption(conversation, "Who are the Faydark's Champions?", "dlg_84_1")
		AddConversationOption(conversation, "I'll keep that in mind.")
		StartConversation(conversation, NPC, Spawn, "These new carpentry devices are great, but I prefer the old traditional ways of making bows.  There is nothing like taking a plain old piece of wood and with your whittling knife, shape and transform it into a bow of beauty and power.  The Faydark's Champions understood that quite well.")
	end

end

function dlg_83_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge002.mp3", "", "", 4179297404, 3815097672, Spawn)
	AddConversationOption(conversation, "What happened to them?", "dlg_83_2")
	StartConversation(conversation, NPC, Spawn, "The Champions were the ranger guild that once called Kelethin home long ago.  They created exceptional weapons such as the Trueshot longbow, and the rare enchanted Rain Caller.  Sadly, they are all gone now, casualties of the horrible War of the Fay.")
end

function dlg_83_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge003.mp3", "", "", 3846923539, 1035605128, Spawn)
	AddConversationOption(conversation, "Did they all die in the siege?", "dlg_83_3")
	StartConversation(conversation, NPC, Spawn, "Most of them lost their lives valiantly defending the tree city they loved.  While Kelethin was besieged and burning around them they heroically repelled the Teir'dal and orcish invaders to buy time for their loved ones to escape into the forest.")
end

function dlg_83_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge004.mp3", "", "", 3957751629, 1890990204, Spawn)
	AddConversationOption(conversation, "What was their mission?", "dlg_83_4")
	StartConversation(conversation, NPC, Spawn, "All those rangers that stayed to protect Kelethin died to allow others to escape.  However, there is a legend that tells of a small group of the Faydark's Champions that were sent on an urgent task as the Teir'dal army began closing around Kelethin to begin their siege.  These few did not die but were able to slip by the enemy under the cover of night and proceed with their critical mission.")
end

function dlg_83_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge005.mp3", "", "", 2721196409, 2451619839, Spawn)
	AddConversationOption(conversation, "I understand.  Thanks for the story.", "dlg_83_5")
	AddConversationOption(conversation, "Hmph... I can handle anything.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "That part of the legend will have to wait till you are a little more experienced, I'm afraid.  I'd hate to fill your head with exciting tales only to see you run off to relive them and get yourself killed in the process.")
end

function dlg_84_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge002.mp3", "", "", 4179297404, 3815097672, Spawn)
	AddConversationOption(conversation, "What happened to them?", "dlg_84_2")
	StartConversation(conversation, NPC, Spawn, "The Champions were the ranger guild that once called Kelethin home long ago.  They created exceptional weapons such as the Trueshot longbow, and the rare enchanted Rain Caller.  Sadly, they are all gone now, casualties of the horrible War of the Fay.")
end

function dlg_84_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge003.mp3", "", "", 3846923539, 1035605128, Spawn)
	AddConversationOption(conversation, "Did they all die in the siege?", "dlg_84_3")
	StartConversation(conversation, NPC, Spawn, "Most of them lost their lives valiantly defending the tree city they loved.  While Kelethin was besieged and burning around them they heroically repelled the Teir'dal and orcish invaders to buy time for their loved ones to escape into the forest.")
end

function dlg_84_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge004.mp3", "", "", 3957751629, 1890990204, Spawn)
	AddConversationOption(conversation, "What was their mission?", "dlg_84_4")
	StartConversation(conversation, NPC, Spawn, "All those rangers that stayed to protect Kelethin died to allow others to escape.  However, there is a legend that tells of a small group of the Faydark's Champions that were sent on an urgent task as the Teir'dal army began closing around Kelethin to begin their siege.  These few did not die but were able to slip by the enemy under the cover of night and proceed with their critical mission.")
end

function dlg_84_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "master_bowyer_mossberge/_exp03/exp03_rgn_greater_faydark/master_bowyer_mossberge/master_bowyer_mossberge005.mp3", "", "", 2721196409, 2451619839, Spawn)
	AddConversationOption(conversation, "I understand.  Thanks for the story.", "dlg_84_5")
	AddConversationOption(conversation, "Hmph... I can handle anything.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "That part of the legend will have to wait till you are a little more experienced, I'm afraid.  I'd hate to fill your head with exciting tales only to see you run off to relive them and get yourself killed in the process.")
end

