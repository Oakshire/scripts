--[[
	Script Name	: SpawnScripts/Baubbleshire/FillzerFuzzle.lua
	Script Purpose	: Fillzer Fuzzle 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

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

	if HasQuest(Spawn, NEEZERS_SURVEY) and not QuestStepIsComplete(Spawn, NEEZERS_SURVEY, 4) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle001.mp3", "", "", 3200743404, 1664835726, Spawn)
		AddConversationOption(conversation, "Luck is an amazing thing.", "dlg_56_1")
		AddConversationOption(conversation, "No, I did not know that.")
		StartConversation(conversation, NPC, Spawn, "Hello, hello, did you know sometimes jewels can be found in the most surprising places?")
	else
		Say(NPC, "Not now, I'm looking for treasure!", Spawn)
	end
end

function dlg_56_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle002.mp3", "", "", 684618694, 1163926125, Spawn)
	AddConversationOption(conversation, "Seventeen years is a long time. How about you take a break and answer some questions for me?", "dlg_57_2")
	StartConversation(conversation, NPC, Spawn, "I'll say. I found an amazing gem seventeen years ago. I've been searching for another ever since.")
end

function dlg_57_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle003.mp3", "", "", 1972808563, 2405754009, Spawn)
	AddConversationOption(conversation, "Fair enough. Ok, question one: if you were to calibrate a Fizzo Torque Wrench for work in Lavastorm and then attempt precisely the same work in Everfrost what difference of calibration would be needed?", "dlg_57_3")
	StartConversation(conversation, NPC, Spawn, "How about you do what you need to do and I keep looking?")
end

function dlg_57_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle004.mp3", "", "", 3369234960, 1114092403, Spawn)
	AddConversationOption(conversation, "Question two: what is the average measurement between Keen and Preen on a Spectromatic Nest-Druther?", "dlg_57_4")
	StartConversation(conversation, NPC, Spawn, "Variable dependent on precise temperature differences in the two regions. I'd say correct -0.034% at minimum.")
end

function dlg_57_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle005.mp3", "", "", 1305378583, 3342464494, Spawn)
	AddConversationOption(conversation, "Next question: if given the choice in a vote for the new Queen of Qeynos, would you cast your vote for a nut or a bolt?", "dlg_57_5")
	StartConversation(conversation, NPC, Spawn, "In bolts: uh, twenty-nine over fifty, roughly.")
end

function dlg_57_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle006.mp3", "", "", 1049508537, 3160462973, Spawn)
	AddConversationOption(conversation, "Question four: though not yet officially proven, which theory concerning thermodynamic particle acceleration and its correlation to metaphysical tides is widely accepted?", "dlg_57_6")
	StartConversation(conversation, NPC, Spawn, "Going to have to abstain.")
end

function dlg_57_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle007.mp3", "", "", 916053189, 3125242157, Spawn)
	AddConversationOption(conversation, "Question five: isn't Neezer Grund amazing?", "dlg_57_7")
	StartConversation(conversation, NPC, Spawn, "No idea.")
end

function dlg_57_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle008.mp3", "", "", 2401347894, 3730158053, Spawn)
	AddConversationOption(conversation, "Final question: the Banton particle is supposed to generate high amounts of what?", "dlg_57_8")
	StartConversation(conversation, NPC, Spawn, "Who?")
end

function dlg_57_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle009.mp3", "", "", 2433452263, 1166262943, Spawn)
	AddConversationOption(conversation, "You'll have to wait for the results to come back first.", "dlg_57_9")
	StartConversation(conversation, NPC, Spawn, "I think the answer is tension. Did I win? Did I win?")
end

function dlg_57_9(NPC, Spawn)
	SetStepComplete(Spawn, NEEZERS_SURVEY, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fillzer_fuzzle/qey_village06/quests/fillzer_fuzzle/fillzer_fuzzle010.mp3", "", "", 3356549630, 296738161, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_57_10")
	StartConversation(conversation, NPC, Spawn, "Ooh I hope I win something. That was great fun, thanks.")
end