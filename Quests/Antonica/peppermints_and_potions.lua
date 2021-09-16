--[[
    Script Name    : Quests/Antonica/peppermints_and_potions.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.15 08:09:44
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "She might be at the lighthouse.", 10, "Landwyn has asked me to deliver a package, but he doesnt know where.", 10, 339, -17, 762, 12)
	AddQuestStepZoneLoc(Quest, 2, "She might be in Archer Woods.", 10, "Landwyn has asked me to deliver a package, but he doesnt know where.", 10, -778, -2, 548, 12 )
	AddQuestStepZoneLoc(Quest, 3, "She could be at The Tower of the Oracles.", 10, "Landwyn has asked me to deliver a package, but he doesnt know where.", 10, -1030, 14, -618, 12)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Well, you see, that is the problem, isn't it? I can't find her. Long did I search, but she is nowhere to be found. Sadly, I only had enough time to check a few of her favorite places. Please check the rest and deliver her this gift.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "She was not at the lighthouse.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "She was not in Archer Woods.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5359, 1) and QuestStepIsComplete(Player, 5359, 2) and QuestStepIsComplete(Player, 5359, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have looked everywhere.")
	AddQuestStepChat(Quest, 4, "I should tell Landwyn that I could not find his lady love.", 1, "I have searched high and low, and have not found Landwyn's love. I should let him know.", 10, 121388)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
    end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "She was not at The Tower of the Oracles.")
   CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken to Landwyn.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Landwyn that I could not find her.")

	UpdateQuestDescription(Quest, "Unfortunately, I was unable to find his love to deliver the package to.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
