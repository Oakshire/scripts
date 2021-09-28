--[[
    Script Name    : Quests/TheDownBelow/working_the_down_below.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.27 06:09:27
    Script Purpose : 

        Zone       : TheDownBelow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	local RandomChoice = MakeRandomInt(1, 8)
	if RandomChoice == 1 then
	AddQuestStepKill(Quest, 1, "Get four forgotten soul rib cages.", 4, 100, "I've agreed to help merchant Adair Barnes gather items she intends on selling to her buyers in the Down Below.", 90, 1990032)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    elseif RandomChoice == 2 then
    AddQuestStepKill(Quest, 1, "Get four tortured soul rib cages.", 4, 100, "I've agreed to help merchant Adair Barnes gather items she intends on selling to her buyers in the Down Below.", 90, 1990038)
	AddQuestStepCompleteAction(Quest, 1, "Step2Complete")
	elseif RandomChoice == 3 then
		AddQuestStepKill(Quest, 1, "Get four venomous watcher fangs.", 4, 100, "I've agreed to help merchant Adair Barnes gather items she intends on selling to her buyers in the Down Below.", 163, 1990036)
	AddQuestStepCompleteAction(Quest, 1, "Step3Complete")  
	elseif RandomChoice == 4 then
	AddQuestStepKill(Quest, 1, "Get four venomous keeper fangs.", 4, 100, "I've agreed to help merchant Adair Barnes gather items she intends on selling to her buyers in the Down Below.", 163, 1990037)
	AddQuestStepCompleteAction(Quest, 1, "Step4Complete")    
	elseif RandomChoice == 5 then
		AddQuestStepKill(Quest, 1, "Get four frenzied watcher fangs.", 4, 100, "I've agreed to help merchant Adair Barnes gather items she intends on selling to her buyers in the Down Below.", 163, 1990039)
	AddQuestStepCompleteAction(Quest, 1, "Step5Complete")  
	elseif RandomChoice == 6 then
		AddQuestStepKill(Quest, 1, "Get five vials of venom from frenzied watchers.", 5, 100, "I've agreed to help merchant Adair Barnes gather items she intends on selling to her buyers in the Down Below.", 178, 1990039)
	AddQuestStepCompleteAction(Quest, 1, "Step6Complete")   
	elseif RandomChoice == 7 then
	 	AddQuestStepKill(Quest, 1, "Get five vials of venom from rabid shrillers.", 5, 100, "I've agreed to help merchant Adair Barnes gather items she intends on selling to her buyers in the Down Below.", 178, 1990001)
	AddQuestStepCompleteAction(Quest, 1, "Step7Complete")
	elseif RandomChoice == 8 then
		AddQuestStepKill(Quest, 1, "Get five vials of venom from putrid vermin.", 5, 100, "I've agreed to help merchant Adair Barnes gather items she intends on selling to her buyers in the Down Below.", 178, 1990008, 1990010)
	AddQuestStepCompleteAction(Quest, 1, "Step8Complete")    
    end
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_adair_barnes/qey_catacomb01/merchant_barnes/merchant_barnes003.mp3", "", "", 800334803, 2767782322, Spawn)
	AddConversationOption(conversation, "Got it.")
	StartConversation(conversation, QuestGiver, Player, "Good. Let me write down in your journal what I need you to get.  Now hurry up, this stuff needs to stay fresh, got it?")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've got four forgotten soul rib cages.")
    Progress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've got tortured soul rib cages.")
    Progress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've got four venomous watcher fangs.")
   Progress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've got four venomous keeper fangs.")
    Progress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've got four frenzied watcher fangs.")
   Progress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've got five vials of venom.")
    Progress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I've got five vials of venom from rabid shrillers.")
    Progress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I've got five vials of venom from putrid vermin.")
	Progress(Quest, QuestGiver, Player)
end	

function Progress(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've got all of the items merchant Barnes asked me to obtain.  I should get them back to her as soon as possible.")
	AddQuestStepChat(Quest, 2, "I need to get this stuff to merchant Barnes.", 1, "I need to get these items back to merchant Barnes, here in the Down Below.", 11, 1990011)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 9, "I've spoken with merchant Barnes.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with and given merchant Barnes the items.")

	UpdateQuestDescription(Quest, "I've helped merchant Adair Barnes gather a bunch of items for her customers in the Down Below.  If I'm going to be in the area for a while perhaps she would like some more help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	     local RandomChoice = MakeRandomInt(1, 8)
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
	 elseif RandomChoice == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	 elseif RandomChoice == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	end	
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		
	end
end
