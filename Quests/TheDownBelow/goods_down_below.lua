--[[
    Script Name    : Quests/TheDownBelow/goods_down_below.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.28 06:10:27
    Script Purpose : 

        Zone       : TheDownBelow
        Quest Giver: Falin Shaloon(1990040)
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    local RandomChoice = MakeRandomInt(1, 3)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	if RandomChoice == 1 then
	AddQuestStepKill(Quest, 1, "Get six malefic arachnid fangs.", 6, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 163, 1990020, 1990021) 
		AddQuestStepKill(Quest, 2, "Get six venom spitter fangs.", 6, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 163, 1990029, 1990035)
			AddQuestStepKill(Quest, 3, "Get four crypt substances' slime.", 4, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 158, 1990003)
				AddQuestStepKill(Quest, 4, "Get four tomb rifter pest shells.", 4, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 162, 1990033)
					AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
					AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
						AddQuestStepCompleteAction(Quest, 3, "Step3Complete") 
							AddQuestStepCompleteAction(Quest, 4, "Step4Complete") 
	elseif RandomChoice == 2 then
				AddQuestStepKill(Quest, 1, "Get five coiled burrower skins.", 5, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 172, 1990009)
	AddQuestStepKill(Quest, 2, "Get five tomb forager skulls.", 5, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 91, 1990002, 1990005)
AddQuestStepKill(Quest, 3, "Get four tomb rifter hatchling shells.", 4, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 162, 1990019, 1990031)
	AddQuestStepKill(Quest, 4, "Get six malefic arachnid fangs.", 6, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 163, 1990020, 1990021) 
						AddQuestStepCompleteAction(Quest, 1, "Step1_2Complete")
					AddQuestStepCompleteAction(Quest, 2, "Step2_2Complete")
						AddQuestStepCompleteAction(Quest, 3, "Step3_2Complete") 
							AddQuestStepCompleteAction(Quest, 4, "Step4_4Complete") 
		elseif RandomChoice == 3 then	
			AddQuestStepKill(Quest, 1, "Get four tomb rifter bleeder shells.", 4, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 162, 1990045, 1990046, 1990047, 1990044)    
           				AddQuestStepKill(Quest, 2, "Get five coiled burrower skins.", 5, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 172, 1990009)
           						AddQuestStepKill(Quest, 3, "Get six venom spitter fangs.", 6, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 163, 1990029, 1990035)
           							AddQuestStepKill(Quest, 4, "Get five tomb forager skulls.", 5, 100, "I need to collect an assortment of beetle part; spider parts; and rotting humanoids while here in the Down Below.", 91, 1990002, 1990005)
           													AddQuestStepCompleteAction(Quest, 1, "Step1_3Complete")
					AddQuestStepCompleteAction(Quest, 2, "Step2_3Complete")
						AddQuestStepCompleteAction(Quest, 3, "Step3_3Complete") 
							AddQuestStepCompleteAction(Quest, 4, "Step4_3Complete") 
end
   end



function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've got the malefic arachnid fangs.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
		UpdateQuestStepDescription(Quest, 2, "I've got the venom spitter fangs.")
		CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've gotten the crypt substances' slime.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've got the coiled burrower skins.")
	CheckProgress(Quest, QuestGiver, Player)
end

-----
function Step1_2Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 1, "I've got the coiled burrower skins.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2_2Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 2, "I've got the tomb forager skulls.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3_2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've got the tomb rifter hatchling shells.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4_2Complete(Quest, QuestGiver, Player)
	 	UpdateQuestStepDescription(Quest, 4, "I've got the malefic arachnid fangs.")
	CheckProgress(Quest, QuestGiver, Player)
end


-----

function Step1_3Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 1, "I've got the tomb rifter bleeder shells.")
    CheckProgress(Quest, QuestGiver, Player)
end


function Step2_3Complete(Quest, QuestGiver, Player)
     	UpdateQuestStepDescription(Quest, 2, "I've got the coiled burrower skins.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3_3Complete(Quest, QuestGiver, Player)
     	UpdateQuestStepDescription(Quest, 3, "I've got the venom spitter fangs.")
    CheckProgress(Quest, QuestGiver, Player)
end


function Step4_3Complete(Quest, QuestGiver, Player)
     	UpdateQuestStepDescription(Quest, 4, "I've got the tomb forager skulls.")
    CheckProgress(Quest, QuestGiver, Player)
end



function CheckProgress(Quest, QuestGiver, Player)
      if QuestStepIsComplete(Player, 5376, 1) and QuestStepIsComplete(Player, 5376, 2) and QuestStepIsComplete(Player, 5376, 3) and QuestStepIsComplete(Player, 5376, 4) then
   	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered all of the items Falin wanted.  I should bring them back to him now.")
	AddQuestStepChat(Quest, 5, "I need to return to merchant Falin Shaloon.", 1, "I need to return to merchant Failin Shaloon and give him all of his &quot;supplies&quot;.", 11, 1990040)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
   end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've completed my task for Falin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Falin and gave him his supplies.")

	UpdateQuestDescription(Quest, "I got everything Falin wanted, though I'm not sure if it was worth my time, but if I'm going to be down here anyway maybe I'll help him again.")
	GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
    local RandomChoice = MakeRandomInt(1, 3)
	if Step == 1 then
	   if RandomChoice == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	  elseif RandomChoice == 2 then
		Step1_2Complete(Quest, QuestGiver, Player)
	   elseif RandomChoice == 3 then
		Step1_3Complete(Quest, QuestGiver, Player)
	end	
elseif Step == 2 then
    	 if RandomChoice == 1 then
		Step2Complete(Quest, QuestGiver, Player)
	  elseif RandomChoice == 2 then
		Step2_2Complete(Quest, QuestGiver, Player)
	   elseif RandomChoice == 3 then
		Step2_3Complete(Quest, QuestGiver, Player)
		end
elseif Step == 3 then
        if RandomChoice == 1 then
		Step3Complete(Quest, QuestGiver, Player)
	  elseif RandomChoice == 2 then
		Step3_2Complete(Quest, QuestGiver, Player)
	   elseif RandomChoice == 3 then
		Step3_3Complete(Quest, QuestGiver, Player)
		end
elseif Step == 4 then
            if RandomChoice == 1 then
		Step4Complete(Quest, QuestGiver, Player)
	  elseif RandomChoice == 2 then
		Step4_4Complete(Quest, QuestGiver, Player)
	   elseif RandomChoice == 3 then
		Step4_3Complete(Quest, QuestGiver, Player)
		end
elseif Step == 5 then    
		QuestComplete(Quest, QuestGiver, Player)
	end
end

