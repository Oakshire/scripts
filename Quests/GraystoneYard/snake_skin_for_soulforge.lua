--[[
	Script Name		:	snake_skin_for_soulforge.lua
	Script Purpose	:	Handles the quest, "Snake Skin for Soulforge"
	Script Author	:	Dorbin
	Script Date		:	3/8/2022
	Script Notes	:	

	Zone			:	Graystone Yard
	Quest Giver		:	Weaponsmith Soulforge
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather cave snake skins from the Caves.", 10, 80, "I must hunt down ten cave serpents in the Caves.", 129, 1970008,1970009)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest, "The Caves")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've collected all ten cave snake skins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed ten cave serpents, and gathered their skins.")
	UpdateQuestZone(Quest, "Graystone Yard")
    
	AddQuestStepChat(Quest, 2, "I need to deliver these snake skins to Soulforge.", 1, "I need to deliver these snake skins to Soulforge in Graystone Yard", 129, 2350013)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the snake skins to Weaponsmith Soulforge.")
	UpdateQuestDescription(Quest, "I guess the hunting wasn't so bad. I'm none the worse for wear; however, the snakes are. Soulforge stiffed me a bit on the price for them, just because they were damaged. I think it will make the weapons look more authentic!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end