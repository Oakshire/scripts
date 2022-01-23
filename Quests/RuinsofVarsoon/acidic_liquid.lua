--[[
    Script Name    : Quests/RuinsofVarsoon/acidic_liquid.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.22 04:01:42
    Script Purpose : 

        Zone       : RuinsofVarsoon
        Quest Giver: a_bubbling_beaker 2560133
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
AddQuestStepChat(Quest, 1, "I need to find someone interested in the liquid.", 1, "I need to find someone interested in buying this liquid before the beaker breaks.", 176, 2380002)
    AddQuestStepCompleteAction(Quest, 1, "quest_complete")
    	UpdateQuestZone(Quest, "Baubbleshire")
end

function Accepted(Quest, QuestGiver, Player)
CloseConversation(QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, " found someone interested in the liquid.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a gnomish locksmith who wanted the liquid I found in Varsoon's lair.")

	UpdateQuestDescription(Quest, "It seems that I found someone interested in the liquid... Rebik Sprocketrock was working on what seemed to be an un-pickable lock... but it wasn't impervious to the liquid. He bought the remainder of the liquid on the spot for quite a hefty amount of coin.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Delivery(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end

