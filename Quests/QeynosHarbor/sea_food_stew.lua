--[[
    Script Name    : Quests/QeynosHarbor/sea_food_stew.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.13 07:06:43
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Cordun Brenland
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill two Coldwind barracudas.", 2, 100, "I need to head out into Antonica and get two barracuda, a manta ray and two sea turtles. I can probably find them south of the Qeynos docks.", 2541, 121238,120081)
	AddQuestStepKill(Quest, 2, "Kill two sea turtles.", 2, 100, "I need to head out into Antonica and get two barracuda, a manta ray and two sea turtles. I can probably find them south of the Qeynos docks.", 201, 120033,121212)
	AddQuestStepKill(Quest, 3, "Kill one Coldwind mantaray.", 1, 100, "I need to head out into Antonica and get two barracuda, a manta ray and two sea turtles. I can probably find them south of the Qeynos docks.", 86, 120084,121240)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step2Complete")
    UpdateQuestZone(Quest,"Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay!  Okay, I'm going.")
	StartConversation(conversation, QuestGiver, Player, "Off with you then!  I'm busy here planning my next move.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end



function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've caught two Coldwind barracuda.")
	CheckProgress(Quest, QuestGiver, Player)
end


function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've caught two sea turtles.")
CheckProgress(Quest, QuestGiver, Player)
end


function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've caught a Coldwind mantaray.")
   CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5585, 1) and QuestStepIsComplete(Player, 5585, 2)  and QuestStepIsComplete(Player, 5585, 3)  then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the two barracuda, a manta ray and two sea turtles as Cordun requested.")
    UpdateQuestZone(Quest,"Qeynos Harbor")
	AddQuestStepChat(Quest, 4, "I need to deliver this sea food to Cordun Brenland.", 1, "Cordun Brenland in Qeynos Harbor is waiting for this sea food delivery.", 2541, 2210501)
    AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
   end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the sea food Cordun requested.")
	UpdateQuestStepDescription(Quest, 4, "I've returned to Cordun Brenland.")
	UpdateQuestDescription(Quest, "I've brought back the sea food catch and it turns out it was for a stew, though it wasn't intended to be shared with me.")
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
		CheckProgress(Quest, QuestGiver, Player)
	end
end