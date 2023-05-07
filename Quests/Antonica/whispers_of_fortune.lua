--[[
    Script Name    : Quests/Antonica/whispers_of_fortune.lua
    Script Author  : Premierio015
    Script Date    : 2023.05.05 08:05:00
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Visit a bridge in Nektulos Forest and follow the calling in the forest. ", 1, 100, "I must go to Nektulos Forest and inspect a bridge there for clues on how to follow the path of a former fortune hunter.", 11, 7339)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was given the fleshbound tome.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gained an awful looking fleshbound tome from a vagabond named Theeral. This tome details the path of a fortune hunter.")

	AddQuestStepZoneLoc(Quest, 2, "Follow the path of the fortune hunter.", 1, "I must follow the path of the fortune hunter detailed in the fleshbound tome.", 11, 198, -16, 14, 178)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I followed the path of the fortune hunter.")
	UpdateQuestTaskGroupDescription(Quest, 2, "After a terrifying journey into the depths of Nektropos Castle I have finally come to the end of the fortune hunter's path, but can I survive to escape the castle walls?")

	AddQuestStepChat(Quest, 3, "Return to Rikantus in Evernight Cemetery.", 1, "If I escape the evils of Nektropos Castle I must revisit Rikantus at Evernight Cemetery in Antonica.", 11, 120403)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I spoke to Rikantus.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I escaped the evil embrace of Nektropos Castle to revisit Rikantus at Evernight Cemetery in Antonica.")

	AddQuestStep(Quest, 4, "Open the chest in Rikantus' tent.", 1, 100, "Rikantus has granted me permission to take whatever I find within the chest found in his tent.", 11)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I got my reward from the magic chest.")
	UpdateQuestTaskGroupDescription(Quest, 4, "Rikantus' magical chest opened up to allow me to take a reward.")

	UpdateQuestDescription(Quest, "I do not understand who or what Rikantus truly is, but I have survived the journey into Nektropos Castle and upon visiting Rikantus for a final time he has finally rewarded me.")
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
