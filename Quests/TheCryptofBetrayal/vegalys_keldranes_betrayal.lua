--[[
    Script Name    : Quests/TheCryptofBetrayal/vegalys_keldranes_betrayal.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 09:10:40
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Vegalys Keldrane's fallen comrade, Adun.", 1, "I must speak with Vegalys Keldrane's three fallen comrades here in the Crypt of Betrayal.", 11, 2010020)
		AddQuestStepChat(Quest, 2, "I need to speak with Vegalys Keldrane's fallen comrade, Borthen.", 1, "I must speak with Vegalys Keldrane's three fallen comrades here in the Crypt of Betrayal.", 11, 2010025)
			AddQuestStepChat(Quest, 3, "I need to speak with Vegalys Keldrane's fallen comrade, Vargon.", 1, "I must speak with Vegalys Keldrane's three fallen comrades here in the Crypt of Betrayal.", 11, 2010032)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
			AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	PlayFlavor(QuestGiver, "voiceover/english/vegalys_keldrane/qey_catacomb03/keldrane_dialog005.mp3", "", "", 1342332250, 3378137049, Player)
	AddConversationOption(conversation, "It's my pleasure.")
	StartConversation(conversation, QuestGiver, Player, "Good.  Perhaps within their tales, we can set truth apart from lies.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Adun.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke with Borthen.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I spoke with Vargon.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5371, 1) and QuestStepIsComplete(Player, 5371, 2) and QuestStepIsComplete(Player, 5371, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with all of Vegalys Keldrane's fallen comrades.  Now I need to speak again with Keldrane himself.")
	AddQuestStepChat(Quest, 4, "Vegalys Keldrane's spirit is within the Crypt of Betrayal.", 1, "I must speak with Vegalys Keldrane.", 11, 2010030)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")    
end
   end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I spoke with Vegalys Keldrane's spirit.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Vegalys Keldrane.")

	UpdateQuestDescription(Quest, "There is much unrest in the Crypt of Betrayal.  The passions, both love and hatred, have followed the dead.  Hopefully, the information I gleaned from the spirits of his fallen comrades will put Vegalys Keldrane's spirit at ease.")
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

