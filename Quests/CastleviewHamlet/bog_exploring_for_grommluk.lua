--[[
    Script Name    : Quests/CastleviewHamlet/bog_exploring_for_grommluk.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.26 06:01:18
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Grommluk
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
AddQuestStepLocation(Quest, 1, "I need to collect Peat Bog water.", 18, "I need to collect bog water in Grommluk's jar from the middle of Peat Bog.", 356, 667.10, -33.6, 501.99)	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
AddQuestStepCompleteAction(Quest, 1, "GatheredWater")
UpdateQuestZone(Quest, "The Peat Bog")
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

function GatheredWater(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I collected swamp water in the jar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected a sample of the Peat Bog water in Grommluk's jar.")

    UpdateQuestZone(Quest, "Peat Bog")
    AddQuestStepChat(Quest, 2, "I need to return to Grommluk.", 1, "I need to give the bog water to Grommluk so he may assess it.", 356, 2360030)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
    end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Grommluk.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the jar of Peat Bog water to Grommluk.")

        UpdateQuestZone(Quest, "Castleview Hamlet")
	UpdateQuestDescription(Quest, "I returned Grommluk's jar to him with swamp water I collected from the middle of Peat Bog.  He paid me for my exploration services.")
	GiveQuestReward(Quest, Player)
    end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GatheredWater(Quest, QuestGiver, Player)
	end
		if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
