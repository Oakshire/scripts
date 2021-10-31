--[[
    Script Name    : Quests/TheCryptofBetrayal/little_lost_minotaur.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.30 11:10:06
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill ten crypt tempests inside the Crypt of Betrayal and then tell Torg Bramblehair.", 10, 100, "I need to kill ten crypt tempests inside the Crypt of Betrayal and then tell Torg Bramblehair.", 611, 2010007, 2010008)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/torg_bramblehair/qey_catacomb03/torg_bramblehair005.mp3", "", "", 2717154418, 3548014875, Player)
	AddConversationOption(conversation, "No problem.  Ten crypt tempests it is.")
	AddConversationOption(conversation, "I'm sorry, I can't help you.")
	StartConversation(conversation, QuestGiver, Player, "I hand raised him, see?  Kind of shy of folks and all.  He'll come back to his Papa if he feels safe.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed ten crypt tempests.  Now I need to tell Torg Bramblehair.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed ten crypt tempests.  Now I need to tell Torg Bramblehair.")

	AddQuestStepChat(Quest, 2, "I need to tell Torg Bramblehair in the Crypt of Betrayal that I've killed ten crypt tempests.", 1, "I need to tell Torg Bramblehair in the Crypt of Betrayal that I've killed ten crypt tempests.", 11, 2010009)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have told Torg Bramblehair in the Crypt of Betrayal that I've killed ten crypt tempests.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have told Torg Bramblehair in the Crypt of Betrayal that I've killed ten crypt tempests.")

	UpdateQuestDescription(Quest, "I have killed ten crypt tempests and need to tell Torg Bramblehair in the Crypt of Betrayal.  With any luck, his pet minotaur Spike should be home soon.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


