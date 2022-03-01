--[[
    Script Name    : Quests/Antonica/she_had_ribbons_in_her_hair.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 09:08:42
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Licha
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should hunt highwaymen.", 3, 35, "Licha wants ribbons in her hair. She said that some highwaymen stole her ribbons.", 1235, 121495, 120161, 120162, 120171, 120440, 121313, 121305, 121306)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will return shortly.")
	StartConversation(conversation, QuestGiver, Player, "And be quick about it!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I recovered the ribbons.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I recovered Licha's ribbons.")

	AddQuestStepChat(Quest, 2, "I should return the ribbons to Licha.", 1, "Now that I have the ribbons, I should take them to Licha.", 1235, 121308)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned the ribbons to Licha.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the ribbons to Licha.")

	UpdateQuestDescription(Quest, "I recovered the ribbons from the highwaymen.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

