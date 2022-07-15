--[[
	Script Name		:	into_the_sewers_for_lucius.lua
	Script Purpose	:	Handles the quest, "Into The Sewers For Lucius"
	Script Author	:	torsten
	Script Date		:	15.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Lucius Vulso
	Preceded by		:	Casing the Joint
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill six trash hoppers.", 6, 100, "I need to go into the sewers and find six trash hoppers and kill them. Once they're dead, I'll scrape the slime off of their bodies. I sure hope they're not too big.", 611, 1540013)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the trash hoppers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've managed to kill enough trash hoppers to gather up this slime for Lucius.")

    AddQuestStepChat(Quest, 2, "I should return to Lucius.", 1, "I should return to Lucius.", 11, 1370036)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've given Lucius Vulso enough slime from the frog's skin to mask his scent. If he manages to pull off this bank heist, I'll have to follow his lead and get out of the city. I'm the only one who was seen asking about the place... what was I thinking?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end


