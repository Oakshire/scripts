--[[
    Script Name    : Quests/Hallmark/freeport_citizens_guide_to_opportunity.lua
    Script Author  : Dorbin
    Script Date    : 2023.07.01 12:07:16
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Renny Parvat will tell me about collecting objects in Norrath.", 1, "I'd better read the booklet from the Overlord.", 11, 1280039)
	AddQuestStepZoneLoc(Quest, 2, "I must see The Execution Plaza.",10, "I'd better read the booklet from the Overlord.", 11,103.81, -22.44, 44.12,168)
	AddQuestStepChat(Quest, 3, "I must see Sage Navarius Orvalis in North Freeport.", 10, "I'd better read the booklet from the Overlord.", 11, 1440031)
	AddQuestStepZoneLoc(Quest, 4, "I should look among the scattered bones of the Siege Lands in the Commonlands.",10, "I'd better read the booklet from the Overlord.", 11,-1327.83, -79.81, -274.91,33)
	AddQuestStepChat(Quest, 5, "I should speak with Taskmaster's Assistant Koz'ma at the Crossroads in the Commonlands.", 1, "I'd better read the booklet from the Overlord.", 11, 330260)
	AddQuestStepChat(Quest, 6, "I must speak with Cannix Silverflame in the Commonlands.", 1, "I'd better read the booklet from the Overlord.", 11, 330175)
	AddQuestStepChat(Quest, 7, "I should speak with Lieutenant Darrius near the castle in West Freeport.", 1, "I'd better read the booklet from the Overlord.", 11, 1680056)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end
	
	
function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've learned about collections from Mervos Stadrin.")
	CheckProgress(Quest, QuestGiver, Player)
end


function Step2Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 2, "I have seen the Execution Plaza.")
CheckProgress(Quest, QuestGiver, Player)
end


function Step3Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 3, "I have visited the Sage who sells books in Freeport.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "I am sure to find something interesting in the Siege Lands.")
   CheckProgress(Quest, QuestGiver, Player)
end


function Step5Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 5, "I've spoken with the Taskmaster.")
CheckProgress(Quest, QuestGiver, Player)
end


function Step6Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 6, "I have spoken with Cannix Silverflame.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 7, "I've spoken with Lieutenant Darrius.")
   CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5865, 1) and QuestStepIsComplete(Player, 5865, 2)  and QuestStepIsComplete(Player, 5865, 3) and 
    QuestStepIsComplete(Player, 5865, 4) and QuestStepIsComplete(Player, 5865, 5)  and QuestStepIsComplete(Player, 5865, 6) and QuestStepIsComplete(Player, 5865, 7)then
	UpdateQuestTaskGroupDescription(Quest, 1, "I should read the Conclusion of the booklet.")
	AddQuestStep(Quest, 8, "I've one last page to read in my citizenship book.", 1,100, "I am better equipped to prove ways I may be useful to Freeport.",2500)
    AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
    end
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "Long live The Overlord!")
	UpdateQuestTaskGroupDescription(Quest, 2, "Being a citizen has many responsibilities for me.")

	UpdateQuestDescription(Quest, "This book is one more example of the Overlord's concern with the welfare of all Freeport citizens. All praise the Overlord!")
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