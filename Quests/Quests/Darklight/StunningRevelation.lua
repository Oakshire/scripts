--[[
	Script Name		:	Quests/Darklight/StunningRevelation.lua
	Script Purpose	:	Handles the quest, "Stunning Revelation"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Calnozz J'Melvirr
	Preceded by		:	To Draw Upon Wellsprings
	Followed by		:	Infantile Ingredients
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Collect stunspore mushroom caps", 5, 100, "Calnozz J'Melvirr wants me to collect stunspore mushroom caps found west of T'Vatar Outpost.", 821, 13532)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected stunspore mushroom caps")

	AddQuestStepChat(Quest, 2, "Bring the stunspore mushroom caps back to Calnozz", 1, "Calnozz J'Melvirr wants me to collect stunspore mushroom caps found west of T'Vatar Outpost.", 821, 340066)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I collected the stunspore mushroom caps requested by Calnozz J'Melvirr.")
		while HasItem(Player, 13532, 1) do
		    RemoveItem(Player, 13532)
		end
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
	Say(QuestGiver, "Excellent, I await your imminent return.")
end

function Deleted(Quest, QuestGiver, Player)
    while HasItem(player, 13532, 1) do
	    RemoveItem(Player, 13532)
	end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end