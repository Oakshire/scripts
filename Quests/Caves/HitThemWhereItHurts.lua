--[[
	Script Name		:	HitThemWhereitHurts.lua
	Script Purpose	:	Handles the quest, "Hit Them Where it Hurts"
	Script Author	:	Shatou
	Script Date		:	1/3/2020
	Script Notes	:	Need to add scripts to the forge and mechanical parts to recognize a player with this quest, make them interactable, 
						update the quest on use, and destroy them from the client view.

	Zone			:	Caves
	Quest Giver		:	Consul Bree
	Preceded by		:	A Lack of Information
	Followed by		:	Elements of a Ritual
--]]


function Init(Quest, Player)
	AddQuestStep(Quest, 1, "I need to destroy the forge in the armory.", 1, 100, "Consul Bree has asked for my help in disrupting the gnoll operations here in the Caves. I can help by crippling their ability to craft armor and destroying some of their machine parts.", 12)
        for i = 1, 6, 1 do
            SummonItem(Player, 6975, 1)

	end

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the forge.")

	AddQuestStep(Quest, 2, "I need to destroy some of the mechanical parts stashed in the Caves.", 5, 100, "Consul Bree has asked for my help in disrupting the gnoll operations here in the Caves. I can help by crippling their ability to craft armor and destroying some of their machine parts.", 1042)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have destroyed some of the mechanical parts stashed in the Caves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have done as Consul Bree asked.")

	AddQuestStepChat(Quest, 3, "I need to return to Consul Bree.", 1, "Now that I have helped Consul Bree I should return to her.", 11)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Consul Bree.")

	UpdateQuestDescription(Quest, "I have interrupted work in the armory and destroyed a number of machine components for Bree.")
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