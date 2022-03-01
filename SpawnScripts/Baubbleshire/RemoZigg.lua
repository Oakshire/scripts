--[[
	Script Name	: SpawnScripts/Baubbleshire/RemoZigg.lua
	Script Purpose	: Remo Zigg 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

-- Quest ID's
local NEEZERS_SURVEY = 330 -- was 28

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, NEEZERS_SURVEY) and not QuestStepIsComplete(Spawn, NEEZERS_SURVEY, 3) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg001.mp3", "", "", 530397481, 3156402510, Spawn)
		AddConversationOption(conversation, "I came all the way up here to ask you some questions.", "dlg_55_1")
		AddConversationOption(conversation, "Yikes! I'm sorry.")
		StartConversation(conversation, NPC, Spawn, "Go away!")
	else
		GenericHail(NPC, Spawn)
		Say(NPC, "Leave me alone!", Spawn)
	end
end

function dlg_55_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg002.mp3", "", "", 1696882002, 3766703540, Spawn)
	AddConversationOption(conversation, "But this is important. It's for research.", "dlg_55_2")
	StartConversation(conversation, NPC, Spawn, "And I came all the way up here to get away from folks like you asking me questions!")
end

function dlg_55_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg003.mp3", "", "", 969902427, 1340115911, Spawn)
	AddConversationOption(conversation, "First question: if you were to calibrate a Fizzo Torque Wrench for work in Lavastorm and then attempt precisely the same work in Everfrost what difference of calibration would be needed?", "dlg_55_3")
	StartConversation(conversation, NPC, Spawn, "Not dealing with you is important to me!")
end

function dlg_55_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg004.mp3", "", "", 24321375, 955243760, Spawn)
	AddConversationOption(conversation, "Probably incorrect! Next question: what is the average measurement between Keen and Preen on a Spectromatic Nest-Druther?", "dlg_55_4")
	StartConversation(conversation, NPC, Spawn, "Leave me alone!")
end

function dlg_55_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg005.mp3", "", "", 919014219, 498815422, Spawn)
	AddConversationOption(conversation, "A few more! If given the choice in a vote for the new Queen of Qeynos, would you cast your vote for a nut or a bolt?", "dlg_55_5")
	StartConversation(conversation, NPC, Spawn, "The answer is twenty-nine fiftieths of a bolt! Now go!")
end

function dlg_55_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg006.mp3", "", "", 2991931865, 2089278988, Spawn)
	AddConversationOption(conversation, "Though not yet officially proven, which theory concerning thermodynamic particle acceleration and its correlation to metaphysical tides is widely accepted?", "dlg_55_6")
	StartConversation(conversation, NPC, Spawn, "Nut! Now leave!")
end

function dlg_55_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg008.mp3", "", "", 3575168349, 3865802966, Spawn)
	AddConversationOption(conversation, "Last question: the Banton particle is supposed to generate high amounts of what?", "dlg_55_7")
	StartConversation(conversation, NPC, Spawn, "Who?")
end

function dlg_55_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg009.mp3", "", "", 995350190, 2609073467, Spawn)
	AddConversationOption(conversation, "That's all, thank you for your time!", "dlg_55_8")
	StartConversation(conversation, NPC, Spawn, "Is it tension? Is it tension? It's tension, right?")
end

function dlg_55_8(NPC, Spawn)
	SetStepComplete(Spawn, NEEZERS_SURVEY, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg010.mp3", "", "", 1931580317, 4141303042, Spawn)
	AddConversationOption(conversation, "You'll have to ask Neezer Grund.", "dlg_55_9")
	StartConversation(conversation, NPC, Spawn, "Wait, how did I score?")
end

function dlg_55_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remo_zigg/qey_village06/quests/remo_zigg/remo_zigg011.mp3", "", "", 2835311022, 1920113561, Spawn)
	AddConversationOption(conversation, "That's what everyone says!", "dlg_55_10")
	StartConversation(conversation, NPC, Spawn, "Who?")
end