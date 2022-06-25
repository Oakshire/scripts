--[[
    Script Name    : Quests/Nettleville/sketch_the_qeynos_claymore_monument.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.24 03:06:44
    Script Purpose : 

        Zone       : Nettleville
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to sketch the Qeynos Claymore.", 7, "I need to search North Qeynos for the Qeynos Claymore monument.", 195, 295.30, -18.08, -21.15)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"North Qeynos")
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
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have sketched the Qeynos Claymore monument.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have sketched the Qeynos Claymore monument.")
    UpdateQuestZone(Quest,"Nettleville")
	AddQuestStepChat(Quest, 2, "I need to give my sketch to Smith Cayless Chambers.", 1, "I need to deliver my sketch of the Claymore Monument to Smith Cayless Chambers in Nettleville.", 195, 2330041)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Smith Cayless Chambers.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Smith Cayless Chambers.")
	
	UpdateQuestDescription(Quest, "I discovered and sketched the Qeynos Claymore monument. I have given the sketchpad to Smith Cayless Chambers in Nettleville. She paid me for my service and threw in a easel for my future artistic endeavors.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
