--[[
    Script Name    : Quests/RuinsofVarsoon/beware_of_biting_books_.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.23 04:01:46
    Script Purpose : 

        Zone       : RuinsofVarsoon
        Quest Giver: widget_varsoon_scroll
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy six enchanted tomes in the Ruins of Varsoon.", 6, 100, "The enchanted tomes in the Ruins of Varsoon should be destroyed before they spring their trap on a hapless adventurer.", 715, 2560030)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_Golems")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_Golems(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the enchanted tomes.")
	UpdateQuestTaskGroupDescription(Quest, 2, "The enchanted tomes have been destroyed.")
	UpdateQuestDescription(Quest, "I have destroyed the books as I have encountered them, I hope I have spared at least one unwary traveler the pain of their bite.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Init(Quest, QuestGiver, Player)
    end
end
