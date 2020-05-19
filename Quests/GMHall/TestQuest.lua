--[[
    Script Name    : Quests/GMHall/TestQuest.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.29 02:01:27
    Script Purpose : 

        Zone       : GMHall
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    	SetQuestFeatherColor(Quest, 2)
        AddQuestStepKill(Quest, 1, "I need to help clean up the area.", 1, 100, "The Gods have asked that i help with cleanup around the mythical hall.", 2693, 1970017)
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)

end

function Reload(Quest, QuestGiver, Player, Step)

end

