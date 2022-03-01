--[[
    Script Name    : Quests/CastleviewHamlet/oh_deer_me.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.29 05:01:02
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Eireneith Alannia
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to reduce the deer population.", 10, 100, "I need to reduce the glade deer population in Antonica.", 175, 120265,121374)
	AddQuestStepCompleteAction(Quest, 1, "Turnin")
	UpdateQuestZone(Quest,"Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Turnin(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have reduced the Antonica deer population.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have removed ten deer from the population in Antonica.")

	UpdateQuestZone(Quest,"Castleview Hamlet")
	AddQuestStepChat(Quest, 2, "I need to return to Eireneith.", 1,"I need report to Eireneith Alannia in Castleview.", 175, 2360036)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Eireneith.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported the deer control taken place in Antonica to Eireneith Alannia.")

	UpdateQuestDescription(Quest, "I've done as Eireneith Alannia requested and brought down the glade deer population. She was nice enough to reward me for taking care of the task.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Turnin(Quest, QuestGiver, Player)
	end
		if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
