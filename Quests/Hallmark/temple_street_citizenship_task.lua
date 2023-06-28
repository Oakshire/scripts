--[[
    Script Name    : Quests/Hallmark/temple_street_citizenship_task.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.27 03:06:21
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather five tokens from the creatures in the Ruins.", 5, 34, "The Thieves' Way has been seeded with tokens for the residents of Temple Street to gather. These tokens may be found on any creatures in the Thieves' Way.", 1379, 1540000,154002,1540003,1540004,1540005,1540006,1540007,1540008,1540009,1540010,1540011,1540012,1540013,1540014,1540015,1540016,1540017,1540018,1540019,1540020,1540021,1540022,1540023,1540023,1540025,1540026,1540027,1540028,1540029,1540031,1540032,1540040,1540041,1540042,1540045,1540043,1540044,1540046,1540072,1540073)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Theives Way")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have gathered five tokens from the Ruins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the tokens required to prove my worth as a citizen.")
    UpdateQuestZone(Quest,"Temple Street")
	AddQuestStep(Quest, 2, "I need to enter the citizenship trial.", 1, 100, "I must perform the citizenship trial by returning to the Citizenship Sign and entering the trial chamber",1335)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")   
end

function Step2Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've entered the citizenship trial.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've entered the citizenship trial.")
    UpdateQuestZone(Quest,"Uncovered Traitors Hideout")
	AddQuestStepChat(Quest, 3, "I need to speak with Abbetor T'Avi regarding my Citizenship Trial.", 1, "I need to speak with Abbetor T'Avi regarding my Citizenship Trial", 1350, 1640000)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")   
end

function Step3Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've entered the citizenship trial.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've entered the citizenship trial.")

 	AddQuestStepChat(Quest, 4, "I need to judge the traitors.",1, "Abbetor T'Avi has tasked me with rendering judgment upon some treasonous residents in order to gain citizenship.  He has pointed out that there are those who would betray our great city to that wretch Lucan.  To prove myself, I will have to render final judgment on all of them. ",0,22101351)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")   
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've judged the traitors.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have dealt with the traitors")
	AddQuestStepChat(Quest, 5, "I need to return to Abbetor T'Avi.", 1, "I must return to Abbetor T'Avi to let her know the deed is done.",0, 1640000)
    AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "Freeport Citizenship Granted")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Abbetor T'Avi and she has granted me Freeport citizenship.")

	UpdateQuestDescription(Quest, "The task list is completed and you may now apply to become a citizen of the city of Freeport.")
	GiveQuestReward(Quest, Player)
end



function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	Step1Complete(Quest, QuestGiver, Player)
    elseif Step == 2 then	    
    Step2Complete(Quest, QuestGiver, Player)
    elseif Step == 3 then	    
    Step3Complete(Quest, QuestGiver, Player)
    elseif Step == 4 then	    
    Step4Complete(Quest, QuestGiver, Player)
    elseif Step == 5 then	    
	QuestComplete(Quest, QuestGiver, Player)
	end
end
