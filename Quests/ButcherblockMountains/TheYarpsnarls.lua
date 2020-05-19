--[[
	Script Name		:	TheYarpsnarls.lua
	Script Purpose	:	Handles the quest, "The Yarpsnarls"
	Script Author	:	jakejp
	Script Date		:	6/8/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Argro Durthor
	Preceded by		:	None
	Followed by		:	None
--]]

local TheYarpsnarls = 280

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill several Yarpsnarl lookouts.", 4, 100, "I need to kill the Yarpsnarl's east of Argro's position.", 611, 1080251, 1080425, 1081124, 1081150)
	AddQuestStepKill(Quest, 2, "Kill several Yarpsnarl ravagers.", 4, 100, "I need to kill the Yarpsnarl's east of Argro's position.", 611, 1080248, 1080372, 1081122, 1081146)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, TheYarpsnarls, 1) and QuestStepIsComplete(Player, TheYarpsnarls, 2) then
	HandInQuest(Quest, QuestGiver, Player)
    end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Yarpsnarl lookouts.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed the Yarpsnarl ravagers.")
	CheckProgress(Quest, QuestGiver, Player)
end

function HandInQuest(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the Yarpsnarl kobolds.")

	AddQuestStepChat(Quest, 3, "I need to speak with Argro.", 1, "I need to return to Argro now that I've slain the kobolds.", 11, 1081147)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Argro.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Argro.")

	UpdateQuestDescription(Quest, "I have slain the kobolds for Argro. He was thankful for my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end