--[[
    Script Name    : Quests/Antonica/attack_of_the_killer_bear.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.23 05:08:38
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must find the bear that has been stalking Hartok.", 1, 100, "I must find and kill the Windstalker grizzly in the Shattered Vale to the southeast. I should look for a Giantslayer messenger along the way to find out how to get to this area.", 122, 3280014)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will be careful.")
	StartConversation(conversation, QuestGiver, Player, "Be careful though! This one is big!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the bear that has been stalking Hartok.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the Windstalker grizzly.")

	AddQuestStepChat(Quest, 2, "I must inform Hartok that the beast has been slain.", 1, "I must speak to Hartok.", 122, 121309)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Hartok.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Hartok.")

	UpdateQuestDescription(Quest, "I have slain the beast that has been stalking Hartok. Now that the beast is gone, it appears that Hartok is back to his old ways.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

