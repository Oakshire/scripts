--[[
    Script Name    : Quests/QeynosHarbor/three_bushels_fresh.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.24 04:05:33
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Innkeeper Galsway (2210022)
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "Speak with Alissa Cleeway.", 1, "I need to speak with the four merchants at the \"Fisherman's Market\".", 0, 2210138)
    AddQuestStepChat(Quest, 2, "Speak with Aeris Lightwind.", 1, "I need to speak with the four merchants at the \"Fisherman's Market\".", 0, 2210049)
    AddQuestStepChat(Quest, 3, "Speak with Umli Grayfist.", 1, "I need to speak with the four merchants at the \"Fisherman's Market\".", 0, 2210135)
    AddQuestStepChat(Quest, 4, "Speak with Phen Domlinson.", 1, "I need to speak with the four merchants at the \"Fisherman's Market\".", 0, 2210147)

    AddQuestStepCompleteAction(Quest, 1, "Step1Alissa")
    AddQuestStepCompleteAction(Quest, 2, "Step2Aeris")
    AddQuestStepCompleteAction(Quest, 3, "Step3Umli")
    AddQuestStepCompleteAction(Quest, 4, "Step4Phen")
end

function Accepted(Quest, QuestGiver, Player)
	    FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation()
		
        PlayFlavor(QuestGiver, "voiceover/english/innkeeper_galsway/qey_harbor/qst_innkeepergalsway001.mp3", "", "nod", 1195447184, 17037646, Player)
	    AddConversationOption(conversation, "Alright.  I'm off to the market.")
	    StartConversation(conversation, QuestGiver, Player, "Well then, go to it!")
	end

function Step1Alissa(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've spoken with Alissa Cleeway.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Aeris(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I've spoken with Aeris Lightwind.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step3Umli(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I've spoken with Umli Grayfist.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Phen(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "I've spoken with Phen Domlinson.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5564, 1) and QuestStepIsComplete(Player, 5564, 2)  and QuestStepIsComplete(Player, 5564, 3) and  QuestStepIsComplete(Player, 5564, 4) then
    UpdateQuestStepDescription(Quest, "I've spoken to all of the merchants only one offered a discount.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken to all of the merchants only one offered a discount.")
	AddQuestStepChat(Quest, 5, "I need to return to Innkeeper Galsway at the Fish's Alehouse and Inn.", 1, "Innkeeper Galsway is waiting for me at the inn at Qeynos Harbor.  He would be interested in my findings on the fish prices offered from the market.", 11, 2210022)
    AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
    end
end 

function Declined(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I spoke with Innkeeper Galsway.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Innkeeper Galsway was pleased to hear about my findings at the market.")

	UpdateQuestDescription(Quest, "Galsway was pleased with the news of a five percent discount. He complimented me on my efforts, and made promises of future employment.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
   if Step == 1 then
	 Step1Alissa(Quest, QuestGiver, Player)
    elseif Step == 2 then
	 Step2Aeris(Quest, QuestGiver, Player)
    elseif Step == 3 then
	 Step3Umli(Quest, QuestGiver, Player)
    elseif Step == 4 then
	 Step4Phen(Quest, QuestGiver, Player)
    elseif Step == 5 then
	 QuestComplete(Quest, QuestGiver, Player)
    end
end

