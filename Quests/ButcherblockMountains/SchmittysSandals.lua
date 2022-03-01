--[[
    Script Name    : Quests/ButcherblockMountains/SchmittysSandals
    Script Author  : jakejp
    Script Date    : 2018.05.29 10:05:26
    Script Purpose : 

        Zone       : ButcherblockMountains
        Quest Giver: Schmitty McEricson
        Preceded by: None
        Followed by: 
--]]

require "SpawnScripts/Generic/PlayerHistory"

local SchmittysSandals = 266

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

    AddConversationOption(conversation, "Sounds like a plan! I'll be back soon", "Option6")
	StartConversation(conversation, QuestGiver, Player, "Here, let me see that little journal of yours. I'll write down the stuff I'll need and you can go gather it for me. Don't worry, I'll pay your for your time.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect several sea slug antennas to use as straps for the sandals.", 4, 100, "Schmitty has given me a list of various animal parts he needs in order to create a new pair of sandals to replace the ones he lost.", 2119, 1080003, 1080181, 1081050)
	AddQuestStepKill(Quest, 2, "Bring Schmitty some superb pieces of terratrodder hide.", 3, 100, "Schmitty has given me a list of various animal parts he needs in order to create a new pair of sandals to replace the ones he lost.", 134, 1080061, 1081094)
       	AddQuestStepKill(Quest, 3, "Collect some sturdy needles from the anemones so Schmitty can fashion them into cleats.", 4, 100, "Schmitty has given me a list of various animal parts he needs in order to create a new pair of sandals to replace the ones he lost.", 112, 1081066, 1080026, 1080060, 1081093)
        AddQuestStepCompleteAction(Quest, 1, "SlugKilled")
        AddQuestStepCompleteAction(Quest, 2, "TerratrodderKilled")
        AddQuestStepCompleteAction(Quest, 3, "AnemoneKilled")

end

function SlugKilled(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've collected several sea slug antennas.")
	CheckProgress(Quest, QuestGiver, Player)
end

function TerratrodderKilled(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found some pieces of terratrodder hide.")
	CheckProgress(Quest, QuestGiver, Player)
end

function AnemoneKilled(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found a good amount of anemone needles that could be fashioned into cleats.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, SchmittysSandals, 1) and QuestStepIsComplete(Player, SchmittysSandals, 2) and QuestStepIsComplete(Player, SchmittysSandals, 3) then
		NextStep(Quest, QuestGiver, Player)
	end
end

function NextStep(Quest, QuestGiver, Player)
        UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the various animal parts Schmitty requested.")
	AddQuestStepChat(Quest, 4, "I need to speak with Schmitty.", 1, "I need to return all the items I collected to Schmitty.", 11, 1080049)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
        
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Schmitty")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned all the items to Schmitty.")
        
	AddQuestStepChat(Quest, 5, "I should give Schmitty a few minutes to make the sandals.", 1, "I need to give Schmitty a few minutes to make the sandals.", 11, 1080049)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
        local time = os.time()
        SetPlayerHistory(Player, HISTORY.BB_SCHMITTYSANDALS_STEP5_WAIT, time)
        
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "After waiting a bit, Schmitty gave me a new pair of sandals.")
	UpdateQuestTaskGroupDescription(Quest, 3, "After waiting for a little while, Schmitty presented me with my new sandals.")

	UpdateQuestDescription(Quest, "It seems as though Schmitty never did lose his sandals. Instead they were simply under a pile of sand. As a token of appreciation, Schmitty gave me the sandals he crafted out of the parts I brought back to him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		SlugKilled(Quest, QuestGiver, Player)
	elseif Step == 2 then
		TerratrodderKilled(Quest, QuestGiver, Player)
	elseif Step == 3 then
		AnemoneKilled(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end




