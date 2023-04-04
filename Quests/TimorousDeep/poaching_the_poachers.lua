--[[
	Script Name	: Quests/TimorousDeep/poaching_the_poachers.lua
	Script Purpose	: Handles the quest, "Poaching the Poachers"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Tykor Gi'Lok
	Preceded by: None
	Followed by: Curious Ore (curious_ore.lua)
--]]



function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill four Haoaeran poachers.", 4, 100, "Tykor Gi'Lok wants me to kill the Haoaeran poachers that are moving in.", 611, 2630020)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok001.mp3", "", "", 611409560, 797692345, Player)
	AddConversationOption(conversation, "As good as done.")
	StartConversation(conversation, QuestGiver, Player, "No hesitation, I like it. You will kill the poachers, and they will know Gi'Lok knows how to delegate.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the Haoaeran poachers.")

	AddQuestStepChat(Quest, 2, "I need to return to Tykor Gi'Lok.", 1, "Tykor Gi'Lok wants me to kill the Haoaeran poachers that are moving in.", 11, 	2630021)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Tykor Gi'Lok.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the Haoaeran poachers for Tykor Gi'Lok.")

	UpdateQuestDescription(Quest, "I have slain the Haoaeran poachers for Tykor Gi'Lok.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end