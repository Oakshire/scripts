--[[
    Script Name    : Quests/Hallmark/starcrest_citizenship_task.lua
   Script Author  : Dorbin
    Script Date    : 2022.08.30 06:08:00
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: starcrest citizenship application
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather five tokens from the creatures in the Down Below.", 5, 20, "The catacombs have been seeded with tokens for the citizens of the Starcrest Commune to gather. These tokens may be found on any creatures in the Down Below.", 1342, 1990001, 1990002, 1990003, 1990004, 1990005, 1990006, 1990007, 1990008, 1990009, 1990010, 1990012, 1990013, 1990014, 1990015, 1990016, 1990017, 1990018, 1990019, 1990020, 1990021, 1990022, 1990023, 1990024, 1990025, 1990026, 1990027, 1990028, 1990029, 1990030, 1990031, 1990032, 1990033, 1990034, 1990035, 1990036, 1990037, 1990038, 1990039, 1990041, 1990042, 1990043, 1990044, 1990045, 1990054, 1990056, 1990096, 1990097, 1990098, 1990099, 1990100, 1990101, 1990102, 1990103, 1990104)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Down Below")
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
	UpdateQuestStepDescription(Quest, 1, "I have gathered five tokens from the Down Below.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the tokens required to prove my worth as a citizen.")
    UpdateQuestZone(Quest,"Starcrest Commune")
	AddQuestStep(Quest, 2, "I need to enter the citizenship trial.", 1, 100, "I must perform the citizenship trial by returning to the Citizenship Sign and entering the trial chamber",1342)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")   
end

function Step2Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've entered the citizenship trial.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've entered the citizenship trial.")
    UpdateQuestZone(Quest,"Qeynos Citizenship Trial Chamber")
	AddQuestStepChat(Quest, 3, "I need to speak with Marshal Glorfel regarding my Citizenship Trial.", 1, "I need to speak with Marshal Glorfel regarding my Citizenship Trial", 1342, 22101350)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")   
end

function Step3Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've entered the citizenship trial.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've entered the citizenship trial.")

 	AddQuestStepChat(Quest, 4, "I need to judge the traitors.",1, "Marshal Glorfel has tasked me with rendering judgment upon some treasonous residents in order to gain citizenship.  He has pointed out that there are those who would betray our great city to that wretch Lucan.  To prove myself, I will have to render final judgment on all of them. ",0,22101351)
 	AddQuestStepChat(Quest, 5, "I need to judge the traitors.",1, "Marshal Glorfel has tasked me with rendering judgment upon some treasonous residents in order to gain citizenship.  He has pointed out that there are those who would betray our great city to that wretch Lucan.  To prove myself, I will have to render final judgment on all of them. ",0,22101354)
 	AddQuestStepChat(Quest, 6, "I need to judge the traitors.",1, "Marshal Glorfel has tasked me with rendering judgment upon some treasonous residents in order to gain citizenship.  He has pointed out that there are those who would betray our great city to that wretch Lucan.  To prove myself, I will have to render final judgment on all of them. ",0,22101353)
    AddQuestStepChat(Quest, 7, "I need to judge the traitors.",1, "Marshal Glorfel has tasked me with rendering judgment upon some treasonous residents in order to gain citizenship.  He has pointed out that there are those who would betray our great city to that wretch Lucan.  To prove myself, I will have to render final judgment on all of them. ",0,22101352)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")   
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")   
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")   
    AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've judged the Freeport mole.")
	CheckProgress(Quest, QuestGiver, Player)
end


function Step5Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 5, "I've judged the disgruntled refugee.")
CheckProgress(Quest, QuestGiver, Player)
end


function Step6Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 6, "I've judged the Freeport partisan.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 7, "I've judged Tavithi N'sari.")
   CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5722, 4) and QuestStepIsComplete(Player, 5722, 5)  and QuestStepIsComplete(Player, 5722, 6) and QuestStepIsComplete(Player, 5722, 7)then
	UpdateQuestTaskGroupDescription(Quest, 7, "I have dealt with the traitors")
	AddQuestStepChat(Quest, 8, "I need to return to Marshal Glorfel.", 1, "I must return to Marshal Glorfel to let him know the deed is done.",0, 22101350)
    AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
    end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "Qeynos Citizenship Granted")
	UpdateQuestTaskGroupDescription(Quest, 8, "I returned to Marshal Glorfel and he has granted me Qeynos citizenship.")

	UpdateQuestDescription(Quest, "The task list is completed and you may now apply to become a citizen of the city of Qeynos.")
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
    Step5Complete(Quest, QuestGiver, Player)
    elseif Step == 6 then
	Step6Complete(Quest, QuestGiver, Player)
    elseif Step == 7 then
	Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
	QuestComplete(Quest, QuestGiver, Player)
	end
end
