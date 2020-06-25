--[[
	Script Name	: Quests/NektroposCastle/VisionsOfHatred.lua
	Script Purpose	: 
	Script Author	: smash
	Script Date	: 2016.1.24

        Zone            : Nektropos Castle
        Quest Giver     : None
        Preceded by     : None
        Followed by     : None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "The Everling manservants must pay for what they've done!", 1, 100, "I must slay the Everling manservants.", 611, 1780038, 1780040, 1780036)
	AddQuestStepCompleteAction(Quest, 1, "AddStep2")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function AddStep2(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found a guestroom key!")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a guestroom key while slaying Everling manservants.")
	GiveQuestItem(Quest, Player, "", 7979)
	AddQuestStep(Quest, 2, "Examine the key.", 1, 100, "Inspect the key I found on the manservants.", 1007)
	AddQuestStepCompleteAction(Quest, 2, "Completed")
end

function Completed(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	UpdateQuestStepDescription(Quest, 2, "I have examined the key.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found a guestroom key!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		AddStep2(Quest)
	end
end