--[[
    Script Name    : Quests/CastleviewHamlet/a_jug_of_water_for_the_hole_in_the_wall_.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.26 04:01:57
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Bulurg
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to get near the Oakmyst falls.", 3, "I must go into Oakmyst Forest and find the waterfall. There I will fill the jug.", 310, 993.6, 0.9, -203.21)
	AddQuestStepCompleteAction(Quest, 1, "FoundWater")
	UpdateQuestZone(Quest, "Oakmyst Forest")
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

function FoundWater(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I got near the Oakmyst falls.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I discovered the Oakmyst waterfall and filled the jug with its pure water.")
    
    UpdateQuestZone(Quest, "Castleview Hamlet")
	AddQuestStepChat(Quest, 2, "I need return to Bulurg.", 3, "I need to bring this full jug back to Bulurg.", 310, 2360021)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I returned to Bulurg.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Bulurg the pure water he requested.")
    
	UpdateQuestDescription(Quest, "I filled the jug with fall water from the Oakmyst waterfall. I then gave the filled jug to Bartender Bulurg for the creation of a new high elf drink called 'Tunare's Finest.' In return I received a small reward.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		FoundWater(Quest, QuestGiver, Player)
	if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
end