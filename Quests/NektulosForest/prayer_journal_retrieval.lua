--[[
    Script Name    : Quests/NektulosForest/prayer_journal_retrieval.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.20 09:07:26
    Script Purpose : 

        Zone       : NektulosForest
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must find a priestly journal carried by the Priest of Byzola", 1, 100, "I'm still searching for information as to the priestly temple located in the Fallen Gate.", 195, 1190129)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/jhos_t_sein/nektulos/quests/jhostsein/qst_jhostsein_x1_accept.mp3", "", "", 3412708536, 2681464640, Player)
	AddConversationOption(conversation, "There'd better be a substantial reward involved.")
	StartConversation(conversation, QuestGiver, Player, "You will return to the Fallen Gate and retrieve the information I demand. I shall finance your trip of course, though I expect all haste to be made to complete this. I don't tolerate failure or delay.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found a priestly journal")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've successfully recovered a priestly manual from a former cleric in the Fallen Gate.")

	AddQuestStepChat(Quest, 2, "I still need to return the priest's manual to Jhos T'sein", 1, "I must return to Jhos T'sein to give him the writings he requested.", 195, 1790190)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned the priest's manual to Jhos T'sein")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Jhos T'sein regarding the manual.")

	AddQuestStepChat(Quest, 3, "I still need to return the journal to Tundis N'oxyle", 1, "I need to speak with Tundis N'oxyle and return his journal.", 195, 330394)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've returned the journal to Tundis N'oxyle")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've returned the journal to Tundis N'oxyle.")

	UpdateQuestDescription(Quest, "The unspeakable horror that lies within the foul dungeon claws at my very soul.  Even I, such as I am, tremble at the thought of again returning there.  Though I proved once again successful, recovering the tome of a long-dead priest for Jhos T'sein, I have determined that a good rest may be in order.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

