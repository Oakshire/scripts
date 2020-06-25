--[[
	Script Name		:	Quests/Darklight/PublicService.lua
	Script Purpose	:	Handles the quest, "Public Service"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Laexyra Y'Barriath
	Preceded by		:	Purposeful Trinkets
	Followed by		:	A Friendly Reminder
--]]

local PublicService = 150

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Destroy several purulent defenders", 8, 100, "I need to destroy a number of the undead soldiers north of T'Vatar Post.", 611, 340085)
	AddQuestStepKill(Quest, 2, "Destroy several moldering soldiers", 5, 100, "I need to destroy a number of the undead soldiers north of T'Vatar Post.", 611, 340084)
	AddQuestStepCompleteAction(Quest, 1, "PurulentDefenders")
	AddQuestStepCompleteAction(Quest, 2, "MolderingSoldiers")
end

function PurulentDefenders(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have slain the purulent defenders")
    CheckProgress(Quest, QuestGiver, Player)
end

function MolderingSoldiers(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have slain the moldering soldiers")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, PublicService, 1) and QuestStepIsComplete(Player, PublicService, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the undead soldiers for Laexyra.")
		UndeadSoldiersComplete(Quest, QuestGiver, Player)
	end
end

function UndeadSoldiersComplete(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	AddQuestStepChat(Quest, 3, "Speak with Laexyra Y'Barriath", 1, "I should return to Laexyra Y'Barriath now that I have thinned out the undead.", 11, 340075)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have thinned out the undead population north of T'Vatar Post.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, PublicService, 1) then
	    PurulentDefenders(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, PublicService, 2) then
	    MolderingSoldiers(Quest, QuestGiver, Player)
	end
	if Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	Say(QuestGiver, "Return to me when you are finished.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end