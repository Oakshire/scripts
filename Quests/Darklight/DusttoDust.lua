--[[
	Script Name		:	Quests/Darklight/DusttoDust.lua
	Script Purpose	:	Handles the quest, "Dust to Dust"
	Script Author	:	Cynnar
	Script Date		:	9/2/2015
	Script Notes	:	Need to remove item if quest is deleted

	Zone			:	Darklight Wood
	Quest Giver		:	Calnozz J'Melvirr
	Preceded by		:	Infantile Ingredients
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Douse skeletons with stunspore dust!", 7, 100, "I must test the stunspore dust on the skeletons found north from Warpfont Spire.", 10)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I tested the stunspore dust on several skeletons")

	AddQuestStepChat(Quest, 2, "Report your findings to Calnozz", 1, "I must test the stunspore dust on the skeletons found north from Warpfont Spire.", 11, 340066)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "The stunspore dust had a limited effect on the undead.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
    SummonItem(Player, 47613)
    Say(QuestGiver, "All in the name of empirical research, " .. GetName(Player) ..  "! Good luck!")
end

function Deleted(Quest, QuestGiver, Player)
    RemoveItem(Player, 47613)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end