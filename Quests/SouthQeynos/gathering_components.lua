--[[
    Script Name    : Quests/SouthQeynos/gathering_components.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.16 03:05:07
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver: Khalil'Mun
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Hunt bog faeries in the Peat Bog.", 1, 33, "I must gather up the rare components Khalil'Mun needs for his potion. I will find them in the Peat Bog.", 110, 8290002,8290003,8290052,8290008,8290009,8290010,8290013,8290014,8290011,8290012,8290017,8290018,8290019,8290053,8290044)
	AddQuestStepKill(Quest, 2, "Hunt bog slugs in the Peat Bog.", 1, 25, "I must gather up the rare components Khalil'Mun needs for his potion. I will find them in the Peat Bog.", 83, 8290005,8290006,8290031,8290027)
	AddQuestStepKill(Quest, 3, "Hunt bog sludges in the Peat Bog.", 1, 33, "I must gather up the rare components Khalil'Mun needs for his potion. I will find them in the Peat Bog.", 178, 8290004)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/merchant_khalil_mun/qey_south/khalilmun002.mp3", "", "no",1469692776, 2022256144, Player)
    AddConversationOption(conversation, "Alright.  Here is my journal.  I'll return once I've found everything on the list.")
	StartConversation(conversation, QuestGiver, Player, "No, but you'll keep the knowledge and perhaps a bit of coin.  You must learn how to gather your ingredients before you can truely understand how to use them.  I'll scribe in your journal the components you're looking for.  You should be able to gather everything you need in the local yard.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end
function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have obtained a rare glittering bog faerie wing.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have obtained a bog slug eyestalk.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have obtained a vial of bog sludge ectoplasm.")
    CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5555, 1) and QuestStepIsComplete(Player, 5555, 2) and QuestStepIsComplete(Player, 5555, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the components Khalil'Mun needs for his potion.")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepChat(Quest, 4, "I need return to Khalil'Mun.", 1, "Khalil'Mun is waiting for these ingredients in his shop in South Qeynos.", 10, 2310048)
    end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I returned to Khalil'Mun with his ingredients.")
	UpdateQuestDescription(Quest, "After a full warm bath and thorough scrubbing, I was able to clean the disgusting bog-filth away after collecting reagents for Khalil'Mun's latest alchemical potion. Remind me never to work for a mage so cheaply again!")
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

