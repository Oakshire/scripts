--[[
    Script Name    : Quests/SouthQeynos/barbaric_chores.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.25 10:09:26
    Script Purpose : 

        Zone       : SouthQeynos, QeynosProvinceDistrict, Caves
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Hunt white spiders in the Caves for undamaged venom sacs.", 3, 60, "I need to go to the Caves by mariner bell within the City of Qeynos and slay spiders for their venom sacs, but I must be careful not to damage them.", 109, 1970012,8260019)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Caves")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
		AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Good! Bring them back here as soon as you have them.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered the undamaged venom sacs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered all of the venom sacs Feodra wanted.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 2, "Return to Feodra Iceslayer.", 1, "I should return to Feodra Iceslayer with the undamaged venom sacs I've gathered.  I last saw Feodra in Qeynos South.", 109, 2310100, 5890328)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Feodra.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Feodra the undamaged venom sacs from the spiders of the Caves.")

	UpdateQuestDescription(Quest, "Feodra Iceslayer was pleased with the spider venom sacs I returned with and paid me for my effort.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
