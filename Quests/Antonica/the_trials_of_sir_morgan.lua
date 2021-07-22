--[[
    Script Name    : Quests/Antonica/the_trials_of_sir_morgan.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 09:07:04
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Relive the scarecrow battle.", 10, 100, "I should find ancient crop fields in Thundering Steppes and do battle with scarecrows just like in the book.", 611, 2490321, 2490323, 120156, 121300)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end


function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the scarecrows like in the book.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I did battle with animated scarecrows within the Thundering Steppes, just as Sir Morgan did.")
	
	AddQuestStep(Quest, 2, "I must read more in \"The Trials of Sir Morgan.\"", 1, 100, "I need to recreate the battle with the sirens at the submerged pyramid within Thundering Steppes.", 611)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "	I have read more of Sir Morgan's trials.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have read more of Sir Morgan's trials within the book.")
    
    AddQuestStepKill(Quest, 3, "Relive the siren battle.", 6, 100, "I need to recreate the battle with the sirens at the submerged pyramid within Thundering Steppes.", 611, 2490245, 2490405, 2490300, 2490678, 2490117)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end


function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I killed the sirens like in the book.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I recreated the battle with the sirens at the submerged pyramid in Thundering Steppes.")
	
		AddQuestStep(Quest, 4, "I must read more in \"The Trials of Sir Morgan.\"", 1, 100, "I need to recreate the battle with the sirens at the submerged pyramid within Thundering Steppes.", 611)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end	

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have read more of Sir Morgan's trials.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have read more of Sir Morgan's trials within the book.")
	
	    	AddQuestStepKill(Quest, 5, "Battle the revenant scouts.", 4, 100, "I need to recreate the battle with the Bloodsaber knights that took place at a bridge spanning the now dry Plaincutter River in Thundering Steppes.", 611, 2490151)
	AddQuestStepKill(Quest, 6, "Battle the revenant soldiers.", 6, 100, "I need to recreate the battle with the Bloodsaber knights that took place at a bridge spanning the now dry Plaincutter River in Thundering Steppes.", 611, 2490249)
AddQuestStepKill(Quest, 7, "Battle the revenant commander.", 1, 100, "I need to recreate the battle with the Bloodsaber knights that took place at a bridge spanning the now dry Plaincutter River in Thundering Steppes.", 611, 2490269)
AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
 	UpdateQuestStepDescription(Quest, 5, "I killed the revenant scouts.")   
    CheckProgress(Quest, QuestGiver, Player)
 end   
 
 function Step6Complete(Quest, QuestGiver, Player)
 	UpdateQuestStepDescription(Quest, 6, "I killed the revenant soldiers.")   
    CheckProgress(Quest, QuestGiver, Player)
 end   
  function Step7Complete(Quest, QuestGiver, Player)
 	UpdateQuestStepDescription(Quest, 7, "I killed the revenant commander.") 
    CheckProgress(Quest, QuestGiver, Player)
 end   
 
 function CheckProgress(Quest, QuestGiver, Player)
if QuestStepIsComplete(Player, 5330, 5) and QuestStepIsComplete(Player, 5330, 6) and QuestStepIsComplete(Player, 5330, 7) then
    
	
		AddQuestStep(Quest, 8, "I must read more in \"The Trials of Sir Morgan.\"", 1, 100, "I need to recreate the battle with the sirens at the submerged pyramid within Thundering Steppes.", 611)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end
   end
 
 function Step8Complete(Quest, QuestGiver, Player)
     	UpdateQuestStepDescription(Quest, 8, "I have read more of Sir Morgan's trials.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have read more of Sir Morgan's trials within the book.")

	AddQuestStepKill(Quest, 9, "Battle the fallen giants.", 4, 100, "I need to recreate the battle with the giants near a bridge spanning a dead end river in Thundering Steppes.", 611, 2490084)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

 function Step9Complete(Quest, QuestGiver, Player)
 	UpdateQuestStepDescription(Quest, 9, "I killed the undead fallen giants.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I recreated the battle with the giants in the Valley of the Ancients in Thundering Steppes.")
		AddQuestStep(Quest, 10, "I must read more in \"The Trials of Sir Morgan.\"", 1, 100, "I need to recreate the battle with the sirens at the submerged pyramid within Thundering Steppes.", 611)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
 end
 
 
 function Step10Complete(Quest, QuestGiver, Player)
         	UpdateQuestStepDescription(Quest, 10, "I have read more of Sir Morgan's trials.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I have read more of Sir Morgan's trials within the book.")
	
	AddQuestStepKill(Quest, 11, "Battle the unbound familiars.", 2, 100, "I need to recreate the battle with the familiars amidst the ruins of the Keep of Immortality in Thundering Steppes.", 611, 2490335)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end


 function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I killed the unbound familiars.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I recreated the battle with the unbound familiars in the ruins of the Keep of Immortality in Thundering Steppes.")
	
			AddQuestStep(Quest, 12, "I must read more in \"The Trials of Sir Morgan.\"", 1, 100, "I need to recreate the battle with the sirens at the submerged pyramid within Thundering Steppes.", 611)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end


 function Step12Complete(Quest, QuestGiver, Player)
              	UpdateQuestStepDescription(Quest, 12, "I have read more of Sir Morgan's trials.")
	UpdateQuestTaskGroupDescription(Quest, 9, "I have read more of Sir Morgan's trials within the book.")
	
	AddQuestStepZoneLoc(Quest, 13, "Examine the center of the circle of thorns.", 5, "I need to visit the area of Thundering Steppes that looks like a circle of titanic thorns or fangs. I should search the center of this circle.", 2142, 170.3, -7.29, 1080.61, 249)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I discovered the Amulet of Ullkorruuk and encountered Squire Wimbley's evil spirit.")
	UpdateQuestTaskGroupDescription(Quest, 10, "I discovered an Amulet of Ullkorruuk at the basin of the circle of thorns.")
	
				AddQuestStep(Quest, 14, "I must read more in \"The Trials of Sir Morgan.\"", 1, 100, "I need to recreate the battle with the sirens at the submerged pyramid within Thundering Steppes.", 611)
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
end

function Step14Complete(Quest, QuestGiver, Player)
              	UpdateQuestStepDescription(Quest, 14, "I have read more of Sir Morgan's trials.")
	UpdateQuestTaskGroupDescription(Quest, 11, "I have read more of Sir Morgan's trials within the book.")
	
	
	AddQuestStepChat(Quest, 15, "Speak to Rikantus in Evernight Cemetery.", 1, "I need to revisit Rikantus at Evernight Cemetery in Antonica. His promise of fortune did not transpire.", 11, 120403)
	AddQuestStepCompleteAction(Quest, 15, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 15, "I spoke to Rikantus in Evernight Cemetery.")
	UpdateQuestTaskGroupDescription(Quest, 12, "I spoke to Rikantus and gave him the Amulet of Ulkkorruuk in exchange for another promise of fortune.")
    if HasItem(Player, 14355) then
    RemoveItem(Player, 14355)
    end
	UpdateQuestDescription(Quest, "Visiting the location of the story 'The Trials of Sir Morgan' has led me to do battle and eventually earned me a useless amulet. Rikantus said it was the 'Amulet of Ullkorruuk' and that it belonged to his ancestors.")
	GiveQuestReward(Quest, Player)
end




function Accepted(Quest, QuestGiver, Player)
    
end

function Declined(Quest, QuestGiver, Player)

end



function Reload(Quest, QuestGiver, Player, Step)

end

