--[[
    Script Name    : Quests/Hallmark/nettleville_citizenship_task.lua
   Script Author  : Dorbin
    Script Date    : 2022.08.30 06:08:00
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: nettleville citizenship application
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather five tokens from the creatures in the Peat Bog.", 5, 20, "The local bog have been seeded with tokens for the citizens of Nettleville Hovel to gather. These tokens may be found on any creatures in the Peat Bog.", 1341, 1980002, 1980003, 1980004, 1980006, 1980007, 1980008, 1980009, 1980010, 1980011, 1980015, 1980017, 1980018, 1980019, 1980021, 1980022, 1980026, 1980027, 1980031, 1980033, 1980034, 1980036, 1980037, 1980038, 1980039, 1980040, 1980041, 1980042, 1980044, 1980045, 1980046, 1980047, 1980048, 1980049, 1980050, 1980051, 1980052, 1980053, 1980054, 1980055, 1980056, 1980060, 1980061, 1980062, 1980064, 1980065, 1980066, 1980067, 1980068, 1980069, 1980070, 1980072, 1980076, 1980078, 1980079, 1980115, 1980116, 1980117, 1980118, 1980119, 1980127, 1980128, 1980129, 1980130, 1980131	)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Peat Bog")
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
	UpdateQuestStepDescription(Quest, 1, "I have gathered five tokens from the Peat Bog.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the tokens required to prove my worth as a citizen.")
    UpdateQuestZone(Quest,"Nettleville")
	AddQuestStep(Quest, 2, "I need to enter the citizenship trial.", 1, 100, "I must perform the citizenship trial by returning to the Citizenship Sign and entering the trial chamber",1341)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")   
end

function Step2Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've entered the citizenship trial.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've entered the citizenship trial.")
    UpdateQuestZone(Quest,"Qeynos Citizenship Trial Chamber")
	AddQuestStepChat(Quest, 3, "I need to speak with Marshal Glorfel regarding my Citizenship Trial.", 1, "I need to speak with Marshal Glorfel regarding my Citizenship Trial", 1341, 22101350)
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
    if QuestStepIsComplete(Player, 5721, 4) and QuestStepIsComplete(Player, 5721, 5)  and QuestStepIsComplete(Player, 5721, 6) and QuestStepIsComplete(Player, 5721, 7)then
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
