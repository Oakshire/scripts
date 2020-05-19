--[[
	Script Name	: SpawnScripts/Sprawl/ArcanistTikkeri.lua
	Script Purpose	: Arcanist Tikkeri 
	Script Author	: Scatman
	Script Date	: 2009.07.26
	Script Notes	: 
--]]

local QUEST_3_FROM_KURDEK = 255

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quest/quest_arcanist_tikkeri_callout_5a64971c.mp3", "We will strike when they least expect it!", "scheme", 3382540099, 2030330993, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quest/quest_arcanist_tikkeri_callout_84acfa3e.mp3", "Good, good, let them keep underestimating us!", "chuckle", 35617715, 1152178748, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quest/quest_arcanist_tikkeri_callout_87a919d8.mp3", "Soon the Black Magi will control all of the Sprawl!", "scheme", 856975110, 1693275305, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quest/quest_arcanist_tikkeri_callout_9bb2bd96.mp3", "Our plan is sound, yes. It cannot fail.", "scheme", 1527040733, 1208100176, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_3_FROM_KURDEK) or (HasQuest(Spawn, QUEST_3_FROM_KURDEK) and GetQuestStep(Spawn, QUEST_3_FROM_KURDEK) > 1) then
		AddConversationOption(conversation, "As you wish.")
		StartConversation(conversation, NPC, Spawn, "You won't trick me again, outsider. The Black Magi have nothing more to say to you.")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quests/arcanist_tikkeri001.mp3", "", "", 1959125107, 2897082234, Spawn)
		if HasQuest(Spawn, QUEST_3_FROM_KURDEK) and GetQuestStep(Spawn, QUEST_3_FROM_KURDEK) == 1 then
			AddConversationOption(conversation, "I seek to learn more about your organization.", "dlg_28_1")
		end
		AddConversationOption(conversation, "Very well, I'll go.")
		StartConversation(conversation, NPC, Spawn, "Why do you approach me, outsider? You could never understand the ways of the Black Magi. Move along.")
	end
end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quests/arcanist_tikkeri002.mp3", "", "", 1384331297, 2679607615, Spawn)
	AddConversationOption(conversation, "I have some information you would find useful.", "dlg_28_2")
	AddConversationOption(conversation, "I will take my leave, then.")
	StartConversation(conversation, NPC, Spawn, "That would be telling. We want... information. If you have nothing of value, you are useless to me.")
end

function dlg_28_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quests/arcanist_tikkeri003.mp3", "", "", 429505535, 657718055, Spawn)
	AddConversationOption(conversation, "I have information about 'the wheel.'", "dlg_28_3")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "You speak of this currency, yet give no indication of its worth. Tell me what you know, and I will judge you fairly.")
end

function dlg_28_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quests/arcanist_tikkeri004.mp3", "", "", 2113414665, 3782181434, Spawn)
	AddConversationOption(conversation, "Who are the Marked?", "dlg_28_4")
	AddConversationOption(conversation, "You won't get anything from me.")
	StartConversation(conversation, NPC, Spawn, "The Wheel? You know of the Wheel? Tell me what you know! The Marked must obtain this information. By hook or by crook, we will!")
end

function dlg_28_4(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3_FROM_KURDEK, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/arcanist_tikkeri/fprt_adv03_sprawl/quests/arcanist_tikkeri005.mp3", "", "", 2625005757, 2857555075, Spawn)
	AddConversationOption(conversation, "But... but... fine.")
	StartConversation(conversation, NPC, Spawn, "Crafty outsider. If you truly knew of the Wheel, you would not ask such a question. Begone, and trouble me no more.")
end
