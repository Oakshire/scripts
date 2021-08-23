--[[
    Script Name    : Quests/Antonica/patchwork_rugs.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 07:08:44
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Hartok Woolyman
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some bears.", 10, 100, "I must kill some bears for their pelts.", 93, 120294, 121403, 120312, 121418, 120473, 121508, 120119, 121266, 120471, 121506, 120140, 121284)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be right back with your pelts.")
	AddConversationOption(conversation, "On second though, no...")
	StartConversation(conversation, QuestGiver, Player, "Yup, Miss Windstalker must be rolling over in her grave! Oh well, more bears for me, right? Ha!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed enough bears.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered several bear pelts.")

	AddQuestStepChat(Quest, 2, "Speak to Hartok.", 1, "I must deliver these pelts to Hartok.", 11, 121309)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Hartok.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Hartok the pelts that I have gathered.")

	UpdateQuestDescription(Quest, "I have acquired several pelts for Hartok.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

