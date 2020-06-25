--[[
	Script Name	: SpawnScripts/Baubbleshire/JaylaMidhop.lua
	Script Purpose	: Jayla Midhop 
	Script Author	: John Adams
	Script Date	: 2009.01.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local HELPING_SOME_FRIENDS = 325 -- was 72

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, HELPING_SOME_FRIENDS) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/qst_jayla_midhop_pranking_5fde850b.mp3", "Ooh I can't wait to see him.", "", 1235275009, 1310440527, Spawn)
	elseif HasQuest(Spawn, HELPING_SOME_FRIENDS) then
		if GetQuestStep(Spawn, HELPING_SOME_FRIENDS) >= 2 and not QuestStepIsComplete(Spawn, HELPING_SOME_FRIENDS, 3) then
			HelloNeedSomething(NPC, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/qst_jayla_midhop_pranking_5fde850b.mp3", "Ooh I can't wait to see him.", "", 1235275009, 1310440527, Spawn)
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/qst_jayla_midhop_notonquest_962918cb.mp3", "Sorry, I'd prefer not to talk right now.", "", 286304583, 2343816397, Spawn)
	end
end

function HelloNeedSomething(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/quests/jayla_midhop/jayla_midhop001.mp3", "", "", 2550158970, 308187023, Spawn)
	AddConversationOption(conversation, "Delivery for Ms. Midhop.", "dlg_21_1")
	AddConversationOption(conversation, "No, sorry.")
	StartConversation(conversation, NPC, Spawn, "Hello! Do you need something?")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/quests/jayla_midhop/jayla_midhop002.mp3", "", "", 162007353, 3764356786, Spawn)
	AddConversationOption(conversation, "Someone named Remmy.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "Ooh, who is it from?")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/quests/jayla_midhop/jayla_midhop003.mp3", "", "", 2425959259, 2140362898, Spawn)
	AddConversationOption(conversation, "He said it should all be in the note there. Oh, and that you should arrive hungry, he'll bring pie.", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "Oooh! Wonderful! Did he say anything?")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/quests/jayla_midhop/jayla_midhop004.mp3", "", "", 178679879, 3210897279, Spawn)
	AddConversationOption(conversation, "I should hope so.", "dlg_21_4")
	StartConversation(conversation, NPC, Spawn, "Perfect, I was just about to eat. I should be perfectly peckish by the time I get to the forest.")
end

function dlg_21_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/quests/jayla_midhop/jayla_midhop005.mp3", "", "", 3900670960, 2248772947, Spawn)
	AddConversationOption(conversation, "Sorry, was thinking about something else. Have a nice day, Ms. Midhop.", "dlg_21_5")
	StartConversation(conversation, NPC, Spawn, "How do you mean?")
end

function dlg_21_5(NPC, Spawn)
	SetStepComplete(Spawn, HELPING_SOME_FRIENDS, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jayla_midhop/qey_village06/quests/jayla_midhop/jayla_midhop006.mp3", "", "", 1071561763, 3714867768, Spawn)
	AddConversationOption(conversation, "You're quite welcome.")
	StartConversation(conversation, NPC, Spawn, "Oh I most certainly will, thank you very much!")
end