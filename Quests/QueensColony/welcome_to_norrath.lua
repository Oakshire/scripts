--[[
    Script Name    : Quests/QueensColony/welcome_to_norrath.lua
    Script Author  : Zcoretri
    Script Date    : 2015.08.03
    Script Purpose : Handles the quest, "Welcome to Norrath"

        Zone       : The Queens Colony
        Quest Giver: Proximity
        Preceded by: None
        Followed by: The Art of Combat
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "Speak to Murrar Shar, outside the entrance of Myrrin's Tower in the center of the colony.", 1, "Murrar Shar awaits you at Myrrin's Tower.", 0, 2530076)
    AddQuestStepCompleteAction(Quest, 1, "step1_complete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete(Quest, QuestGiver, Player)
    UpdateQuestDescription(Quest, "I have spoken with Murrar Shar.")
	UpdateQuestTaskGroupDescription(Quest, "I have spoken with Murrar Shar.")
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   step1_complete(Quest, QuestGiver, Player)
    end
end