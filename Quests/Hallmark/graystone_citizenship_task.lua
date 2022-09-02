--[[
    Script Name    : Quests/Hallmark/graystone_citizenship_task.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 07:08:46
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: graystone citizenship application
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather five tokens from the creatures in the Oakmyst Forest.", 5, 20, "The local forests have been seeded with tokens for the citizens of Graystone Yard to gather. These tokens may be found on any creatures in the Oakmyst Forest.", 1333, 1950000, 1950001, 1950002, 1950006, 1950007, 1950009, 1950010, 1950013, 1950014, 1950015, 1950016, 1950017, 1950018, 1950019, 1950020, 1950023, 1950026, 1950028, 1950029, 1950032, 1950033, 1950034 , 1950035, 1950036, 1950039, 1950046, 1950047, 1950054, 1950056, 1950057, 1950062, 1950064, 1950065, 1950066, 1950067, 1950070, 1950074, 1950124, 1950125, 1950126, 1950131)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Oakmyst Forest")
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
	UpdateQuestStepDescription(Quest, 1, "I have gathered five tokens from the Oakmyst Forest.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the tokens required to prove my worth as a citizen.")
    UpdateQuestZone(Quest,"Baubbleshire")
	AddQuestStep(Quest, 2, "I need to enter the citizenship trial.", 1, 100, "I must perform the citizenship trial by returning to the Citizenship Sign and entering the trial chamber",1333)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")   
end

function Step2Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've entered the citizenship trial.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've entered the citizenship trial.")
    UpdateQuestZone(Quest,"Qeynos Citizenship Trial Chamber")
	AddQuestStepChat(Quest, 3, "I need to speak with Marshal Glorfel regarding my Citizenship Trial.", 1, "I need to speak with Marshal Glorfel regarding my Citizenship Trial", 1333, 22101350)
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
    if QuestStepIsComplete(Player, 5720, 4) and QuestStepIsComplete(Player, 5720, 5)  and QuestStepIsComplete(Player, 5720, 6) and QuestStepIsComplete(Player, 5720, 7)then
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
