--[[
	Script Name	: SpawnScripts/ScaleYard/SkalVethiz.lua
	Script Purpose	: Skal Vethiz 
	Script Author	: John Adams
	Script Date	: 2008.10.01
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

	PlayFlavor(NPC, "voiceover/english/skal_vethiz/fprt_hood06/qst_skalvethiz.mp3", "", "", 632016145, 49250829, Spawn)
	AddConversationOption(conversation, "I don't really care. Bye.")
	AddConversationOption(conversation, "What empire?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "What have we iksar become? We live next to barbarians and accept it? We once had a great Empire.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/skal_vethiz/fprt_hood06/qst_skalvethiz000.mp3", "", "", 4224301835, 4229334233, Spawn)
	AddConversationOption(conversation, "Sorry to hear it.")
	StartConversation(conversation, NPC, Spawn, "What? You know nothing of the greatest empire to dominate the face of Norrath?!  We conquered the continent of Kunark!  Kingdoms on Antonica and Faydwer trembled at the mere whisper of the iksar name.   Before the Shattering, the Iksarian Empire held the entire world in its grasp! Now look at us. We're reduced to squatting in the corner of some human city.")
end