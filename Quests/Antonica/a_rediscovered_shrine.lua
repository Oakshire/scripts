--[[
    Script Name    : Quests/Antonica/a_rediscovered_shrine.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.29 08:08:21
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I should find the shrine.", 10, "I should find the location of that shrine for Riason.", 11, 345, 5, 1185, 249)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
        FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
		AddConversationOption(conversation, "I hate sad goodbyes...")
		StartConversation(conversation, QuestGiver, Player, "Cooper's letter said the shrine is at the southern edge of the Thundering Steppes. That's quite a journey for someone like you, and I won't shed a tear if you do not return.") 
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the shrine.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the shrine to the far south of the Thundering Steppes.")

	AddQuestStepChat(Quest, 2, "I need to return to Riason Hanagom.", 1, "I need to return to Riason for my pay.", 11, 120150)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I received my payment.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I received my payment from Riason Hanagom.")

	UpdateQuestDescription(Quest, "That cretin Riason sent me to a shrine of disease! I found the Shrine of Bertoxxulous to the south of the Thundering Steppes covered with gnolls. If I get sick I am going to throttle that man...")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

