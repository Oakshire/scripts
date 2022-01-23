--[[
    Script Name    : Quests/RuinsofVarsoon/inner_strength_.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.22 09:01:46
    Script Purpose : 

        Zone       : RuinsofVarsoon
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect five souls from enchanted clays in the Ruins of Varsoon.", 5, 60, "The enchanted clays in the Ruins of Varsoon contain souls of great warriors from the past. I want to collect these souls and learn from their experiences.", 1208, 2560028)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_Golems")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_Golems(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the souls.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have slain the clay and collected the souls as well. I feel like I have learned a great deal from them.")
	UpdateQuestDescription(Quest, "I have slain the enchanted clays and feel stronger in my knowledge of battle techniques.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Init(Quest, QuestGiver, Player)
    end
end
