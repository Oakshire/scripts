--[[
	Script Name	: SpawnScripts/ElddarGrove/ShakanNotebend.lua
	Script Purpose	: Shakan Notebend <Dirge Trainer>
	Script Author	: John Adams
	Script Date	: 2008.09.28
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

		PlayFlavor(NPC, "lieoonlioo_croosinian/qey_elddar/trainer_dirge001.mp3", "", "", 3023305177, 4288429789, Spawn)
	AddConversationOption(conversation, "Just looking around.", "dlg_17_1")
	StartConversation(conversation, NPC, Spawn, "Well met, .. GetName(Spawn) .. .  What brings you to the Elddar Grove this fine day?")
	if convo==18 then
		PlayFlavor(NPC, "lieoonlioo_croosinian/qey_elddar/trainer_dirge001.mp3", "", "", 3023305177, 4288429789, Spawn)
		AddConversationOption(conversation, "Just looking around.", "dlg_18_1")
		StartConversation(conversation, NPC, Spawn, "Well met, .. GetName(Spawn) .. .  What brings you to the Elddar Grove this fine day?")
	end

end

