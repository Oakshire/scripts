--[[
    Script Name    : Quests/TheForestRuins/forest_ruins_volunteer.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.04 04:03:47
    Script Purpose : 

        Zone       : TheForestRuins
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
 local RandomChoice = MakeRandomInt(1, 6)

	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	if RandomChoice == 1 then
	AddQuestStepKill(Quest, 1, "Hunt badgers.", MakeRandomInt(6, 9), 100, "I'm supposed to reduce the local population of vermin here in the Forest Ruins.", 611, 1960017,1960011)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	elseif RandomChoice == 2 then
	AddQuestStepKill(Quest, 1, "Hunt turtles.", MakeRandomInt(6, 9), 100, "I'm supposed to reduce the local population of vermin here in the Forest Ruins.", 611, 1960012,1960009)
	AddQuestStepCompleteAction(Quest, 1, "Step2Complete")    
	elseif RandomChoice == 3 then
	AddQuestStepKill(Quest, 1, "Hunt snakes.", MakeRandomInt(6, 7), 100, "I'm supposed to reduce the local population of vermin here in the Forest Ruins.", 611, 1960018,1960122)
	AddQuestStepCompleteAction(Quest, 1, "Step3Complete") 
	elseif RandomChoice == 4 then
	AddQuestStepKill(Quest, 1, "Hunt beetles.", MakeRandomInt(6, 9), 100, "I'm supposed to reduce the local population of vermin here in the Forest Ruins.", 611, 1960034)
	AddQuestStepCompleteAction(Quest, 1, "Step4Complete") 
	elseif RandomChoice == 5 then
	AddQuestStepKill(Quest, 1, "Hunt spiders.", MakeRandomInt(6, 9), 100, "I'm supposed to reduce the local population of vermin here in the Forest Ruins.", 611, 1960022,1960031,1960033,1960082)
	AddQuestStepCompleteAction(Quest, 1, "Step5Complete") 
    elseif RandomChoice == 6 then
	AddQuestStepKill(Quest, 1, "Hunt centipedes.", MakeRandomInt(6, 8), 100, "I'm supposed to reduce the local population of vermin here in the Forest Ruins.", 611, 1960026)
	AddQuestStepCompleteAction(Quest, 1, "Step6Complete") 
   end
end


function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "	I've slain the badgers.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've slain the turtles.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've slain the snakes.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've slain the beetles.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've slain the spiders.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've slain six centipedes.")
   CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
if QuestStepIsComplete(Player, 5486, 1)  then
	UpdateQuestTaskGroupDescription(Quest, 2, "I've slain many of the local vermin in the area, I should report back to the Sergeant.")
	AddQuestStepChat(Quest, 2, "I need to report to Sergeant Uthros.", 1, "I should report back to Sergeant at Arms Uthros.", 11, 1960004)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
   end


function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with the Sergeant.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with the good Sergeant and was given some provisions for my services.")

	UpdateQuestDescription(Quest, "I've hunted a fair amount of local creatures; I'm sure Sergeant Uthros is happy for the help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
 local RandomChoice = MakeRandomInt(1, 6)
	if Step == 1 then
	   if RandomChoice == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	    elseif RandomChoice == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	    elseif RandomChoice == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	    elseif RandomChoice == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	    elseif RandomChoice == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	    elseif RandomChoice == 6 then
		Step6Complete(Quest, QuestGiver, Player)		
		end
	elseif Step == 2 then
		CheckProgress(Quest, QuestGiver, Player)
    end
end
