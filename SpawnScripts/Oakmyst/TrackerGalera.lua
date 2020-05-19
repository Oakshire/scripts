--[[
	Script Name	: SpawnScripts/Oakmyst/TrackerGalera.lua
	Script Purpose	: Tracker Galera
	Script Author	: scatman
	Script Date	: 2009.05.08
	edited by     : ememjr
	edited date : 2017.05.05
	edit notes   : edited quest id
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_FROM_STEWARD_TREDO = 232

function spawn(NPC)
	MovementLoopAddLocation(NPC, 819.19, 5.18, -200.15, 2, 0)
	MovementLoopAddLocation(NPC, 833.12, 4.43, -190.98, 2, 0)
	MovementLoopAddLocation(NPC, 871.16, 1, -188.66, 2, 0)
	MovementLoopAddLocation(NPC, 892.25, 2.83, -201.12, 2, 0)
	MovementLoopAddLocation(NPC, 870.89, 1.11, -187.38, 2, 0)
	MovementLoopAddLocation(NPC, 841.38, 3.75, -188.93, 2, 0)
	MovementLoopAddLocation(NPC, 813.34, 5.97, -202.01, 2, 0)
	MovementLoopAddLocation(NPC, 806.17, 6.34, -202.92, 2, 0)
	MovementLoopAddLocation(NPC, 795.21, 6.95, -207.17, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tracker_galera/qey_adv01_oakmyst/trackergalera000.mp3", "", "", 3127596944, 436493991, Spawn)
	AddConversationOption(conversation, "Who or what is a Ferith'Anar?  ", "dlg_1_1")
	if HasQuest(Spawn, QUEST_FROM_STEWARD_TREDO) and GetQuestStep(Spawn, QUEST_FROM_STEWARD_TREDO) == 2 then
		AddConversationOption(conversation, "I bring you proof of poachers in Oakmyst.", "dlg_17_1")
	end
	AddConversationOption(conversation, "I shall respect these woods. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The beauty of Oakmyst sometimes overwhelms me but not as much as the sight of Ferith'Anar!")
end

----------------------------------------------------------------------------------------------------------
--					QUEST FROM STEWARD TREDO
----------------------------------------------------------------------------------------------------------

function dlg_17_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_STEWARD_TREDO, 2)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tracker_galera/qey_adv01_oakmyst/trackergalera002.mp3", "", "", 155245446, 3356947108, Spawn)
	AddConversationOption(conversation, "May the creatures of Oakmyst roam safely.")
	StartConversation(conversation, NPC, Spawn, "I thank you, as do the creatures of the Oakmyst. These pelts shall prove to the Qeynos Guard that these woods are not properly protected.  ")
end

----------------------------------------------------------------------------------------------------------
--					NORMAL CHAT
----------------------------------------------------------------------------------------------------------

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tracker_galera/qey_adv01_oakmyst/trackergalera001.mp3", "", "", 2151056607, 2801091083, Spawn)
	AddConversationOption(conversation, "I shall respect this unicorn. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Ferith'Anar is only the most illustrious and sacred creature that trots these woods! She is a unicorn ... far from her home in the sovereign forests of Faydark.")
end
