--[[
    Script Name    : Quests/TheCryptofBetrayal/forgotten_potion.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 08:10:45
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Maglus wants me to collect shriller wings.", 10, 30, "I need to collect forsaken shriller wings inside the Crypt of Betrayal and give them to Cryptkeeper Maglus.", 140, 2010026, 2010003, 2010035)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	if GetClientVersion(Player) == 546 then
	SendStateCommand(QuestGiver, 13061)
	else
    PlayAnimation(QuestGiver, 13061)
    end
	AddConversationOption(conversation, "I will be back.")
	StartConversation(conversation, QuestGiver, Player, "Perfect!  That's fifteen ... no, ten! Yes, ten more shriller wings!  They're easy pickings in these catacombs.  Thanks!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected shriller wings.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the shriller wings for Maglus.")

	AddQuestStepChat(Quest, 2, "I must return to Cryptkeeper Maglus.", 1, "I must take these forsaken shriller wings to Cryptkeeper Maglus in the Crypt of Betrayal.", 11, 2010043)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the forsaken shriller wings to Cryptkeeper Maglus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the forsaken shriller wings to Cryptkeeper Maglus.")

	UpdateQuestDescription(Quest, "I obtained ten forsaken shriller wings and gave them to Cryptkeeper Maglus so that she can make her potion.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

