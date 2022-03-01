--[[
    Script Name    : Quests/TheForestRuins/vaughns_stuff.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.21 02:02:37
    Script Purpose : 

        Zone       : TheForestRuins
        Quest Giver: Outrider Vaughn
        Preceded by: None
        Followed by: Letter for Hunter Forestdeep (5484)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Recover the satchel.", 1, 25, " I need to recover the Outlander's satchel and the items that were in it. The Blackfurl deckhands were the ones that stole the Outlanders gear, I'll start with them.", 399, 1960060 )
	AddQuestStepKill(Quest, 2, "Recover the journal.", 1, 25, " I need to recover the Outlander's satchel and the items that were in it. The Blackfurl deckhands were the ones that stole the Outlanders gear, I'll start with them.", 195, 1960060 ) -- need correct icon
	AddQuestStepKill(Quest, 3, "Recover the ring.", 1, 20, " I need to recover the Outlander's satchel and the items that were in it. The Blackfurl deckhands were the ones that stole the Outlanders gear, I'll start with them.", 596, 1960060 ) -- need correct icon
	AddQuestStepKill(Quest, 4, "Recover the sealed letter.", 1, 25, " I need to recover the Outlander's satchel and the items that were in it. The Blackfurl deckhands were the ones that stole the Outlanders gear, I'll start with them.", 1223, 1960060) -- need correct icon
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")	
end



function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found the satchel.")
	CheckProgress(Quest, QuestGiver, Player)
end


function Step2Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 2, "I've found the journal.")
CheckProgress(Quest, QuestGiver, Player)
end


function Step3Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 3, "I've found the ring.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 4, "I've found the letter.")
   CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5483, 1) and QuestStepIsComplete(Player, 5483, 2)  and QuestStepIsComplete(Player, 5483, 3) and QuestStepIsComplete(Player, 5483, 4) then
	UpdateQuestTaskGroupDescription(Quest,1, "I've recovered all of the Outlander's gear.")
	
	AddQuestStepChat(Quest, 5, "I should return to Outlander Vaughn.", 1, "I need to return to Outlander Vaughn and give him back his items.", 399, 1960053)
    AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
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
	UpdateQuestStepDescription(Quest, 5, "I've returned the items to the Outlander.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The Outlander was grateful to get his gear back.")

	UpdateQuestDescription(Quest, "I eventually found all of Outlander Vaughn's items. He was grateful and asked if I would help him with something else.")
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

